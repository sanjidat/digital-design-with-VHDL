----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:41:13 05/05/2025 
-- Design Name: 
-- Module Name:    shift_regsuter - Behavioral 
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

entity shift_regsuter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           serial_in : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (4 downto 0));
end shift_regsuter;

architecture Behavioral of shift_regsuter is
signal temp: std_logic_vector(4 downto 0);
begin
process(clk,reset)
begin
	if (reset = '1') then 
		temp <= (others => '0');   --- Clear all bits on reset
	elsif (rising_edge(clk)) then 
		temp <= serial_in & temp(4 downto 1);  --- Left to Right Shift
	end if;
end process;

q <= temp;   -- Output Assignment

end Behavioral;

