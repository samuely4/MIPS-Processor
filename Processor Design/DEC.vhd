----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:49 04/09/2018 
-- Design Name: 
-- Module Name:    DEC - Behavioral 
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

entity DEC is
    Port ( I_DEC_EN : in  STD_LOGIC;
           I_DEC_Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           O_DEC_RegDst : out  STD_LOGIC;
           O_DEC_Jump : out  STD_LOGIC;
           O_DEC_Beq : out  STD_LOGIC;
           O_DEC_Bne : out  STD_LOGIC;
           O_DEC_MemRead : out  STD_LOGIC;
           O_DEC_MemtoReg : out  STD_LOGIC;
           O_DEC_ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           O_DEC_MemWrite : out  STD_LOGIC;
           O_DEC_ALUSrc : out  STD_LOGIC;
           O_DEC_RegWrite : out  STD_LOGIC);
end DEC;

architecture Behavioral of DEC is
signal O_DEC_RegDst_temp: std_logic;
signal O_DEC_Jump_temp : std_logic;
signal O_DEC_Beq_temp : std_logic;
signal O_DEC_Bne_temp : std_logic;
signal O_DEC_MemRead_temp: std_logic;
signal O_DEC_MemtoReg_temp: std_logic;
signal O_DEC_ALUOp_temp: std_logic_vector(1 downto 0);
signal O_DEC_MemWrite_temp : std_logic;
signal O_DEC_ALUSrc_temp : std_logic;
signal O_DEC_RegWrite_temp : std_logic;

begin
O_DEC_RegDst <= O_DEC_RegDst_temp;
O_DEC_Jump <= O_DEC_Jump_temp;
O_DEC_Beq <= O_DEC_Beq_temp;
O_DEC_Bne <= O_DEC_Bne_temp;
O_DEC_MemRead <= O_DEC_MemRead_temp;
O_DEC_MemtoReg <= O_DEC_MemtoReg_temp;
O_DEC_ALUOp <= O_DEC_ALUOp_temp;
O_DEC_MemWrite <= O_DEC_MemWrite_temp;
O_DEC_ALUSrc <= O_DEC_ALUSrc_temp;
O_DEC_RegWrite  <= O_DEC_RegWrite_temp;
process (I_DEC_EN , I_DEC_Opcode)
begin

	if I_DEC_EN = '1' then
		
		--for lw instruction
		if I_DEC_Opcode = "100011" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp <= '0';
		  O_DEC_Bne_temp <= '0';
		  O_DEC_MemRead_temp <= '1';
		  O_DEC_MemtoReg_temp <= '1';
		  O_DEC_AluOp_temp <= "00";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '1';
		  O_DEC_RegWrite_temp <= '1';
		end if;
		
		--for sw instruction
		if I_DEC_Opcode = "101011" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp<= '0';
		  O_DEC_Bne_temp <= '0';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "00";
		  O_DEC_MemWrite_temp <= '1';
		  O_DEC_ALUSrc_temp <= '1';
		  O_DEC_RegWrite_temp <= '0';
		end if;
		
		--for beq instruction 
		if I_DEC_Opcode = "000100" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp <= '1';
		  O_DEC_Bne_temp<= '0';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "01";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '0';
		  O_DEC_RegWrite_temp <= '0';
		end if;
		
		--for bne instruction
		if I_DEC_Opcode = "000101" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp <= '0';
		  O_DEC_Bne_temp <= '1';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "01";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '0';
		  O_DEC_RegWrite_temp <= '0';
		end if;
		
		--for R-type instructions
		if I_DEC_Opcode = "000000" then
		  O_DEC_RegDst_temp <= '1';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp <= '0';
		  O_DEC_Bne_temp <= '0';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "10";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '0';
		  O_DEC_RegWrite_temp <= '1';
		end if;
		
		--for i-type (addi, addiu respectivly) instructions
		if I_DEC_Opcode = "001000" or I_DEC_Opcode = "001001" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '0';
		  O_DEC_Beq_temp <= '0';
		  O_DEC_Bne_temp <= '0';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "00";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '1';
		  O_DEC_RegWrite_temp <= '1';
		end if;
		
		--for j-type instructions
		if I_DEC_Opcode = "000010" then
		  O_DEC_RegDst_temp <= '0';
		  O_DEC_Jump_temp <= '1';
		  O_DEC_Beq_temp <= '0';
		  O_DEC_Bne_temp <= '0';
		  O_DEC_MemRead_temp <= '0';
		  O_DEC_MemtoReg_temp <= '0';
		  O_DEC_AluOp_temp <= "00";
		  O_DEC_MemWrite_temp <= '0';
		  O_DEC_ALUSrc_temp <= '1';
		  O_DEC_RegWrite_temp <= '0';
		end if;
  end if;
end process;

end Behavioral;

