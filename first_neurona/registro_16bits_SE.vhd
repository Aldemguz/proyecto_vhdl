----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:00 09/22/2018 
-- Design Name: 
-- Module Name:    registro_16bits_SE - Behavioral 
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

entity registro_16bits_SE is
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end registro_16bits_SE;

architecture Behavioral of registro_16bits_SE is

begin

process(clk,reset_in)
begin
if reset_in='1' then
	z_out<="0000000000000000";
	elsif rising_edge(clk) then
	z_out<=x_in;
	end if;
end process;

end Behavioral;

