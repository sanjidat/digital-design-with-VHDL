----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:59:58 05/02/2025 
-- Design Name: 
-- Module Name:    decoder_structural - Structural 
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

entity decoder_structural is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder_structural;

architecture Structural of decoder_structural is

component AND_gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component not_gate is
    Port ( x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal p,q: STD_LOGIC;

begin
i1: not_gate port map (a(1),p);
i2: not_gate port map (a(0),q);
i3: AND_gate port map (p,q,d(0));
i4: AND_gate port map (p,a(0),d(1));
i5: AND_gate port map (a(1),q,d(2));
i6: AND_gate port map (a(1),a(0),d(3));
end Structural;

