----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:13:41 05/01/2025 
-- Design Name: 
-- Module Name:    MUX_4_to_1_Behavioral - Behavioral 
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

entity MUX_4_to_1_Behavioral is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end MUX_4_to_1_Behavioral;

architecture Behavioral of MUX_4_to_1_Behavioral is

begin

process (i0,i1,i2,i3,s0,s1) is 
begin
	if (s0 = '0' and s1 = '0') then
		y <= i0;
	elsif (s0 = '0' and s1 = '1') then
		y <= i1;
	elsif (s0 = '1' and s1 = '0') then
		y <= i2;
	else
		y <= i3;
	end if;
end process;

end Behavioral;

