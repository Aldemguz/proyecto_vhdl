----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:21 09/22/2018 
-- Design Name: 
-- Module Name:    mux2_2bits - Behavioral 
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

entity mux2_2bits is
    Port ( x_in : in  STD_LOGIC_VECTOR (1 downto 0);
           y_in : in  STD_LOGIC_VECTOR (1 downto 0);
           sel_in : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (1 downto 0));
end mux2_2bits;

architecture Behavioral of mux2_2bits is

begin

z_out(0)<= ((not(sel_in) and x_in(0))or(sel_in and y_in(0)));
z_out(1)<= ((not(sel_in) and x_in(1))or(sel_in and y_in(1)));

end Behavioral;

