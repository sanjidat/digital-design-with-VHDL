----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:35 05/04/2025 
-- Design Name: 
-- Module Name:    binary_to_grey_code - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binary_to_grey_code is
    Port ( bin : in  STD_LOGIC_VECTOR (3 downto 0);
           grey_code : out  STD_LOGIC_VECTOR (3 downto 0));
end binary_to_grey_code;

architecture Behavioral of binary_to_grey_code is

begin
	grey_code(0) <= bin(0) xor bin(1);
	grey_code(1) <= bin(1) xor bin(2);
	grey_code(2) <= bin(2) xor bin(3);
	grey_code(3) <= bin(3);
end Behavioral;

