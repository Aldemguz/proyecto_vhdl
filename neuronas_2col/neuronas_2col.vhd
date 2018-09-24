----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:37 09/24/2018 
-- Design Name: 
-- Module Name:    neuronas_2col - Behavioral 
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

entity neuronas_2col is
	Port  ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
           clack_in : in  STD_LOGIC;
			  izq_in : in STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           der_out : out  STD_LOGIC_VECTOR (1 downto 0);
           proto_out : out  STD_LOGIC_VECTOR (1 downto 0);
           clack_out : out  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end neuronas_2col;

architecture Behavioral of neuronas_2col is

component neurona
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
           izq_in : in  STD_LOGIC;
			  clack_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           rec_out : out  STD_LOGIC;
           der_out : out  STD_LOGIC;
			  clack_out : out STD_LOGIC;
			  proto_out: out STD_LOGIC_VECTOR(1 downto 0);
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal rec0_sg,rec1_sg,c0_sg: std_logic :='0';
signal p0_sg: std_logic_vector(1 downto 0):="00";
signal z0_sg: std_logic_vector(15 downto 0):=(others=>'0');

begin

n0 : neurona port map(x_in,proto_in,izq_in(0),clack_in,clk,reset_in,rec0_sg,der_out(0),c0_sg,p0_sg,z0_sg);
n1 : neurona port map(z0_sg,p0_sg,izq_in(1),c0_sg,clk,reset_in,rec1_sg,der_out(1),clack_out,proto_out,z_out);


end Behavioral;

