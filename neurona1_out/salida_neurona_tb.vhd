--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:17:11 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/neurona1_out/salida_neurona_tb.vhd
-- Project Name:  neurona1_out
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: salida_neurona
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
 
ENTITY salida_neurona_tb IS
END salida_neurona_tb;
 
ARCHITECTURE behavior OF salida_neurona_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT salida_neurona
    PORT(
         x_in : IN  std_logic_vector(15 downto 0);
         rec_in : IN  std_logic;
         der_in : IN  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic;
         z_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(15 downto 0) := (others => '0');
   signal rec_in : std_logic := '0';
   signal der_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal z_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: salida_neurona PORT MAP (
          x_in => x_in,
          rec_in => rec_in,
          der_in => der_in,
          clk => clk,
          reset_in => reset_in,
          z_out => z_out
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	

  

      -- insert stimulus here 
		der_in<='0';
		rec_in<='0';
		x_in<="0000000000000000";
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		der_in<='1';
		rec_in<='0';
		x_in<="0000000000000100";
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		der_in<='0';
		rec_in<='1';
		x_in<="0000000000000010";
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		der_in<='1';
		rec_in<='1';
		x_in<="0000000000001010";
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000001011";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		der_in<='0';
		rec_in<='0';
		x_in<="0000000000001100";
		reset_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;

      wait;
   end process;

END;
