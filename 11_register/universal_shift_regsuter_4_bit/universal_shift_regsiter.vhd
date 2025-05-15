----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:30:32 05/15/2025 
-- Design Name: 
-- Module Name:    universal_shift_regsiter - Behavioral 
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

entity universal_shift_regsiter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           serial_in_right : in  STD_LOGIC;
           serial_in_left : in  STD_LOGIC;
           parallel_in : in  STD_LOGIC_VECTOR (3 downto 0);
           mode : in  STD_LOGIC_VECTOR (1 downto 0);
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end universal_shift_regsiter;

architecture Behavioral of universal_shift_regsiter is
	signal temp: STD_LOGIC_VECTOR(3 downto 0);
begin
	process(clk,reset)
	begin
		if (reset = '1') then
			temp <= (others => '0');
		elsif (rising_edge(clk)) then
			case mode is
				when "00" =>         -- Hold
					temp <= temp;
				when "01" =>         -- Right Shift
					temp <= serial_in_right & temp(3 downto 1);
				when "10" =>         -- Left Shift
					temp <= temp(2 downto 0) & serial_in_left;
				when "11" => 			-- Parallel Load
					temp <= parallel_in;
				when others => 
					temp <= temp;
			end case;
		end if;
	end process;
q <= temp;
end Behavioral;

