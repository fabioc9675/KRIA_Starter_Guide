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
    constant MAX_COUNT         : integer := 160000000;  -- 200 ms with 200 MHz clock

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
