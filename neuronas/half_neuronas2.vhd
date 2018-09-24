----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:26 09/22/2018 
-- Design Name: 
-- Module Name:    half_neuronas2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_neuronas2 is
	Port (  proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
			  clack_in : in STD_LOGIC;
           izq_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           der_out : out  STD_LOGIC;
			  clack_out : out STD_LOGIC;
           enable_out : out  STD_LOGIC);
end half_neuronas2;

architecture Behavioral of half_neuronas2 is



component bloque1
    Port ( enable_in : in  STD_LOGIC;
			  clack_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           der_out : out  STD_LOGIC);
end component;

component bloque2_2
    Port ( der_in : in  STD_LOGIC;
           izq_in : in  STD_LOGIC;
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
			  reset_in : in STD_LOGIC;
			  clack_out : out STD_LOGIC;
           enable_out : out  STD_LOGIC);
end component;

component sticky
    Port ( clack_in : in  STD_LOGIC;
           der_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clack_out : out  STD_LOGIC);
end component;

signal enable_sg,der_sg,clack_sg: std_logic:='0';
begin

b1 : bloque1 port map(enable_sg,clack_in,clk,reset_in,der_sg);
b2 : bloque2_2 port map(der_sg,izq_in,proto_in,reset_in,clack_sg,enable_sg);
pegajoso : sticky port map(clack_sg,der_sg,clk,reset_in,clack_out);
enable_out<=enable_sg when reset_in='0' else '0';
der_out<=der_sg;

end Behavioral;

