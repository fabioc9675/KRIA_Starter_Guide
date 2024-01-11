library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.all;


entity ledBouncing_sim is
--  Port ( );
end ledBouncing_sim;

architecture Behavioral of ledBouncing_sim is
    constant CLOCK_PERIOD : time := 5 ns;
    
    signal CLK : std_logic  := '0';
    signal PUL : std_logic  := '0';
    signal LED : std_logic;
    
    component Led_Bouncing is
        Port (
            CLK : in  std_logic;
            PUL : in  std_logic;
            LED : out std_logic
        );
    end component;

begin

    UUT: Led_Bouncing
    port map (
        CLK => CLK,
        PUL => PUL,
        LED => LED
    );
    
    -- proceso de generacion de reloj
    CLK_process: process
    begin
        wait for 50 ns;
        PUL <= '1';
        while now < 200000 us loop -- simulacion de 1 s
            CLK <= '0';
            wait for CLOCK_PERIOD / 2;
            CLK <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process CLK_process;


end Behavioral;
