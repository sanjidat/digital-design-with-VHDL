--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:33:20 05/04/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/D_Latch_Structural/D_Latch_Structural_tb.vhd
-- Project Name:  D_Latch_Structural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_Latch_Structural
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
 
ENTITY D_Latch_Structural_tb IS
END D_Latch_Structural_tb;
 
ARCHITECTURE behavior OF D_Latch_Structural_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_Latch_Structural
    PORT(
         d : IN  std_logic;
         enable : IN  std_logic;
         q : OUT  std_logic;
         q0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal q0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_Latch_Structural PORT MAP (
          d => d,
          enable => enable,
          q => q,
          q0 => q0
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
	d <= '0';
	enable <= '0';
	wait for 200 ns;
	
	d <= '1';
	enable <= '0';
	wait for 200 ns;
	
	d <= '0';
	enable <= '1';
	wait for 200 ns;
	
	d <= '1';
	enable <= '1';
	wait for 200 ns;
      wait;
   end process;

END;
