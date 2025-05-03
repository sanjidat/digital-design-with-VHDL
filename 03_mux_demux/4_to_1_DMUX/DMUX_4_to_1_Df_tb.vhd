--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:45:07 05/01/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/DMUX_4_to_1_Dataflow/DMUX_4_to_1_Df_tb.vhd
-- Project Name:  DMUX_4_to_1_Dataflow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DMUX_4_to_1_Dataflow
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
 
ENTITY DMUX_4_to_1_Df_tb IS
END DMUX_4_to_1_Df_tb;
 
ARCHITECTURE behavior OF DMUX_4_to_1_Df_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DMUX_4_to_1_Dataflow
    PORT(
         d : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DMUX_4_to_1_Dataflow PORT MAP (
          d => d,
          s => s,
          y => y
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
		d <= '1';
		s <= "00";
		wait for 200ns;
		
		s <= "01";
		wait for 200ns;
		
		s <= "10";
		wait for 200ns;
		
		s <= "11";
		wait for 200ns;
		
      wait;
   end process;

END;
