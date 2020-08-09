----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:53 04/30/2018 
-- Design Name: 
-- Module Name:    EXT - Behavioral 
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

entity EXT is
    Port ( I_EXT_16 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_EXT_32 : out  STD_LOGIC_VECTOR (31 downto 0));
end EXT;

architecture Behavioral of EXT is

signal O_EXT_temp : std_logic_vector(31 downto 0);

begin
O_EXT_32 <= O_EXT_temp;

	EXT_mod: process(I_EXT_16)
	begin
		if I_EXT_16(15) = '1' then
			O_EXT_temp (15 downto 0) <= I_EXT_16;
			O_EXT_temp (31 downto 16) <= (others => '1');
		end if;
		
		if I_EXT_16(15) = '0' then
			O_EXT_temp (15 downto 0) <= I_EXT_16;
			O_EXT_temp (31 downto 16) <= (others => '0');
		end if;
		
	end process;

end Behavioral;

