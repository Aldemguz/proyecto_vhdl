----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:29 09/22/2018 
-- Design Name: 
-- Module Name:    salida_neurona - Behavioral 
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

entity salida_neurona is
    Port ( x_in : in  STD_LOGIC_VECTOR (15 downto 0);
           rec_in : in  STD_LOGIC;
           der_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           z_out : out  STD_LOGIC_VECTOR (15 downto 0));
end salida_neurona;

architecture Behavioral of salida_neurona is

signal and_sg,or_sg,ff_sg:std_logic:='0';

begin
and_sg <= der_in and rec_in;
or_sg<= and_sg or ff_sg;
ff: flipflopD port map(or_sg,ff_sg,clk,reset_in);

z_out <= x_in when ff_sg='1' else "ZZZZZZZZZZZZZZZZ";

end Behavioral;

