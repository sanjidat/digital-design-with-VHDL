--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:26:35 05/02/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/decode_dataflow/decode_dataflow_tb.vhd
-- Project Name:  decode_dataflow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decode_dataflow
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY decode_dataflow_tb IS
END decode_dataflow_tb;
 
ARCHITECTURE behavior OF decode_dataflow_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decode_dataflow
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         d : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal d : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decode_dataflow PORT MAP (
          a => a,
          d => d
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
	a <= "00";
	wait for 200 ns;
	
	a <= "01";
	wait for 200 ns;
	
	a <= "10";
	wait for 200 ns;
	
	a <= "11";
	wait for 200 ns;
	
      wait;
   end process;

END;
