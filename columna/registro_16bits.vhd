----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:36:54 09/18/2018 
-- Design Name: 
-- Module Name:    registro_16bits - Behavioral 
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

entity registro_16bits is
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           enable_in : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end registro_16bits;

architecture Behavioral of registro_16bits is
--signal temp: std_logic_vector(15 downto 0):=(others=>'0');
begin

process(clk,reset_in)
begin
if reset_in='1' then
	z_out<="0000000000000000";
	elsif rising_edge(clk) then
	if(enable_in='1') then
	z_out<=x_in;
	end if;
end if;
end process;

end Behavioral;

