----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fabian Andres Castano Usuga
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Led_Logic is
    Port ( PUL: in  std_logic_vector (1 downto 0);
           LED: out std_logic_vector (1 downto 0));
end Led_Logic;

architecture Behavioral of Led_Logic is

begin

    Inverter_Process: process(PUL)
    begin
        LED(0) <= not PUL(0);
    end process;
    
    Buffer_Process: process(PUL)
    begin
        LED(1) <= PUL(1);
    end process;
    
end Behavioral;
