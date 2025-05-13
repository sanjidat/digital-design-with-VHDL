----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:11 05/05/2025 
-- Design Name: 
-- Module Name:    D_Latch_Dataflow - Dataflow 
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

entity D_Latch_Dataflow is
    Port ( d : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q0 : out  STD_LOGIC);
end D_Latch_Dataflow;

architecture Dataflow of D_Latch_Dataflow is

signal s0,s1,s2,s3,s4: std_logic;

begin
s0 <= not d;
s1 <= d nand enable;
s2 <= s0 nand enable;
s3 <= s1 nand s4;
s4 <= s2 nand s3;

q <= s3;
q0 <= s4;
end Dataflow;

