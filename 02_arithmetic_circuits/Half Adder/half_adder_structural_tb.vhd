--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:16:43 04/30/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/half_adder/half_adder_tb.vhd
-- Project Name:  half_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder
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
 
ENTITY half_adder_tb IS
END half_adder_tb;
 
ARCHITECTURE behavior OF half_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         sum : OUT  std_logic;
         carry_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          x => x,
          y => y,
          sum => sum,
          carry_out => carry_out
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
	x <= '0';
	y <= '0';
		wait for 100ns;
		
	x <= '0';
	y <= '1';
		wait for 100ns;

	x <= '1';
	y <= '0';
		wait for 100ns;
		
	x <= '1';
	y <= '1';
		wait for 100ns;
		
      wait;
   end process;

END;
