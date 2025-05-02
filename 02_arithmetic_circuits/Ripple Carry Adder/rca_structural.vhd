----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:05 04/30/2025 
-- Design Name: 
-- Module Name:    ripple_carry_adder_st - structural 
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

entity ripple_carry_adder_st is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_in : in  STD_LOGIC;
           sum  : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC);
end ripple_carry_adder_st;

architecture structural of ripple_carry_adder_st is

	component fulladder_dataflow is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
	end component;
	
	signal c : std_logic_vector (2 downto 0);
	
begin
i1: fulladder_dataflow port map (a(0),b(0),carry_in,sum(0),c(0));
i2: fulladder_dataflow port map (a(1),b(1),c(0),sum(1),c(1));
i3: fulladder_dataflow port map (a(2),b(2),c(1),sum(2),c(2));
i4: fulladder_dataflow port map (a(3),b(3),c(2),sum(3),carry_out);
end structural;

