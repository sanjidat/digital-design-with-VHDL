----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:55 04/30/2025 
-- Design Name: 
-- Module Name:    fulladder_structural - structural 
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

entity fulladder_structural is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end fulladder_structural;

architecture structural of fulladder_structural is

	component AND_gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
	end component;
	
	component or_gate is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
	component xor_gate is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           o : out  STD_LOGIC);
	end component;
	
signal w1, w2, w3: std_logic;

begin
i1: xor_gate port map (x,y,w1);
i2: AND_gate port map (x,y,w2);
i3: xor_gate port map (w1,carry_in,sum);
i4: AND_gate port map (w1,carry_in,w3);
i5: or_gate port map (w2,w3,carry_out);
end structural;

