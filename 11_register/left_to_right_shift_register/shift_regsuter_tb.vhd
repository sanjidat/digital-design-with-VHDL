--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:48:53 05/05/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/shift_regsuter/shift_regsuter_tb.vhd
-- Project Name:  shift_regsuter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_regsuter
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
 
ENTITY shift_regsuter_tb IS
END shift_regsuter_tb;
 
ARCHITECTURE behavior OF shift_regsuter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_regsuter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         serial_in : IN  std_logic;
         q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal serial_in : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(4 downto 0);

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_regsuter PORT MAP (
          clk => clk,
          reset => reset,
          serial_in => serial_in,
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
	reset <= '0';
	serial_in <= '1';
	wait for 100 ns;
	
	reset <= '1';
	serial_in <= '1';
	wait for 100 ns;
	
	reset <= '0';
	serial_in <= '1';
	wait for 100 ns;
	
	reset <= '0';
	serial_in <= '0';
	wait for 100 ns;
	
	reset <= '0';
	serial_in <= '1';
	wait for 100 ns;
	
	reset <= '0';
	serial_in <= '0';
	wait for 100 ns;
	
	reset <= '0';
	serial_in <= '1';
	wait for 100 ns;
      wait;
   end process;

END;
