--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:43:43 09/18/2018
-- Design Name:   
-- Module Name:   D:/Users/aldemaro/Documents/proyecto_tesis/registro_16bits/registro_16bits_tb.vhd
-- Project Name:  registro_16bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro_16bits
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
 
ENTITY registro_16bits_tb IS
END registro_16bits_tb;
 
ARCHITECTURE behavior OF registro_16bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_16bits
    PORT(
         x_in : IN  std_logic_vector(15 downto 0);
         enable_in : IN  std_logic;
         reset_in : IN  std_logic;
         clk : IN  std_logic;
         z_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(15 downto 0) := (others => '0');
   signal enable_in : std_logic := '0';
   signal reset_in : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal z_out : std_logic_vector(15 downto 0);

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_16bits PORT MAP (
          x_in => x_in,
          enable_in => enable_in,
          reset_in => reset_in,
          clk => clk,
          z_out => z_out
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      wait for 10 ns;	
      -- insert stimulus here 
		
		x_in<="0000000000000001";
		reset_in<='0';
		enable_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000010";
		reset_in<='0';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000011";
		reset_in<='1';
		enable_in<='0';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000100";
		reset_in<='1';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="0000000000000101";
		reset_in<='0';
		enable_in<='1';
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
		x_in<="00000000000000110";
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

      wait;
   end process;

END;
