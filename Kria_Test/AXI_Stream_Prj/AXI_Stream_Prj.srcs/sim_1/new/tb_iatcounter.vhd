library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity declaration for your testbench
entity tb_iatcounter is
end tb_iatcounter;

architecture behavior of tb_iatcounter is

-- component declaration
component iatcounter is
  generic(
    NUMBER_OF_CHANNELS : integer;
    DATA_WIDTH : integer
  );
  port(
    clk        : in std_logic;
    enable     : in std_logic;
    stop_flags : in std_logic_vector(NUMBER_OF_CHANNELS-1 downto 0);
    max_count  : in unsigned(DATA_WIDTH - 1 downto 0);
    ready      : out std_logic;
    data       : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end component;

-- define constants
constant NUMBER_OF_CHANNELS_TB : integer := 2;
constant DATA_WIDTH_TB : integer := 8;
constant MAX_COUNT_TB  : integer := 5;
constant CLK_PERIOD : time := 10 ns;
constant ENABLE_DELAY : time := 7 ns;
constant SIGNAL_DURATION : time := CLK_PERIOD;
constant STOP_FLAG_SIGNAL_ON  : std_logic_vector(NUMBER_OF_CHANNELS_TB-1 downto 0) := "11";
constant STOP_FLAG_SIGNAL_OFF : std_logic_vector(NUMBER_OF_CHANNELS_TB-1 downto 0) := "00";

--declare inputs and initialize them to zero.
signal clk        : std_logic := '0';
signal enable     : std_logic := '1'; -- disabled by default
signal stop_flags : std_logic_vector(NUMBER_OF_CHANNELS_TB-1 downto 0) := "00";
signal max_count  : unsigned(DATA_WIDTH_TB - 1 downto 0) := to_unsigned(MAX_COUNT_TB,DATA_WIDTH_TB);

--declare outputs
signal ready : std_logic;
signal data  : std_logic_vector(DATA_WIDTH_TB-1 downto 0);

begin

    -- instantiate the unit under test (uut)
   uut : iatcounter generic map (NUMBER_OF_CHANNELS_TB, DATA_WIDTH_TB) port map (
            clk => clk,
            enable => enable, 
            stop_flags => stop_flags,
            max_count => max_count,
            ready => ready,
            data => data
        ); 
        
   -- Clock process definitions
   Clk_process :process
   begin
        Clk <= '0';
        wait for CLK_PERIOD/2;
        Clk <= '1';
        wait for CLK_PERIOD/2;
   end process;
    
   -- Apply inputs here.
  stim_proc: process
   begin        
        wait for CLK_PERIOD*5 + ENABLE_DELAY; -- wait for 5 clock cycles
                                              -- +2 ns for starting while clk is low
                                              -- +7 ns for starting while clk is high
        
        enable <='0';                  --enable the counter

        -- event generation upon reaching max count
        wait for CLK_PERIOD*(MAX_COUNT_TB+3)-ENABLE_DELAY+CLK_PERIOD/2;
        
        -- event generation upon detection in a channel
        stop_flags <= STOP_FLAG_SIGNAL_ON;
        wait for SIGNAL_DURATION;
        stop_flags <= STOP_FLAG_SIGNAL_OFF;
        
        -- event generation upon detection in a channel at the same time as the maximum count has been reached
        wait for CLK_PERIOD*(MAX_COUNT_TB-1);
        stop_flags <= STOP_FLAG_SIGNAL_ON;
        wait for SIGNAL_DURATION;
        stop_flags <= STOP_FLAG_SIGNAL_OFF;

        -- event generation upon detection in a channel immediately after the maximum count has been reached
        wait for CLK_PERIOD*MAX_COUNT_TB;
        stop_flags <= STOP_FLAG_SIGNAL_ON;
        wait for SIGNAL_DURATION;
        stop_flags <= STOP_FLAG_SIGNAL_OFF;
        
        -- event generation when second ch2 is detected immediately after ch1
        wait for CLK_PERIOD*7;
        stop_flags <= "10";
        wait for SIGNAL_DURATION;
        stop_flags <= STOP_FLAG_SIGNAL_OFF;
        stop_flags <= "01";
        wait for SIGNAL_DURATION;
        stop_flags <= STOP_FLAG_SIGNAL_OFF;
        
        wait;

  end process;

end;