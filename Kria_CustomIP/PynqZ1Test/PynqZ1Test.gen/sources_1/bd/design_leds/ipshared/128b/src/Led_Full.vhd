----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Led_Full is
  Port ( CLK : in  std_logic;
         PUL : in  std_logic_vector (3 downto 0);
         LED : out std_logic_vector (3 downto 0)
  );
end Led_Full;

architecture Behavioral of Led_Full is
    component Led_4count is
    port (
        CLK : in  std_logic;
        PUL : in  std_logic;
        LED : out std_logic
    );
    end component Led_4count;
    
    component Led_Bouncing is
    port (
        CLK : in  std_logic;
        PUL : in  std_logic;
        LED : out std_logic
    );
    end component Led_Bouncing;
    
    component Led_Logic is
    port (
        PUL : in  std_logic_vector (1 downto 0);
        LED : out std_logic_vector (1 downto 0)
    );
    end component Led_Logic;

begin

Led_4count_comp: component Led_4count
    port map (
        CLK => CLK,
        PUL => PUL(0),
        LED => LED(0)
    );
    
Led_Bouncing_comp: component Led_Bouncing
    port map (
        CLK => CLK,
        PUL => PUL(1),
        LED => LED(1)
    );
    
Led_Logic_comp: component Led_Logic
    port map (
        PUL(1 downto 0) => PUL(3 downto 2),
        LED(1 downto 0) => LED(3 downto 2)
    );
    
end Behavioral;
