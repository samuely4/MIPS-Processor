----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:06:48 04/30/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( I_ALU_EN : in  STD_LOGIC;
           I_ALU_CTL : in  STD_LOGIC_VECTOR (3 downto 0);
           I_ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal Alu_Zero_temp: std_logic := '0';
signal Alu_Out_temp : std_logic_vector (31 downto 0) := (others => '0');

begin
O_ALU_Zero <= Alu_Zero_temp;
O_ALU_Out <= Alu_Out_temp;

	AluProcess: process (I_ALU_EN)
	variable temp1: unsigned(31 downto 0);
	variable temp2: unsigned(31 downto 0);
	variable temp3: unsigned(31 downto 0);
	begin 
		if I_ALU_EN = '1' then
			temp1 := unsigned(I_ALU_A);
			temp2 := unsigned(I_ALU_B);
			if I_ALU_CTL = "0010" then
				temp3 := temp1 + temp2;
				Alu_Out_temp <= std_logic_vector(temp3);
			end if;
			
			if I_ALU_CTL = "0110" or I_ALU_CTL = "0111" then
				temp3 := temp1 - temp2;
				Alu_Out_temp <= std_logic_vector(temp3);
				if temp3 = 0 then
					Alu_Zero_temp <= '1';
				else
					ALU_Zero_temp <= '0';
				end if;
			end if;
			
			if I_ALU_CTL = "0000" then
				Alu_Out_temp <= I_ALU_A and I_ALU_B;
			end if;
			
			if I_ALU_CTL = "0001" then
				Alu_Out_temp <= I_ALU_A or I_ALU_B;
			end if;
			
		end if;
	
	end process;

end Behavioral;

