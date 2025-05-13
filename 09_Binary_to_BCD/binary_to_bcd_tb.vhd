--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:01:54 05/04/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/binary_to_bcd/binary_to_bcd_tb.vhd
-- Project Name:  binary_to_bcd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: binary_to_bcd
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
USE ieee.numeric_std.ALL;
 
ENTITY binary_to_bcd_tb IS
END binary_to_bcd_tb;
 
ARCHITECTURE behavior OF binary_to_bcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_to_bcd
    PORT(
         bin : IN  std_logic_vector(3 downto 0);
         ones : OUT  std_logic_vector(3 downto 0);
         tens : OUT  std_logic_vector(3 downto 0);
         bcd_output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ones : std_logic_vector(3 downto 0);
   signal tens : std_logic_vector(3 downto 0);
   signal bcd_output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: binary_to_bcd PORT MAP (
          bin => bin,
          ones => ones,
          tens => tens,
          bcd_output => bcd_output
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
	bin <= "0111";
	wait for 100 ns;
	
	bin <= "0001";
	wait for 100 ns;
	
	bin <= "1001";
	wait for 100 ns;
	
	bin <= "1100";
	wait for 100 ns;
	
	bin <= "0011";
	wait for 100 ns;
	
	bin <= "1010";
	wait for 100 ns;
	
	bin <= "0101";
	wait for 100 ns;
      wait;
   end process;

END;
