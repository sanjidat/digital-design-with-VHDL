----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:51:37 05/03/2025 
-- Design Name: 
-- Module Name:    xnor_gate - Behavioral 
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

entity xnor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
end xnor_gate;

architecture Behavioral of xnor_gate is

begin
o <= a xnor b;
end Behavioral;

