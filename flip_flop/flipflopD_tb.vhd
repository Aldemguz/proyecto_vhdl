--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:58:04 09/19/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/flip_flop/flipflopD_tb.vhd
-- Project Name:  flip_flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflopD
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
 
ENTITY flipflopD_tb IS
END flipflopD_tb;
 
ARCHITECTURE behavior OF flipflopD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflopD
    PORT(
         D : IN  std_logic;
         Q : OUT  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflopD PORT MAP (
          D => D,
          Q => Q,
          clk => clk,
          reset_in => reset_in
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      wait for 10 ns;	


      -- insert stimulus here 
		
		D<='0';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='U';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='1';
		reset_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		D<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;

      wait;
   end process;

END;
