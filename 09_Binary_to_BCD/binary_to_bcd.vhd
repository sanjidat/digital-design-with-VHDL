----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:22:21 05/04/2025 
-- Design Name: 
-- Module Name:    binary_to_bcd - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binary_to_bcd is
    Port ( bin : in  STD_LOGIC_VECTOR (3 downto 0);			-- 4 bit binary input
           ones : out  STD_LOGIC_VECTOR (3 downto 0);			-- Ones place in BCD
           tens : out  STD_LOGIC_VECTOR (3 downto 0);			-- Tens place in BCD
           bcd_output : out  STD_LOGIC_VECTOR (7 downto 0));-- Reconstructed BCD Output
end binary_to_bcd;
architecture Behavioral of binary_to_bcd is
begin 
	process(bin)
		variable value : integer;
		variable num_ones : integer;
		variable num_tens : integer;
		variable ones_int : std_logic_vector(3 downto 0);
		variable tens_int : std_logic_vector(3 downto 0);
	begin
	-- Convert 4 bit binary to integer
	value := to_integer(unsigned(bin));
	
	-- Calculate tens and ones
	num_tens := value / 10;
	num_ones := value mod 10;
	
	 -- Assign internal BCD digit signals
	tens_int := std_logic_vector(to_unsigned(num_tens, 4));
	ones_int := std_logic_vector(to_unsigned(num_ones, 4));
	
	-- Assign internal signals to output ports
   tens <= tens_int;
   ones <= ones_int;
	
	-- Calculate the 8 bit BCD output
	bcd_output <= tens_int & ones_int;
	end process;
	
end Behavioral;

