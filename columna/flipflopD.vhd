----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:33 09/19/2018 
-- Design Name: 
-- Module Name:    flipflopD - Behavioral 
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

entity flipflopD is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC);
end flipflopD;

architecture Behavioral of flipflopD is
signal temp: std_logic :='0';
begin
process(clk,reset_in)
begin
	if(reset_in='1') then
	temp<='0';
	elsif rising_edge(clk) then
	temp<=D;
	end if;
end process;
Q<=temp;

end Behavioral;

