----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:57 05/01/2018 
-- Design Name: 
-- Module Name:    JUMP - Behavioral 
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

entity JUMP is
    Port ( I_JUMP_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           I_JUMP_SHIFT_INST : in  STD_LOGIC_VECTOR (31 downto 0);
           O_JUMP_ADDR : out  STD_LOGIC_VECTOR (31 downto 0));
end JUMP;

architecture Behavioral of JUMP is

signal jump_temp : std_logic_vector(31 downto 0);

begin
O_JUMP_ADDR <= jump_temp;

	JUMP_Process: process(I_JUMP_PC, I_JUMP_SHIFT_INST)
	begin
		jump_temp(31 downto 28) <= I_JUMP_PC (31 downto 28);
		jump_temp(27 downto 0) <= I_JUMP_SHIFT_INST(27 downto 0);
	end process;

end Behavioral;

