--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:52:48 05/15/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/universal_shift_regsiter/universal_shift_regsiter_tb.vhd
-- Project Name:  universal_shift_regsiter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: universal_shift_regsiter
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
 
ENTITY universal_shift_regsiter_tb IS
END universal_shift_regsiter_tb;
 
ARCHITECTURE behavior OF universal_shift_regsiter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT universal_shift_regsiter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         serial_in_right : IN  std_logic;
         serial_in_left : IN  std_logic;
         parallel_in : IN  std_logic_vector(3 downto 0);
         mode : IN  std_logic_vector(1 downto 0);
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal serial_in_right : std_logic := '0';
   signal serial_in_left : std_logic := '0';
   signal parallel_in : std_logic_vector(3 downto 0) := (others => '0');
   signal mode : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: universal_shift_regsiter PORT MAP (
          clk => clk,
          reset => reset,
          serial_in_right => serial_in_right,
          serial_in_left => serial_in_left,
          parallel_in => parallel_in,
          mode => mode,
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
	mode <= "01";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
	
	reset <= '0';
	mode <= "10";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
	
	reset <= '1';
	mode <= "01";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
	
	reset <= '0';
	mode <= "01";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
	
	reset <= '0';
	mode <= "10";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
	
	reset <= '0';
	mode <= "00";
	serial_in_right <= '1';
	serial_in_left <= '1';
	wait for 100 ns;
      wait;
   end process;

END;
