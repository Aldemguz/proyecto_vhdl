----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:15:53 09/22/2018 
-- Design Name: 
-- Module Name:    neurona - Behavioral 
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

entity neurona is
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
end neurona;

architecture Behavioral of neurona is

component half_neuronas2
	Port (  proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
			  clack_in : in STD_LOGIC;
           izq_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           der_out : out  STD_LOGIC;
			  clack_out : out STD_LOGIC;
           enable_out : out  STD_LOGIC);
end component;


component registro_16bits
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           enable_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component flipflopD
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC);
end component;

component mux2_2bits
    Port ( x_in : in  STD_LOGIC_VECTOR (1 downto 0);
           y_in : in  STD_LOGIC_VECTOR (1 downto 0);
           sel_in : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

signal enable_sg,der_sg:std_logic:='0';
signal mux_sg: std_logic_vector(1 downto 0):="00";
signal const_bip: std_logic_vector(1 downto 0):="01";
signal z_sg,x_sg: std_logic_vector(15 downto 0) :=(others=>'0');

begin

x_sg<= x_in when clack_in='0' else "ZZZZZZZZZZZZZZZZ";
mux : mux2_2bits port map(proto_in,const_bip,clack_in,mux_sg);
proto_out<=proto_in when der_sg='1' and clack_in='0' else "00";
hn : half_neuronas2 port map(mux_sg,clack_in,izq_in,reset_in,clk,der_sg,clack_out,enable_sg);
latch : registro_16bits port map(x_sg,enable_sg,reset_in,clk,z_sg);
rec_out<='1' when z_sg=x_in else '0';
z_out<= x_in when der_sg='1' else "ZZZZZZZZZZZZZZZZ";
der_out<=der_sg;
end Behavioral;

