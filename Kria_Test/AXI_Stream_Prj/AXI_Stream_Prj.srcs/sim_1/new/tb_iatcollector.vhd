library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity declaration
entity tb_iatcollector is
end tb_iatcollector;

architecture behavior of tb_iatcollector is

-- component declaration
component iatcollector is
    generic(
      DATA_WIDTH : integer
    );
	port (
        clk        : in std_logic;
        enable     : in std_logic;
        channel1   : in std_logic;
        channel2   : in std_logic;
        max_count  : in std_logic_vector(DATA_WIDTH - 1 downto 0);
        ready      : out std_logic;
        data       : out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end component;

-- define constants
constant DATA_WIDTH_TB : integer := 8;
constant MAX_COUNT_TB  : integer := 5; 
constant CLK_PERIOD : time := 10 ns;
constant SIGNAL_DURATION : time := 3*CLK_PERIOD;
constant ENABLE_DELAY : time := 2 ns;

--declare inputs and initialize them
signal clk       : std_logic := '0';
signal enable    : std_logic := '1';
signal channel1  : std_logic := '0';
signal channel2  : std_logic := '0';
signal max_count : std_logic_vector(DATA_WIDTH_TB - 1 downto 0) := std_logic_vector(to_unsigned(MAX_COUNT_TB,DATA_WIDTH_TB));

--declare outputs
signal ready      : std_logic;
signal data       : std_logic_vector(DATA_WIDTH_TB - 1 downto 0);

begin

    -- instantiate the unit under test (uut)
   uut : iatcollector generic map (DATA_WIDTH_TB) port map (
            clk => clk,
            enable => enable,
            channel1 => channel1,
            channel2 => channel2,
            max_count => max_count,
            ready => ready,
            data => data
        ); 
        
   -- Clock process definition
   Clk_process :process
   begin
        Clk <= '0';
        wait for CLK_PERIOD/2;
        Clk <= '1';
        wait for CLK_PERIOD/2;
   end process;
    
   -- simulate inputs
  stim_proc: process
   begin        
        wait for CLK_PERIOD*5 + ENABLE_DELAY; -- wait for 5 clock cycles
                                              -- +2 ns for starting while clk is low
                                              -- +7 ns for starting while clk is high
        
        enable <='0';                  --enable the counter

        -- event generation upon reching max count
        wait for CLK_PERIOD*(MAX_COUNT_TB+1);--ENABLE_DELAY+CLK_PERIOD/2;
        
        
        channel1 <= '1';
        wait for SIGNAL_DURATION;
        channel1 <= '0';
        
        wait for CLK_PERIOD*8;
        channel1 <= '1';
        wait for SIGNAL_DURATION;
        channel1 <= '0';

        wait for CLK_PERIOD*4;
        channel1 <= '1';
        wait for CLK_PERIOD;
        channel2 <= '1';
        wait for 2*CLK_PERIOD;
        channel1 <= '0';
        wait for CLK_PERIOD;
        channel2 <= '0';

        wait;

  end process;

end;