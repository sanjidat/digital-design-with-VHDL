----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:07 05/03/2025 
-- Design Name: 
-- Module Name:    comparator_4bit_behavioral - Behavioral 
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

entity comparator_4bit_behavioral is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC;
           E : out  STD_LOGIC;
           L : out  STD_LOGIC);
end comparator_4bit_behavioral;

architecture Behavioral of comparator_4bit_behavioral is

begin
process (A,B)
begin
	if (A > B) then 
	G <= '1'; E <= '0'; L <= '0';
	elsif (A =B) then 
	E <= '1'; G <= '0'; L <= '0';
	else
	L <= '1'; E <= '0'; G <= '0';
	end if;
end process;
end Behavioral;

