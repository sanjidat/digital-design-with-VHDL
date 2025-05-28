----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:49 05/18/2025 
-- Design Name: 
-- Module Name:    Synchronous_Dual_Port_RAM - Behavioral 
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

entity Synchronous_Dual_Port_RAM is
    Port ( clk        : in  STD_LOGIC;
           addr_a     : in  STD_LOGIC_VECTOR (7 downto 0);
           addr_b     : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in_a  : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in_b  : in  STD_LOGIC_VECTOR (7 downto 0);
           we_a       : in  STD_LOGIC;
           we_b       : in  STD_LOGIC;
           data_out_a : out  STD_LOGIC_VECTOR (7 downto 0);
           data_out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end Synchronous_Dual_Port_RAM;

architecture Behavioral of Synchronous_Dual_Port_RAM is

	type memory_array is array (0 to 7) of std_logic_vector(7 downto 0);
	
	signal memory : memory_array := (others => (others => '0'));
begin
	process(clk)
	
	begin
		if (rising_edge(clk)) then
		-- port a
			if (we_a = '1') then
				memory(to_integer(unsigned(addr_a))) <= data_in_a;
			end if; 	
			data_out_a <= memory(to_integer(unsigned(addr_a)));
			
		-- port b
			if (we_b = '1') then
				memory(to_integer(unsigned(addr_b))) <= data_in_b;
			end if;	
			data_out_b <= memory(to_integer(unsigned(addr_b)));
		end if;
	end process;
end Behavioral;

