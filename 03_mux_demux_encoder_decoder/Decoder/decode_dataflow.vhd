----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:19:48 05/02/2025 
-- Design Name: 
-- Module Name:    decode_dataflow - Dataflow 
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

entity decode_dataflow is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC_VECTOR (3 downto 0));
end decode_dataflow;

architecture Dataflow of decode_dataflow is

begin
d(0) <= not (a(1)) and not (a(0));
d(1) <= not (a(1)) and a(0);
d(2) <= a(1) and not (a(0));
d(3) <= a(1) and a(0);
end Dataflow;

