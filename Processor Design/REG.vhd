----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:34:24 04/25/2018 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
use STD.textio.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SEL_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end REG;

architecture Behavioral of REG is
type buff_reg is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal REG : buff_reg;
signal temp_data_a : std_logic_vector (31 downto 0) ; 
signal temp_data_b : std_logic_vector (31 downto 0) ;
signal identifier: integer := 0;


impure function init_reg(FileName : in string) return buff_reg is
	file fp: text;
	variable fstatus: FILE_OPEN_STATUS;
	constant count: integer := 31;
	variable temp_reg : buff_reg := (others => x"00000000");
	variable line_cache : line;
	variable byte_cache : bit_vector (31 downto 0) := x"00000000" ;
	
	begin 
		file_open(fstatus ,fp, FileName, read_mode);
		if fstatus = STATUS_ERROR or fstatus = MODE_ERROR or fstatus = NAME_ERROR then
			return temp_reg;
		else
				for i in 0 to count loop
					readline(fp, line_cache);
					read(line_cache, byte_cache);
					temp_reg(i) := to_stdlogicvector(byte_cache);
				end loop;
		end if;
		file_close(fp);
		return temp_reg;
	end function;

begin

O_REG_DATA_A <= temp_data_a;
O_REG_DATA_B <= temp_data_b;

	REG_Process: process(I_REG_EN, I_REG_WE, I_REG_SEL_RS, I_REG_SEL_RT, I_REG_SEL_RD, I_REG_DATA_RD)
	variable temp1: integer;
	variable temp2: integer;
	variable temp3: integer;
	begin
	if identifier = 0 then
		REG <= init_reg ("init.txt");
	end if;
	identifier <= 1;
	if I_REG_EN = '1' then
		temp1:= to_integer(unsigned(I_REG_SEL_RS));
		temp2:= to_integer(unsigned(I_REG_SEL_RT));
		temp_data_a <= REG(temp1);
		temp_data_b <= REG(temp2);
	
		if I_REG_WE = '1' and I_REG_SEL_RD /= "00000" then
		temp3 := to_integer(unsigned(I_REG_SEL_RD));
		REG(temp3) <= I_REG_DATA_RD;
		end if;
	end if; 
	end process;

end Behavioral;

