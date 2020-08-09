----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:30:47 05/01/2018 
-- Design Name: 
-- Module Name:    shift_left_2 - Behavioral 
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

entity shift_left_2 is
    Port ( I_SHIFT_LEFT_2 : in  STD_LOGIC_VECTOR (31 downto 0);
           O_SHIFT_LEFT_2 : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_left_2;

architecture Behavioral of shift_left_2 is

signal shift_left_temp: std_logic_vector(31 downto 0);

begin

O_SHIFT_LEFT_2 <= shift_left_temp;

	shift_left_Process: process(I_SHIFT_LEFT_2)
	begin
		shift_left_temp(31 downto 2) <= I_SHIFT_LEFT_2 (29 downto 0);
		shift_left_temp(1 downto 0) <= (others => '0');
	end process;

end Behavioral;

