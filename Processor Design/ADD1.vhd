----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:41:55 04/30/2018 
-- Design Name: 
-- Module Name:    ADD1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD1 is
    Port ( I_ADD1_A : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ADD1_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD1;

architecture Behavioral of ADD1 is

signal ADD1_Out_temp: std_logic_vector(31 downto 0);

begin

O_ADD1_Out <= ADD1_Out_temp;

	ADD1_Process: process (I_ADD1_A)
	variable temp1: unsigned(31 downto 0);
	variable temp2: unsigned(31 downto 0);
	begin
	
		temp1:= unsigned(I_ADD1_A);
		temp2:= temp1 + 4;
		ADD1_Out_temp <= std_logic_vector(temp2);
		
	end process;
end Behavioral;

