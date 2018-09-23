--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:05:30 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/neuronas/sticky_tb.vhd
-- Project Name:  neuronas
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sticky
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
 
ENTITY sticky_tb IS
END sticky_tb;
 
ARCHITECTURE behavior OF sticky_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sticky
    PORT(
         clack_in : IN  std_logic;
         der_in : IN  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic;
         clack_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clack_in : std_logic := '0';
   signal der_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal clack_out : std_logic;

   -- Clock period definitions
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sticky PORT MAP (
          clack_in => clack_in,
          der_in => der_in,
          clk => clk,
          reset_in => reset_in,
          clack_out => clack_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10s.
      wait for 10 ns;	


      -- insert stimulus here 
		
		clack_in<='0';
      der_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clack_in<='0';
      der_in<='1';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clack_in<='1';
      der_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clack_in<='1';
      der_in<='1';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;

      wait;
   end process;

END;
