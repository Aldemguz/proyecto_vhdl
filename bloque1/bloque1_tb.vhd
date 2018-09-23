--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:33:35 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/bloque1/bloque1_tb.vhd
-- Project Name:  bloque1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bloque1
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
 
ENTITY bloque1_tb IS
END bloque1_tb;
 
ARCHITECTURE behavior OF bloque1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bloque1
    PORT(
         enable_in : IN  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic;
         der_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal enable_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal der_out : std_logic;

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bloque1 PORT MAP (
          enable_in => enable_in,
          clk => clk,
          reset_in => reset_in,
          der_out => der_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	


      -- insert stimulus here 
		reset_in<='0';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		reset_in<='0';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		reset_in<='0';
		enable_in<='0';
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
		reset_in<='1';
		enable_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		reset_in<='1';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		reset_in<='0';
		enable_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		reset_in<='0';
		enable_in<='1';
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
