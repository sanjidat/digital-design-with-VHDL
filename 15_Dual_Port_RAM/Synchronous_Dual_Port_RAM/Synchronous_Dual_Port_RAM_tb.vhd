--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:44:42 05/18/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/Synchronous_Dual_Port_RAM/Synchronous_Dual_Port_RAM_tb.vhd
-- Project Name:  Synchronous_Dual_Port_RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Synchronous_Dual_Port_RAM
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
 
ENTITY Synchronous_Dual_Port_RAM_tb IS
END Synchronous_Dual_Port_RAM_tb;
 
ARCHITECTURE behavior OF Synchronous_Dual_Port_RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Synchronous_Dual_Port_RAM
    PORT(
         clk : IN  std_logic;
         addr_a : IN  std_logic_vector(7 downto 0);
         addr_b : IN  std_logic_vector(7 downto 0);
         data_in_a : IN  std_logic_vector(7 downto 0);
         data_in_b : IN  std_logic_vector(7 downto 0);
         we_a : IN  std_logic;
         we_b : IN  std_logic;
         data_out_a : OUT  std_logic_vector(7 downto 0);
         data_out_b : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal addr_a : std_logic_vector(7 downto 0) := (others => '0');
   signal addr_b : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_a : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_b : std_logic_vector(7 downto 0) := (others => '0');
   signal we_a : std_logic := '0';
   signal we_b : std_logic := '0';

 	--Outputs
   signal data_out_a : std_logic_vector(7 downto 0);
   signal data_out_b : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Synchronous_Dual_Port_RAM PORT MAP (
          clk => clk,
          addr_a => addr_a,
          addr_b => addr_b,
          data_in_a => data_in_a,
          data_in_b => data_in_b,
          we_a => we_a,
          we_b => we_b,
          data_out_a => data_out_a,
          data_out_b => data_out_b
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
      wait for 50 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 
-- Write to address 0
	we_a      <= '1';
	we_b      <= '1';
	addr_a    <= std_logic_vector(to_unsigned(0,8));
	addr_b    <= std_logic_vector(to_unsigned(1,8));
	data_in_a <= "10000011";
	data_in_b <= "10000001";
	wait for clk_period;

-- Write to address 1	
	we_a      <= '1';
	we_b      <= '1';
	addr_a    <= std_logic_vector(to_unsigned(2,8));
	addr_b    <= std_logic_vector(to_unsigned(3,8));
	data_in_a <= "00000011";
	data_in_b <= "00000001";
	wait for clk_period;

-- Write to address 2
	we_a      <= '0';
	we_b      <= '1';
	addr_a    <= std_logic_vector(to_unsigned(1,8));
	addr_b    <= std_logic_vector(to_unsigned(4,8));
--	data_in_a <= "10000101";
	data_in_b <= "10000101";
	wait for clk_period;

-- Write to address 3
	we_a      <= '1';
	we_b      <= '0';
	addr_a    <= std_logic_vector(to_unsigned(5,8));
	addr_b    <= std_logic_vector(to_unsigned(2,8));
	data_in_a <= "10000011";
--	data_in_b <= "10000001";
	wait for clk_period;
	
-- Read from address 1
	we_a      <= '0';
	we_b      <= '0';
	addr_a    <= std_logic_vector(to_unsigned(3,8));
	addr_b    <= std_logic_vector(to_unsigned(4,8));
	wait for clk_period;

-- Read from address 3
	we_a      <= '0';
	we_b      <= '0';
	addr_a    <= std_logic_vector(to_unsigned(1,8));
	addr_b    <= std_logic_vector(to_unsigned(2,8));
	wait for clk_period;

-- Read from address 0
	we_a      <= '1';
	we_b      <= '1';
	addr_a    <= std_logic_vector(to_unsigned(6,8));
	addr_b    <= std_logic_vector(to_unsigned(7,8));
	data_in_a <= "10000101";
	data_in_b <= "10000001";
	wait for clk_period;
	
      wait;
   end process;

END;
