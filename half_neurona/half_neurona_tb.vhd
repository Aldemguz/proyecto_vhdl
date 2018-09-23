--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:43:28 09/22/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/half_neurona/half_neurona_tb.vhd
-- Project Name:  half_neurona
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_neurona
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
 
ENTITY half_neurona_tb IS
END half_neurona_tb;
 
ARCHITECTURE behavior OF half_neurona_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_neurona
    PORT(
         proto_in : IN  std_logic_vector(1 downto 0);
         izq_in : IN  std_logic;
         reset_in : IN  std_logic;
         clk : IN  std_logic;
         der_out : OUT  std_logic;
         enable_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal proto_in : std_logic_vector(1 downto 0) := (others => '0');
   signal izq_in : std_logic := '0';
   signal reset_in : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal der_out : std_logic;
   signal enable_out : std_logic;

   -- Clock period definitions

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_neurona PORT MAP (
          proto_in => proto_in,
          izq_in => izq_in,
          reset_in => reset_in,
          clk => clk,
          der_out => der_out,
          enable_out => enable_out
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	


      -- insert stimulus here 
           proto_in<="01";
           izq_in<='0';
           reset_in<='0';
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
           proto_in<="00";
           izq_in<='1';
           reset_in<='0';
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
			  reset_in<='1';
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
			  proto_in<="00";
           izq_in<='0';
           reset_in<='0';
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
			  proto_in<="10";
           izq_in<='0';
           reset_in<='0';
			  clk<='1';
			  wait for 10 ns;
			  clk<='0';
			  wait for 10 ns;
			  proto_in<="00";
           izq_in<='1';
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
      wait;
   end process;

END;
