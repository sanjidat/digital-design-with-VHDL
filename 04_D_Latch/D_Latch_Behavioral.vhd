----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:31:21 05/05/2025 
-- Design Name: 
-- Module Name:    D_Latch_Behavioral - Behavioral 
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

entity D_Latch_Behavioral is
    Port ( d : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end D_Latch_Behavioral;

architecture Behavioral of D_Latch_Behavioral is
begin
	process(d,enable)
begin
	if (enable = '1') then
		q <= d; q0 <= not d;
	end if;
	end process;
end Behavioral;

