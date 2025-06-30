----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.06.2025 18:18:39
-- Design Name: 
-- Module Name: leds_reg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity leds_reg is
    Port ( reg_in : in STD_LOGIC_VECTOR (31 downto 0);
           leds : out STD_LOGIC_VECTOR (3 downto 0));
end leds_reg;

architecture Behavioral of leds_reg is

begin

    leds <= reg_in(3 downto 0);

end Behavioral;
