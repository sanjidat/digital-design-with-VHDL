----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:13:33 05/05/2025 
-- Design Name: 
-- Module Name:    JK_FlipFlop - Behavioral 
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

entity JK_FlipFlop is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end JK_FlipFlop;

architecture Behavioral of JK_FlipFlop is
	signal temp_q : std_logic:= '0';
begin 
	process(clk)
begin
	if (rising_edge(clk)) then
		if (j = '1' and k = '0') then 
			temp_q <= '1';
		elsif (j = '0' and k = '1') then 
			temp_q <= '0';
		elsif (j = '1' and k = '1') then 
			temp_q <= not temp_q;
		end if;
	end if;
	end process;
	
q <= temp_q;
q0 <= not temp_q;

end Behavioral;

