----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:23 11/01/2012 
-- Design Name: 
-- Module Name:    bloque1 - Behavioral 
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

entity bloque1 is
    Port ( enable_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           der_out : out  STD_LOGIC);
end bloque1;

architecture Structural of bloque1 is

component flipflopD
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC);
end component;
signal or_sg,q_sg: std_logic:='0';
begin
or_sg<= enable_in or q_sg;
ff : flipflopD port map(or_sg,q_sg,clk,reset_in);
der_out<=q_sg;


end Structural;

