----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:24 05/02/2018 
-- Design Name: 
-- Module Name:    MUX5 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX5 is
    Port ( I_MUX_0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I_MUX_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           I_MUX_SEL : in  STD_LOGIC;
           O_MUX_Out : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX5;

architecture Behavioral of MUX5 is

signal MUX_Out_temp: std_logic_vector(4 downto 0);
   
begin
 
O_MUX_Out <= MUX_Out_temp;

	MUX5_Process : process(I_MUX_0, I_MUX_1, I_MUX_SEL)
	begin
		if I_MUX_SEL = '0' then
			MUX_Out_temp <= I_MUX_0;
		end if;
		
		if I_MUX_SEL = '1' then
			MUX_Out_temp <= I_MUX_1;
		end if;

	end process;
end Behavioral;