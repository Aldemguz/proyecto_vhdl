--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:32:48 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/first_neurona/first_neurona_tb.vhd
-- Project Name:  first_neurona
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: first_neurona
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
 
ENTITY first_neurona_tb IS
END first_neurona_tb;
 
ARCHITECTURE behavior OF first_neurona_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT first_neurona
    PORT(
         x_in : IN  std_logic_vector(15 downto 0);
         proto_in : IN  std_logic_vector(1 downto 0);
         izq_in : IN  std_logic;
         clk : IN  std_logic;
         reset_in : IN  std_logic;
         rec_out : OUT  std_logic;
         der_out : OUT  std_logic;
         z_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(15 downto 0) := (others => '0');
   signal proto_in : std_logic_vector(1 downto 0) := (others => '0');
   signal izq_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal rec_out : std_logic;
   signal der_out : std_logic;
   signal z_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: first_neurona PORT MAP (
          x_in => x_in,
          proto_in => proto_in,
          izq_in => izq_in,
          clk => clk,
          reset_in => reset_in,
          rec_out => rec_out,
          der_out => der_out,
          z_out => z_out
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	


      -- insert stimulus here
		x_in<="0000000000000001";
		proto_in<="01";
		izq_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000010";
		proto_in<="00";
		izq_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000011";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000001010";
		proto_in<="00";
		izq_in<='1';
		reset_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000001011";
		proto_in<="00";
		izq_in<='1';
		reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000001111";
		proto_in<="00";
		izq_in<='1';
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
		
      wait;
   end process;

END;
