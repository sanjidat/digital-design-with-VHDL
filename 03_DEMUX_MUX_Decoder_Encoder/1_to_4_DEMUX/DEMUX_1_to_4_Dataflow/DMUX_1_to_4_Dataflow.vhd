----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:38:17 05/01/2025 
-- Design Name: 
-- Module Name:    DMUX_4_to_1_Dataflow - Dataflow 
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

entity DMUX_1_to_4_Dataflow is
    Port ( d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end DMUX_1_to_4_Dataflow;

architecture Dataflow of DMUX_1_to_4_Dataflow is

begin

y(0) <= d and not s(1) and not s(0);
y(1) <= d and not s(1) and s(0);
y(2) <= d and s(1) and not s(0);
y(3) <= d and s(1) and s(0);

end Dataflow;

