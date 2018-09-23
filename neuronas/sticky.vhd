----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:00 09/22/2018 
-- Design Name: 
-- Module Name:    sticky - Behavioral 
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

entity sticky is
    Port ( clack_in : in  STD_LOGIC;
           der_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC;
           clack_out : out  STD_LOGIC);
end sticky;

architecture Behavioral of sticky is

component flipflopD_CE
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           enable_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_in : in  STD_LOGIC);
end component;

signal enable_sg: std_logic:='0';
begin

enable_sg<=not(der_in);
ffce : flipflopD_CE port map(clack_in,clack_out,enable_sg,clk,reset_in);

end Behavioral;

