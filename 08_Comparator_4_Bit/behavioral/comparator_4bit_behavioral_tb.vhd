--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:58:15 05/03/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/comparator_4bit_behavioral/comparator_4bit_behavioral_tb.vhd
-- Project Name:  comparator_4bit_behavioral
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_4bit_behavioral
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
 
ENTITY comparator_4bit_behavioral_tb IS
END comparator_4bit_behavioral_tb;
 
ARCHITECTURE behavior OF comparator_4bit_behavioral_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_4bit_behavioral
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         G : OUT  std_logic;
         E : OUT  std_logic;
         L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic;
   signal E : std_logic;
   signal L : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_4bit_behavioral PORT MAP (
          A => A,
          B => B,
          G => G,
          E => E,
          L => L
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
	A <= "0101";
	B <= "1000";
	wait for 200 ns;
	
	A <= "1101";
	B <= "1100";
	wait for 200 ns;
	
	A <= "1010";
	B <= "1010";
	wait for 200 ns;
	
	A <= "1111";
	B <= "1101";
	wait for 200 ns;
	
	A <= "0001";
	B <= "1001";
	wait for 200 ns;
      wait;
   end process;

END;
