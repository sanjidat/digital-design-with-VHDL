----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:26:20 05/05/2025 
-- Design Name: 
-- Module Name:    SR_FlipFlop - Behavioral 
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

entity SR_FlipFlop is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end SR_FlipFlop;

architecture Behavioral of SR_FlipFlop is
	signal temp_q : STD_LOGIC := '0';
begin 
	process(clk)
	begin
	if (rising_edge(clk)) then
		if (S = '0' and R = '1') then
			temp_q <= '0'; 
		elsif (S = '1' and R = '0') then
			temp_q <= '1';
		elsif (S = '1' and R = '1') then
			temp_q <= 'X';   -- invalid state
			end if;
		end if;
	end process;
	q <= temp_q;
	q0 <= not temp_q;
	
end Behavioral;

