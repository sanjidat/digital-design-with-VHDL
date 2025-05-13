--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:05 05/04/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/binary_to_grey_code/binary_to_grey_code_tb.vhd
-- Project Name:  binary_to_grey_code
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: binary_to_grey_code
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
 
ENTITY binary_to_gray_code_tb IS
END binary_to_gray_code_tb;
 
ARCHITECTURE behavior OF binary_to_gray_code_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_to_gray_code
    PORT(
         bin : IN  std_logic_vector(3 downto 0);
         gray_code : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal gray_code : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: binary_to_gray_code PORT MAP (
          bin => bin,
          gray_code => gray_code
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
	bin <= "0100";
	wait for 100 ns;
	
	bin <= "1100";
	wait for 100 ns;
	
	bin <= "0001";
	wait for 100 ns;
	
	bin <= "1010";
	wait for 100 ns;
	
	bin <= "0010";
	wait for 100 ns;
      wait;
   end process;

END;
