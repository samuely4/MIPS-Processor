----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:49 04/25/2018 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
 
entity ROM is
    Port ( I_ROM_EN : in  STD_LOGIC;
           I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

constant lower_bound: integer := 0;
constant upper_bound: integer := 255;
signal temp_rom_data : std_logic_vector (31 downto 0) ; 
type buff_ROM is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
signal ROM : buff_ROM;
signal indentifier: integer := 0;


impure function init_rom(FileName : in string) return buff_ROM is
	file fp: text;
	variable fstatus: FILE_OPEN_STATUS;
	variable count3: integer := 0;
	variable temp_rom : buff_ROM := (others => x"00");
	variable line_cache : line;
	variable byte_cache : bit_vector (31 downto 0) := x"00000000" ;
	
	begin 
		file_open(fstatus ,fp, FileName, read_mode);
		if fstatus = STATUS_ERROR or fstatus = MODE_ERROR or fstatus = NAME_ERROR then
			return temp_rom;
		else
			while (not(endfile(fp))) loop
				readline(fp, line_cache);
				read(line_cache, byte_cache);
				temp_rom(count3) := to_stdlogicvector(byte_cache(31 downto 24));
				count3 := count3 + 1;
				temp_rom(count3) := to_stdlogicvector(byte_cache(23 downto 16));
				count3 := count3 + 1;
				temp_rom(count3) := to_stdlogicvector(byte_cache(15 downto 8));
				count3 := count3 + 1;
				temp_rom(count3) := to_stdlogicvector(byte_cache(7 downto 0));
				count3 := count3 + 1;
			end loop;
		end if;
		file_close(fp);
		return temp_rom;
	end function;


begin
	O_ROM_DATA <= temp_rom_data;
	
	ROM_Process: process (I_ROM_EN, I_ROM_ADDR)
	
	variable temp_addr : integer;
	
	begin
	if indentifier = 0 then
		ROM <= init_rom("Fibonacci.bin");
	end if;
	indentifier <= 1;
	if I_ROM_EN = '1' then
		temp_addr := to_integer(unsigned(I_ROM_ADDR));
		if temp_addr >= lower_bound and temp_addr <= upper_bound then
		
			while (temp_addr mod 4 /= 0) loop
				temp_addr := temp_addr - 1;
			end loop;
				temp_rom_data (7 downto 0) <= ROM(temp_addr + 3); 
				temp_rom_data (15 downto 8) <= ROM(temp_addr + 2);
				temp_rom_data (23 downto 16) <= ROM(temp_addr + 1);
				temp_rom_data (31 downto 24) <= ROM(temp_addr);
		end if;
	end if;
	
	end process;

end Behavioral;

