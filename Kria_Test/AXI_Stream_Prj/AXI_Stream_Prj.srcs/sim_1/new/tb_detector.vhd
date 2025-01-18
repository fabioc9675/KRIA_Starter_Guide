-- tb_detector.vhdl
-- testbench for detector design
library ieee;
use ieee.std_logic_1164.all;

-- entity declaration for your testbench. 
entity tb_detector is

end tb_detector;

architecture behavior of tb_detector is

-- component declaration
component detector is
    port(
        clk     :  in  std_logic;
        input   :  in  std_logic;
        output  :  out std_logic
    );
end component;

-- definitions of constants
constant CLK_PERIOD       :   time   :=  10 ns;
constant SIGNAL_DURATION  :   time   :=  3*CLK_PERIOD;
constant SIGNAL_DELAY     :   time   :=  2 ns;

--declare inputs and initialize them to zero.
signal clk     : std_logic  := '0';
signal input   : std_logic  := '0';

-- declare outputs
signal output  : std_logic;

begin
    -- instantiate the component
    uut : detector port map (
            clk     =>   clk,
            input   =>   input,
            output  =>   output
        );

    -- Clock process definitions
    Clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Apply inputs here
    stim_proc: process
    begin
        wait for CLK_PERIOD*5 + SIGNAL_DELAY; --wait for 5 clock cycles.
        
        input <= '1';
        wait for SIGNAL_DURATION;
        input <= '0';
        
        wait for CLK_PERIOD*8;
        
        input <= '1';
        wait for SIGNAL_DURATION;
        input <= '0';

        wait;
    end process;
    
end;
