--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:07:18 05/15/2025
-- Design Name:   
-- Module Name:   /home/ise/vm/syn_fifo_memory/syn_fifo_memory_tb.vhd
-- Project Name:  syn_fifo_memory
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: syn_fifo_memory
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
 
ENTITY syn_fifo_memory_tb IS
END syn_fifo_memory_tb;
 
ARCHITECTURE behavior OF syn_fifo_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT syn_fifo_memory
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         wr_en : IN  std_logic;
         rd_en : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         full : OUT  std_logic;
         empty : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal wr_en : std_logic := '0';
   signal rd_en : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
   signal full : std_logic;
   signal empty : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: syn_fifo_memory PORT MAP (
          clk => clk,
          reset => reset,
          wr_en => wr_en,
          rd_en => rd_en,
          data_in => data_in,
          data_out => data_out,
          full => full,
          empty => empty
        );

   -- Clock process definitions
   clk_process :process
   begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- Reset FIFO
        reset <= '1';
        wait for clk_period;
        reset <= '0';
        wait for clk_period;
		  
		  -- Write data into FIFO
        for i in 0 to 3 loop
            wr_en <= '1';
            data_in <= std_logic_vector(to_unsigned(16 + i, 8));
            wait for clk_period;
        end loop;

        wr_en <= '0';

        -- Wait before reading
        wait for clk_period;

        -- Read data from FIFO
        for i in 0 to 4 loop
            rd_en <= '1';
            wait for clk_period;
        end loop;

        rd_en <= '0';
        wait;
   end process;

END;
