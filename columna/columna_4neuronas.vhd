----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:11:14 09/23/2018 
-- Design Name: 
-- Module Name:    columna_4neuronas - Behavioral 
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

entity columna_4neuronas is
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
           clack_in : in  STD_LOGIC;
			  izq_in : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           der_out : out  STD_LOGIC_VECTOR (3 downto 0);
           proto_out : out  STD_LOGIC_VECTOR (1 downto 0);
           clack_out : out  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end columna_4neuronas;

architecture Behavioral of columna_4neuronas is

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

signal rec0_sg,rec1_sg,rec2_sg,rec3_sg,c0_sg,c1_sg,c2_sg: std_logic :='0';
signal p0_sg,p1_sg,p2_sg: std_logic_vector(1 downto 0):="00";
signal z0_sg,z1_sg,z2_sg: std_logic_vector(15 downto 0):=(others=>'0');
begin
	--			neurona (x_in,proto_in,izq_in,clack_in,clk,reset_in,rec_out,der_out,clack_out,proto_out,z_out);
n0 : neurona port map(x_in,proto_in,izq_in(0),clack_in,clk,reset_in,rec0_sg,der_out(0),c0_sg,p0_sg,z0_sg);
n1 : neurona port map(z0_sg,p0_sg,izq_in(1),c0_sg,clk,reset_in,rec1_sg,der_out(1),c1_sg,p1_sg,z1_sg);
n2 : neurona port map(z1_sg,p1_sg,izq_in(2),c1_sg,clk,reset_in,rec2_sg,der_out(2),c2_sg,p2_sg,z2_sg);
n3 : neurona port map(z2_sg,p2_sg,izq_in(3),c2_sg,clk,reset_in,rec3_sg,der_out(3),clack_out,proto_out,z_out);



end Behavioral;

