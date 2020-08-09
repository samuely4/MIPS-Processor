----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:08 04/09/2018 
-- Design Name: 
-- Module Name:    ACU - Behavioral 
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

entity ACU is
    Port ( I_ACU_ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           I_ACU_Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           O_ACU_CTL : out  STD_LOGIC_VECTOR (3 downto 0));
end ACU;

architecture Behavioral of ACU is

begin

process (I_ACU_ALUOp, I_ACU_Funct)
begin
	
	--for lw, sw, addi, addiu and j type instructions
	if I_ACU_ALUOp = "00" then
		O_ACU_CTL <= "0010";
	end if;
	
	--for bne, beq instructions
	if I_ACU_ALUOp = "01" then
		O_ACU_CTL <= "0110";
	end if;
	
	--for R-type instructions
	if I_ACU_ALUOp = "10" then
		--for add instruction
		if I_ACU_Funct = "100000" then
		   O_ACU_CTL <= "0010";
		end if;
		--for sub instruction
		if I_ACU_Funct = "100010" then
		   O_ACU_CTL <= "0110";
		end if;
		--for AND instruction
		if I_ACU_Funct = "100100" then
		   O_ACU_CTL <= "0000";
		end if;
		--for OR instruction
		if I_ACU_Funct = "100101" then
		   O_ACU_CTL <= "0001";
		end if;
		--for slt instruction
		if I_ACU_Funct = "101010" then
		   O_ACU_CTL <= "0111";
		end if;
		--for addu instruction
		if I_ACU_Funct = "100001" then
		   O_ACU_CTL <= "0010";
		end if;
	end if;

end process;


end Behavioral;

