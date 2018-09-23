----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:50 09/22/2018 
-- Design Name: 
-- Module Name:    first_neurona - Behavioral 
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

entity first_neurona is
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
           izq_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           rec_out : out  STD_LOGIC;
           der_out : out  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end first_neurona;

architecture Behavioral of first_neurona is

component half_neurona
    Port ( proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
           izq_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           der_out : out  STD_LOGIC;
           enable_out : out  STD_LOGIC);
end component;

component registro_16bits
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           enable_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component registro_16bits_SE
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal enable_sg,der_sg:std_logic:='0';
signal z_sg,x_sg: std_logic_vector(15 downto 0) :=(others=>'0');
begin

reg_temp: registro_16bits_SE port map(x_in,clk,reset_in,x_sg);
hn : half_neurona port map(proto_in,izq_in,reset_in,clk,der_sg,enable_sg);
latch : registro_16bits port map(x_sg,enable_sg,reset_in,clk,z_sg);
rec_out<='1' when z_sg=x_in else '0';
z_out<= x_in when der_sg='1' else "ZZZZZZZZZZZZZZZZ";
der_out<=der_sg;

end Behavioral;

