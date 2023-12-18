----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2023 11:02:59 AM
-- Design Name: 
-- Module Name: Leds_test - Behavioral
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

entity Leds_test is
    Port ( leds : out STD_LOGIC_VECTOR (3 downto 0);
           puls : in STD_LOGIC_VECTOR (3 downto 0));
end Leds_test;

architecture Behavioral of Leds_test is

begin

    leds <= not(puls);


end Behavioral;
