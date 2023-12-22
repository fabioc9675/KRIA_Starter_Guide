# Creacion de un Custom IP, conexion con Petalinux usando Kria KR260 y Vivado 2022.2

## Tutorial paso a paso

![1703093621403](image/T07_Kria_Custom_IP/1703093621403.png)

Visitar los siguientes links con información importante:

- Configuracion [Custom IP](https://www.youtube.com/watch?v=B_OHWU6aTmA)

### Resumen

En este post vamos a crear un IPCore Custom con diferentes maquinas de estado las cuales seran activadas desde el `PS` a traves del puerto `AXI`, Luego personalizaremos este IPCore para que contenga el Logo de la UdeA a modo de ejemplo. en este aprenderemos a utilizar diseños logicos y diseños secuenciales de hardware usando VHDL.

## Implementacion de un contador con 4 LEDs

En este diseño implementaremos un contador con 4 LEDs que se muevan de derecha a izquierda, para activar este IP lo haremos desde un pulsador, a continuacion se presenta el codigo en VHDL para este diseño en el archivo `Led_4count.vhd`.

```vhdl
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Led_4count is
    Port ( CLK: in  std_logic;
           RST: in  std_logic;
           PUL: in  std_logic;
           LED: out std_logic_vector (3 downto 0));
end Led_4count;

architecture Behavioral of Led_4count is
    type     state_type is (LED_1, LED_2, LED_3, LED_4, L_WAIT);
    signal   state, next_state : state_type;
    signal   counter           : integer range 0 to 999999999 := 0;
    constant MAX_COUNT         : integer := 160000000;  -- 200 ms with 100 MHz clock

begin

     LED_Process: process(CLK, PUL, RST)
     begin
        if PUL = '0' then -- Initialization of state machine
            state <= LED_1;
            counter <= 0;
        end if;
      
        if RST = '0' then -- Reset of the state machine
            state <= L_WAIT;
            counter <= 0;
        elsif rising_edge(CLK) then
            if counter = MAX_COUNT - 1 then 
                counter <= 0;
                state <=  next_state;
            else
                counter <= counter + 1;
            end if;
        end if;
     end process;
   
     State_Transition: process(state)
     begin
         case state is
            when LED_1 =>
                LED <= "0001";
                next_state <= LED_2;
            when LED_2 =>
                LED <= "0010";
                next_state <= LED_3;
            when LED_3 =>
                LED <= "0100";
                next_state <= LED_4;
            when LED_4 =>
                LED <= "1000";
                next_state <= L_WAIT;
            when L_WAIT =>
                LED <= "0000";
                --next_state <= LED_1;
         end case;
     end process;

end Behavioral;

```

Tambien podemos incluir el archivo para hacer la simulacion del IPCore en el archivo `sim_led.vhd`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.all;

entity StateMachine_LEDs_TB is
end StateMachine_LEDs_TB;

architecture Behavioral of StateMachine_LEDs_TB is
    constant CLOCK_PERIOD : time := 5 ns; -- Definición del período del reloj de simulación

    signal CLK : std_logic := '0'; -- Señales de reloj y reset
    signal RST : std_logic := '1';
    signal PUL : std_logic := '0';
    signal LED : std_logic_vector(3 downto 0); -- Salida de los LEDs

    component Led_4count is
        Port (
            CLK : in std_logic;
            RST : in std_logic;
            PUL : in std_logic;
            LED : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    UUT: Led_4count
    port map (
        CLK => CLK,
        RST => RST,
        PUL => PUL,
        LED => LED
    );

    -- Proceso de generación de reloj
    CLK_process: process
    begin
        wait for 50 ns;
        PUL <= '1';
        while now < 2000000 us loop -- Simulación de 5000 ns
            CLK <= '0';
            wait for CLOCK_PERIOD / 2;
            CLK <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process CLK_process;

    -- Proceso de reset
    RST_process: process
    begin
        RST <= '0'; -- Activa el reset
        wait for 50 ns;
        RST <= '1'; -- Desactiva el reset después de 50 ns
        wait;
    end process RST_process;

    -- Proceso para mostrar los cambios en la salida de los LEDs
    LED_process: process
    begin
        wait;
    end process LED_process;

end Behavioral;
```

Y los constrains para este proyecto se agregan en el archivo `constrains.xdc`

```bash
set_property PACKAGE_PIN H11 [get_ports {LED[3]}]
set_property PACKAGE_PIN G10 [get_ports {LED[2]}]
set_property PACKAGE_PIN F12 [get_ports {LED[1]}]
set_property PACKAGE_PIN F11 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

# set_property PACKAGE_PIN A2 [get_ports CLK_IN]
# set_property IOSTANDARD LVCMOS18 [get_ports CLK_IN]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IN_IBUF_inst/O]

set_property PACKAGE_PIN J11 [get_ports PUL_IN]
set_property IOSTANDARD LVCMOS33 [get_ports PUL_IN]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets RST_IN_IBUF_inst/O]
```

El diagrama de conexion de este diseño es el siguiente

![1703213623914](image/T07_Kria_Custom_IP/1703213623914.png)

> **Nota importante:** En la KRIA KR260 carrier board, el reloj para los IPCores con caracteristicas secuenciales debe salir del PS del `Zynq UltraScale+`, pero tambien podria sacarse desde un `Clock_Wizard`.

---
