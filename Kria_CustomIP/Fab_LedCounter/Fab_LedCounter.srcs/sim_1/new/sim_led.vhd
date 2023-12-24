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
