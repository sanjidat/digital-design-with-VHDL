----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:26:07 05/05/2025 
-- Design Name: 
-- Module Name:    T_FlipFlop - Behavioral 
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

entity T_FlipFlop is
    Port ( clk : in  STD_LOGIC;
           T : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end T_FlipFlop;

architecture Behavioral of T_FlipFlop is
signal temp_q: std_logic := '0';
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (T = '1') then
				temp_q <= not temp_q;
			end if;
		end if;
	end process;

q <= temp_q;
q0 <= not temp_q;

end Behavioral;

