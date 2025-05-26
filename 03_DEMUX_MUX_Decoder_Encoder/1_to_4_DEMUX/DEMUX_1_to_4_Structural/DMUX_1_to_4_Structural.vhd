----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:28 05/17/2025 
-- Design Name: 
-- Module Name:    DMUX_1_to_4_Structural - Structural 
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

entity DMUX_1_to_4_Structural is
    Port ( d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end DMUX_1_to_4_Structural;

architecture Structural of DMUX_1_to_4_Structural is

component not_gate is
    Port ( x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component and_gate_3ip is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : out  STD_LOGIC);
end component;

signal p,q : std_logic;

begin
i1: not_gate port map (s(1),p);
i2: not_gate port map (s(0),q);

i3: and_gate_3ip port map (p,q,d,y(0));
i4: and_gate_3ip port map (p,s(0),d,y(1));
i5: and_gate_3ip port map (s(1),q,d,y(2));
i6: and_gate_3ip port map (s(1),s(0),d,y(3));

end Structural;

