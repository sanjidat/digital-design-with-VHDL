----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:46:48 05/18/2025 
-- Design Name: 
-- Module Name:    Single_Port_RAM - Behavioral 
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

entity Single_Port_RAM is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           ram_addr : in  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           rd_wr : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end Single_Port_RAM;

architecture Behavioral of Single_Port_RAM is
	type memory_array is array (0 to 7) of std_logic_vector(7 downto 0); 
	
	signal memory : memory_array := (others => (others => '0'));
begin
	process(clk)
	begin
	if (rising_edge(clk)) then 
		if (enable = '1') then 
			if(rd_wr = '1') then
				memory(to_integer(unsigned(ram_addr))) <= data_in;
			else 
				data_out <= memory(to_integer(unsigned(ram_addr)));
			end if;
		end if;
	end if;
	end process;
end Behavioral;

