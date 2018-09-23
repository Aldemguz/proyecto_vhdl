--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:06:39 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/bloque2/bloque2_tb.vhd
-- Project Name:  bloque2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bloque2
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
 
ENTITY bloque2_tb IS
END bloque2_tb;
 
ARCHITECTURE behavior OF bloque2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bloque2
    PORT(
         der_in : IN  std_logic;
         izq_in : IN  std_logic;
         proto_in : IN  std_logic_vector(1 downto 0);
         enable_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal der_in : std_logic := '0';
   signal izq_in : std_logic := '0';
   signal proto_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal enable_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bloque2 PORT MAP (
          der_in => der_in,
          izq_in => izq_in,
          proto_in => proto_in,
          enable_out => enable_out
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      wait for 10 ns;	


      -- insert stimulus here 
		izq_in<='0';
		der_in<='0';
		proto_in<="00";
		wait for 10 ns;
		izq_in<='1';
		der_in<='0';
		proto_in<="00";
		wait for 10 ns;
		izq_in<='1';
		der_in<='1';
		proto_in<="00";
		wait for 10 ns;
		izq_in<='1';
		der_in<='0';
		proto_in<="01";
		wait for 10 ns;
		izq_in<='0';
		der_in<='1';
		proto_in<="11";
		wait for 10 ns;

      wait;
   end process;

END;
