----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:59 05/15/2025 
-- Design Name: 
-- Module Name:    up_down_counter - Behavioral 
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

entity up_down_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           up_down : in  STD_LOGIC ;   -- '1' for Up, '0' for Down
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end up_down_counter;

architecture Behavioral of up_down_counter is
signal temp_count: UNSIGNED (3 downto 0);
begin
	process(clk,reset)
	begin
		if (reset = '1') then 
			temp_count <= (others => '0');
		elsif (rising_edge(clk)) then
			if up_down = '1' then
				temp_count <= temp_count + 1;
			else
				temp_count <= temp_count - 1;
			end if;
		end if;
	end process;
q <= std_logic_vector(temp_count);
end Behavioral;

