----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:59 04/30/2025 
-- Design Name: 
-- Module Name:    rca_behavioral - Behavioral 
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

entity rca_behavioral is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_in : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC);
end rca_behavioral;

architecture Behavioral of rca_behavioral is

begin
process(a,b,carry_in)
	variable c: std_logic_vector(2 downto 0);
	variable e: std_logic_vector(3 downto 0);
	variable f: std_logic_vector(3 downto 0);	
	
	begin 
		e := a xor b;
		f :=a and b;

		c(0) := f(0) or (carry_in and e(0));
		c(1) := f(1) or (c(0) and e(1));
		c(2) := f(2) or (c(1) and e(2));
		carry_out <= f(3) or (c(2) and e(3));

		sum(0) <= e(0) xor carry_in;
		sum(1) <= e(1) xor c(0);
		sum(2) <= e(2) xor c(1);
		sum(3) <= e(3) xor c(2);
		
end process;

end Behavioral;

