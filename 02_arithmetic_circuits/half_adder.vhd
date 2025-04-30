----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:51 04/29/2025 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end half_adder;

architecture Structural of half_adder is

	component xor_gate is 
		port ( x : in STD_LOGIC;
				 y : in STD_LOGIC;
				 o : out STD_LOGIC);
	end component;
	
	component and_gate is 
		port ( i1 : in STD_LOGIC;
				 i2 : in STD_LOGIC;
				 o1 : out STD_LOGIC);
	end component;

begin

	u1: xor_gate port map (x,y,sum);
	u2: and_gate port map (x,y,carry_out);

end Structural;

