--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:05:56 04/30/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/ripplecarryadder_dataflow/rca_dataflow_tb.vhd
-- Project Name:  ripplecarryadder_dataflow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripplecarryadder_dataflow
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
 
ENTITY rca_dataflow_tb IS
END rca_dataflow_tb;
 
ARCHITECTURE behavior OF rca_dataflow_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripplecarryadder_dataflow
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         carry_in : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         carry_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal carry_in : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal carry_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripplecarryadder_dataflow PORT MAP (
          a => a,
          b => b,
          carry_in => carry_in,
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
		a <= "1001";
		b <= "0110";
		carry_in <= '0';
		wait for 200 ns;
		
		a <= "1011";
		b <= "0111";
		carry_in <= '0';
		wait for 200 ns;
		
		a <= "1101";
		b <= "0010";
		carry_in <= '0';
		wait for 200 ns;
		
      wait;
   end process;

END;
