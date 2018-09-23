--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:26:23 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/neuronas/flipflopD_CE_tb.vhd
-- Project Name:  neuronas
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopD_CE
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY flipflopD_CE_tb IS
END flipflopD_CE_tb;
 
ARCHITECTURE behavior OF flipflopD_CE_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopD_CE
    PORT(
         D : IN  std_logic;
         Q : OUT  std_logic;
         enable_in : IN  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal enable_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopD_CE PORT MAP (
          D => D,
          Q => Q,
          enable_in => enable_in,
          clk => clk,
          reset_in => reset_in
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	

      -- insert stimulus here 
		
		D<='0';
		enable_in<='0';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='1';
		enable_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='0';
		enable_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='1';
		enable_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='1';
		enable_in<='1';
		reset_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;

      wait;
   end process;

END;
