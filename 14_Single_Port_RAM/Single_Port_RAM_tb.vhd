--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:22:26 05/18/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/Single_Port_RAM/Single_Port_RAM_tb.vhd
-- Project Name:  Single_Port_RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Single_Port_RAM
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
 
ENTITY Single_Port_RAM_tb IS
END Single_Port_RAM_tb;
 
ARCHITECTURE behavior OF Single_Port_RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Single_Port_RAM
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         ram_addr : IN  std_logic_vector(7 downto 0);
         enable : IN  std_logic;
         rd_wr : IN  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal ram_addr : std_logic_vector(7 downto 0) := (others => '0');
   signal enable : std_logic := '0';
   signal rd_wr : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Single_Port_RAM PORT MAP (
          clk => clk,
          data_in => data_in,
          ram_addr => ram_addr,
          enable => enable,
          rd_wr => rd_wr,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
	enable <= '1';
	rd_wr    <= '1';
	-- Write to address 0
	ram_addr <= std_logic_vector(to_unsigned(0, 8));
	data_in  <= "00000001";
	wait for clk_period;

-- Write to address 1
	ram_addr <= std_logic_vector(to_unsigned(1, 8));
	data_in  <= "00000010";
	wait for clk_period;

-- Write to address 2
	ram_addr <= std_logic_vector(to_unsigned(2, 8));
	data_in  <= "00001000";
	wait for clk_period;
	
-- Write to address 3	
	ram_addr <= std_logic_vector(to_unsigned(3, 8));
	data_in  <= "00001100";
	wait for clk_period;

-- Read from address 2
	rd_wr    <= '0';
	ram_addr <= std_logic_vector(to_unsigned(2, 8));
	wait for clk_period;

-- Read from address 1
	rd_wr    <= '0';
	ram_addr <= std_logic_vector(to_unsigned(1, 8));
	wait for clk_period;

-- Read from address 3
	rd_wr    <= '0';
	ram_addr <= std_logic_vector(to_unsigned(3, 8));
	wait for clk_period;
	wait;
   end process;

END;
