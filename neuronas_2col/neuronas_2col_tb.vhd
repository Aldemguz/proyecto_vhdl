--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:29:14 09/24/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/neuronas_2col/neuronas_2col_tb.vhd
-- Project Name:  neuronas_2col
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: neuronas_2col
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
 
ENTITY neuronas_2col_tb IS
END neuronas_2col_tb;
 
ARCHITECTURE behavior OF neuronas_2col_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT neuronas_2col
    PORT(
         x_in : IN  std_logic_vector(15 downto 0);
         proto_in : IN  std_logic_vector(1 downto 0);
         clack_in : IN  std_logic;
         izq_in : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         reset_in : IN  std_logic;
         der_out : OUT  std_logic_vector(1 downto 0);
         proto_out : OUT  std_logic_vector(1 downto 0);
         clack_out : OUT  std_logic;
         z_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(15 downto 0) := (others => '0');
   signal proto_in : std_logic_vector(1 downto 0) := (others => '0');
   signal clack_in : std_logic := '0';
   signal izq_in : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal der_out : std_logic_vector(1 downto 0);
   signal proto_out : std_logic_vector(1 downto 0);
   signal clack_out : std_logic;
   signal z_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: neuronas_2col PORT MAP (
          x_in => x_in,
          proto_in => proto_in,
          clack_in => clack_in,
          izq_in => izq_in,
          clk => clk,
          reset_in => reset_in,
          der_out => der_out,
          proto_out => proto_out,
          clack_out => clack_out,
          z_out => z_out
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 10 ns;	

      -- insert stimulus here 
		
		x_in<="0000000000000000";
      proto_in<="01";
      izq_in<="11";
		clack_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000001";
      proto_in<="01";
      izq_in<="11";
		clack_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000010";
      proto_in<="00";
      izq_in<="11";
		clack_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000011";
      proto_in<="01";
      izq_in<="11";
		clack_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000100";
      proto_in<="10";
      izq_in<="11";
		clack_in<='0';
      reset_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000101";
		proto_in<="01";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		proto_in<="00";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		proto_in<="01";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		proto_in<="10";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		proto_in<="11";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		proto_in<="10";
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;


      wait;
   end process;

END;
