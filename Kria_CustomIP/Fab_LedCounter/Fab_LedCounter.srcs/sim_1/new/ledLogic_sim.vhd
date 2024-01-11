library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.all;


entity ledLogic_sim is
--  Port ( );
end ledLogic_sim;

architecture Behavioral of ledLogic_sim is

    signal PUL : std_logic_vector (1 downto 0) := "00";
    signal LED : std_logic_vector (1 downto 0);
    
    component Led_Logic is 
        port (
            PUL : in  std_logic_vector (1 downto 0);
            LED : out std_logic_vector (1 downto 0)
        );
    end component;

begin

    UUT: Led_Logic
    port map (
        PUL => PUL,
        LED => LED
    );
    
    -- Generacion de simulacion
    PUL_process: process
    begin
        PUL <= "00";
        wait for 100 ns;
        PUL <= "01";
        wait for 100 ns;
        PUL <= "10";
        wait for 100 ns;
        PUL <= "11";
        wait;        
    end process PUL_process;


end Behavioral;
