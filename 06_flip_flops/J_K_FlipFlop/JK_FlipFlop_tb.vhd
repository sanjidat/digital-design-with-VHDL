--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:35:11 05/05/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/JK_FlipFlop/JK_FlipFlop_tb.vhd
-- Project Name:  JK_FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_FlipFlop
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
 
ENTITY JK_FlipFlop_tb IS
END JK_FlipFlop_tb;
 
ARCHITECTURE behavior OF JK_FlipFlop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_FlipFlop
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         q0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal q0 : std_logic;

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_FlipFlop PORT MAP (
          j => j,
          k => k,
          clk => clk,
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
	j <= '1'; k <= '0';
	wait for 100 ns;
	
	j <= '0'; k <= '0';
	wait for 100 ns;
	
	j <= '0'; k <= '1';
	wait for 100 ns;
	
	j <= '1'; k <= '0';
	wait for 100 ns;
	
	j <= '0'; k <= '1';
	wait for 100 ns;
	
	j <= '0'; k <= '0';
	wait for 100 ns;
	
	j <= '1'; k <= '0';
	wait for 100 ns;
	
	j <= '1'; k <= '1';
	wait for 100 ns;
      wait;
   end process;

END;
