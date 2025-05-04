----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:44:35 04/30/2025 
-- Design Name: 
-- Module Name:    MUX_4_to_1_Structural - Structural 
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

entity MUX_4_to_1_Structural is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end MUX_4_to_1_Structural;

architecture Structural of MUX_4_to_1_Structural is

component MUX_2_to_1_structural is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal w1: std_logic;
signal w2: std_logic;

begin
u1: MUX_2_to_1_structural port map (i0,i1,s1,w1);
u2: MUX_2_to_1_structural port map (i2,i3,s1,w2);
u3: MUX_2_to_1_structural port map (w1,w2,s0,y);
end Structural;

