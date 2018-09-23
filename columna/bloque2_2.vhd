----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:59:43 09/22/2018 
-- Design Name: 
-- Module Name:    bloque2 - Behavioral 
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

entity bloque2_2 is
    Port ( der_in : in  STD_LOGIC;
           izq_in : in  STD_LOGIC;
           proto_in : in  STD_LOGIC_VECTOR (1 downto 0);
			  reset_in : in STD_LOGIC;
			  clack_out : out STD_LOGIC;
           enable_out : out  STD_LOGIC);
end bloque2_2;

architecture Dataflow of bloque2_2 is

signal and1_sg,and2_sg,bip_clack_sg: std_logic:='0';
begin

and1_sg<= izq_in and not(der_in);
bip_clack_sg<= proto_in(0);
and2_sg<= bip_clack_sg and and1_sg;
enable_out<=and2_sg when reset_in='0' else '0'; 
clack_out<= proto_in(1) and proto_in(0);
end Dataflow;

