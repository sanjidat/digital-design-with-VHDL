--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:34:31 04/29/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/AND_gate/AND_gate_tb.vhd
-- Project Name:  AND_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AND_gate
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
 
ENTITY AND_gate_tb IS
END AND_gate_tb;
 
ARCHITECTURE behavior OF AND_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND_gate
    PORT(
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         o1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND_gate PORT MAP (
          i1 => i1,
          i2 => i2,
          o1 => o1
        );

--   -- Clock process definitions
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
--
--      wait for <clock>_period*10;

      -- insert stimulus here 

--      wait;

	i1 <= '0';
	i2 <= '0';
	wait for 10 ns;
	
	i1 <= '0';
	i2 <= '1';
	wait for 10 ns;
	
	i1 <= '1';
	i2 <= '0';
	wait for 10 ns;
	
	i1 <= '1';
	i2 <= '1';
	wait for 10 ns;
	
   end process;

END;
