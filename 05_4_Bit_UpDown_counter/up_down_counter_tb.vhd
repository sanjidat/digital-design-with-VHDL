--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:07:58 05/15/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/up_down_counter/up_down_counter_tb.vhd
-- Project Name:  up_down_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_counter
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
 
ENTITY up_down_counter_tb IS
END up_down_counter_tb;
 
ARCHITECTURE behavior OF up_down_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_down_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         up_down : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_counter PORT MAP (
          clk => clk,
          reset => reset,
          up_down => up_down,
          q => q
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
		
	reset <= '1';
	up_down <= '1';
	wait for 100 ns;
	
	reset <= '0';
	up_down <= '0';
	wait for 100 ns;
	
	reset <= '0';
	up_down <= '0';
	wait for 100 ns;
	
	reset <= '0';
	up_down <= '1';
	wait for 100 ns;
	
	reset <= '0';
	up_down <= '1';
	wait for 100 ns;
      wait;
   end process;

END;
