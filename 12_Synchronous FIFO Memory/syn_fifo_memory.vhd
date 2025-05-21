----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:59 05/15/2025 
-- Design Name: 
-- Module Name:    syn_fifo_memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity syn_fifo_memory is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           wr_en : in  STD_LOGIC;
           rd_en : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           full : out  STD_LOGIC;
           empty : out  STD_LOGIC);
end syn_fifo_memory;

architecture Behavioral of syn_fifo_memory is
	type memory_array is array (0 to 7) of std_logic_vector(7 downto 0); -- 8X8 memory array delaration
	
	signal memory : memory_array := (others => (others => '0'));
	signal wr_Pr  : integer range 0 to 7 := 0;
	signal rd_Pr  : integer range 0 to 7 := 0;
	signal count  : integer range 0 to 8 := 0;
	signal dout   : std_logic_vector(7 downto 0) := (others => '0');
	
begin
	process(clk,reset)
	begin 
		if (reset = '1') then 
			wr_pr  <= 0;
			rd_pr  <= 0;
			count  <= 0;
			memory <= (others => (others => '0'));
		elsif (rising_edge(clk)) then
			-- Write Operation
			if (wr_en = '1' and count < 8) then
				memory(wr_pr) <= data_in;
				wr_pr         <= (wr_pr +1) mod 8;
				count         <= count + 1;
			end if;
			
			-- Read Operation
			if (rd_en = '1' and count > 0) then 
				 dout  <= memory(rd_pr);
				 rd_pr <= (rd_pr + 1) mod 8;
				 count <= count -1;
--			elsif (rd_en <= '1' and count > 0) then 
--				dout <= (others => '0');
			end if;
		end if;
		end process;
	data_out <= dout;
   full  <= '1' when count = 8 else '0';
   empty <= '1' when count = 0 else '0';
 
end Behavioral;

