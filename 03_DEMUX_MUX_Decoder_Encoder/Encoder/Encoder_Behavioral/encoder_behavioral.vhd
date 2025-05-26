----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:09 05/01/2025 
-- Design Name: 
-- Module Name:    encoder_behavioral - Behavioral 
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

entity encoder_behavioral is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (1 downto 0));
end encoder_behavioral;

architecture Behavioral of encoder_behavioral is

begin 

	process(x)
	begin
	if (x = "1000") then 
		y <= "11";
	elsif (x = "0100") then
		y <= "10";
	elsif (x = "0010") then
		y <= "01";
	elsif (x = "0001") then
		y <= "00";
	else 
		y<= "00";
	end if;
	end process;

end Behavioral;

