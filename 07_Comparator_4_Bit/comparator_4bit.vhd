----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:13 05/02/2025 
-- Design Name: 
-- Module Name:    comparator_4bit - Structural 
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

entity comparator_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC;
           E : out  STD_LOGIC;
           L : out  STD_LOGIC);
end comparator_4bit;

architecture Structural of comparator_4bit is

component not_gate is
    Port ( x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component xnor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component AND_gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component and3_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component and4_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component and5_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

component or4_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           o : out  STD_LOGIC);
end component;

signal l0,l1,l2,l3: STD_LOGIC;
signal g0,g1,g2,g3: STD_LOGIC;
signal p0,p1,p2,p3: STD_LOGIC;
signal q0,q1,q2,q3: STD_LOGIC;
signal x3,x2,x1,x0: STD_LOGIC; 

begin

i1: xnor_gate port map (A(0),B(0),x0);
i2: xnor_gate port map (A(1),B(1),x1);
i3: xnor_gate port map (A(2),B(2),x2);
i4: xnor_gate port map (A(3),B(3),x3);
i5: and4_gate port map (x0,x1,x2,x3,E);

n1: not_gate port map (A(0),p0);
n2: not_gate port map (A(1),p1);
n3: not_gate port map (A(2),p2);
n4: not_gate port map (A(3),p3);

n5: not_gate port map (B(0),q0);
n6: not_gate port map (B(1),q1);
n7: not_gate port map (B(2),q2);
n8: not_gate port map (B(3),q3);

a1: AND_gate port map (A(3),q3,g3);
a2: and3_gate port map (x3,A(2),q2,g2);
a3: and4_gate port map (x3,x2,A(1),q1,g1);
a4: and5_gate port map (x3,x2,x1,A(0),q0,g0);
a5: AND_gate port map (p3,B(3),l3);
a6: and3_gate port map (x3,p2,B(2),l2);
a7: and4_gate port map (x3,x2,p1,B(1),l1);
a8: and5_gate port map (x3,x2,x1,p0,B(0),l0);

o1: or4_gate port map (g0,g1,g2,g3,G);
o2: or4_gate port map (l0,l1,l2,l3,L);

end Structural;

