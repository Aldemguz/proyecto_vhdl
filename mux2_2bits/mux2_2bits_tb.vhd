--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:43:07 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/mux2_2bits/mux2_2bits_tb.vhd
-- Project Name:  mux2_2bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2_2bits
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
 
ENTITY mux2_2bits_tb IS
END mux2_2bits_tb;
 
ARCHITECTURE behavior OF mux2_2bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_2bits
    PORT(
         x_in : IN  std_logic_vector(1 downto 0);
         y_in : IN  std_logic_vector(1 downto 0);
         sel_in : IN  std_logic;
         z_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(1 downto 0) := (others => '0');
   signal y_in : std_logic_vector(1 downto 0) := (others => '0');
   signal sel_in : std_logic := '0';

 	--Outputs
   signal z_out : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_2bits PORT MAP (
          x_in => x_in,
          y_in => y_in,
          sel_in => sel_in,
          z_out => z_out
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      wait for 10 ns;	


      -- insert stimulus here 
		
		x_in<="00";
		y_in<="11";
		sel_in<='0';
		wait for 10 ns;
		x_in<="00";
		y_in<="11";
		sel_in<='1';
		wait for 10 ns;
		x_in<="10";
		y_in<="01";
		sel_in<='0';
		wait for 10 ns;
		x_in<="10";
		y_in<="01";
		sel_in<='1';
		wait for 10 ns;

      wait;
   end process;

END;
