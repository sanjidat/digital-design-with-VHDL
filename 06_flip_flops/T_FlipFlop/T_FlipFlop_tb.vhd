--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:34:31 05/05/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/T_FlipFlop/T_FlipFlop_tb.vhd
-- Project Name:  T_FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FlipFlop
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
 
ENTITY T_FlipFlop_tb IS
END T_FlipFlop_tb;
 
ARCHITECTURE behavior OF T_FlipFlop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_FlipFlop
    PORT(
         clk : IN  std_logic;
         T : IN  std_logic;
         q : OUT  std_logic;
         q0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal T : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal q0 : std_logic;

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_FlipFlop PORT MAP (
          clk => clk,
          T => T,
          q => q,
          q0 => q0
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= not clk;
		wait for 50 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
	T <= '0';
	wait for 200 ns;
	
	T <= '1';
	wait for 200 ns;
	
	T <= '0';
	wait for 200 ns;
	
	T <= '1';
	wait for 200 ns;
	
	T <= '0';
	wait for 200 ns;
	
	T <= '1';
	wait for 200 ns;
	
      wait;
   end process;

END;
