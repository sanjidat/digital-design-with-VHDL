----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:33 05/04/2025 
-- Design Name: 
-- Module Name:    D_Latch_Structural - Structural 
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

entity D_Latch_Structural is
    Port ( d : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end D_Latch_Structural;

architecture Structural of D_Latch_Structural is

component nand_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component not_gate is
    Port ( x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal s1,s2 :std_logic;
signal d0,s3,s4 : std_logic;

begin
i0: not_gate port map (d,d0);
i1: nand_gate port map (d,enable,s1);
i2: nand_gate port map (d0,enable,s2);
i3: nand_gate port map (s1,s4,s3);
i4: nand_gate port map (s2,s3,s4);

q <= s3;
q0 <= s4;
end Structural;

