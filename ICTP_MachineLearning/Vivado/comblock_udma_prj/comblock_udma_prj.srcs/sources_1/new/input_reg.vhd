----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.06.2025 10:23:07
-- Design Name: 
-- Module Name: input_reg - Behavioral
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

entity input_reg is
    Port ( puls : in STD_LOGIC_VECTOR (3 downto 0);
           out_reg : out STD_LOGIC_VECTOR (15 downto 0));
end input_reg;

architecture Behavioral of input_reg is

begin

    
    out_reg <= "000000000000" & puls;


end Behavioral;
