----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:53:45 05/01/2025 
-- Design Name: 
-- Module Name:    DMUX_4_to_1_Behavioral - Behavioral 
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

entity DMUX_4_to_1_Behavioral is
    Port ( d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end DMUX_4_to_1_Behavioral;

architecture Behavioral of DMUX_4_to_1_Behavioral is

begin

process (d,s) is

begin
	if (s = "00") then
	y(0) <= d; y(1) <= '0'; y(2) <= '0'; y(3) <= '0';
	elsif (s = "01") then 
	y(0) <= '0'; y(1) <= d; y(2) <= '0'; y(3) <= '0';
	elsif (s = "10") then 
	y(0) <= '0'; y(1) <= '0'; y(2) <= d; y(3) <= '0';
	else 
	y(0) <= '0'; y(1) <= '0'; y(2) <= '0'; y(3) <= d;
	end if;

end process;
	
end Behavioral;

