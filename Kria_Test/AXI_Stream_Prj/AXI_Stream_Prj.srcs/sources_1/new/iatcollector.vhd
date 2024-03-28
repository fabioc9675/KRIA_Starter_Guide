library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity iatcollector is
    generic (
        DATA_WIDTH  : integer := 16
    );
    Port (
        clk        : in  std_logic;
        enable     : in  std_logic;
        channel1   : in  std_logic;
        channel2   : in  std_logic;
        max_count  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
        ready      : out std_logic;
        data       : out std_logic_vector(DATA_WIDTH - 1 downto 0)
    );
end iatcollector;

architecture Behavioral of iatcollector is

    -- detectors
    component detector is 
    port (
        clk     :  in  std_logic;
        input   :  in  std_logic;
        output  :  out std_logic
    );
    end component;
    
    -- iat counter for all detectors
    component iatcounter is
    generic (
        NUMBER_OF_CHANNELS : integer;
        DATA_WIDTH         : integer
    );
    port (
        clk        : in  std_logic;
        enable     : in  std_logic;
        stop_flags : in  std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0);
        max_count  : in  unsigned(DATA_WIDTH-1 downto 0);
        ready      : out std_logic;
        data       : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );    
    end component;

    -- constants
    constant NUM_CH  :  integer  :=  2;
    -- intermediate signals
    signal stop_flags_i : std_logic_vector(NUM_CH-1 downto 0);
    signal max_count_i  : unsigned(DATA_WIDTH-1 downto 0);
    
begin

    max_count_i  <=  unsigned(max_count);
    
    -- instantiate the detectors
    detector1 : detector
        port map (
            clk    =>  clk,
            input  =>  channel1,
            output =>  stop_flags_i(0) 
        );
    -- instantiate the detectors
    detector2 : detector
        port map (
            clk    =>  clk,
            input  =>  channel2,
            output =>  stop_flags_i(1) 
        );
        
    -- instantiate the counter
    counter1: iatcounter
        generic map (
            NUM_CH,
            DATA_WIDTH
        )
        port map(
            clk => clk,
            enable => enable,
            stop_flags => stop_flags_i,
            max_count => max_count_i,
            ready => ready,
            data => data
        );

end Behavioral;
