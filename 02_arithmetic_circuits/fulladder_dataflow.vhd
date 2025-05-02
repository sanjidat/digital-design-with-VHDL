----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:14:03 04/30/2025 
-- Design Name: 
-- Module Name:    fulladder_dataflow - dataflow 
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

entity fulladder_dataflow is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end fulladder_dataflow;

architecture dataflow of fulladder_dataflow is

begin

sum <= x xor y xor carry_in;
carry_out <= (x and y) or (y and carry_in) or (carry_in and x);

end dataflow;

