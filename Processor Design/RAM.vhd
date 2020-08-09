----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:30 04/25/2018 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity RAM is
    Port ( I_RAM_EN : in  STD_LOGIC;
           I_RAM_RE : in  STD_LOGIC;
           I_RAM_WE : in  STD_LOGIC;
           I_RAM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           I_RAM_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           O_RAM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is
signal temp_ram_data: std_logic_vector(31 downto 0);
constant base_lower_bound: integer := 8192;
constant upper_bound :integer := 8447;
type buff_RAM is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
signal RAM : buff_RAM;
signal indentifier : integer := 0;

impure function init_ram(FileName : in string) return buff_RAM is
	file fp: text;
	variable fstatus: FILE_OPEN_STATUS;
	variable count3: integer := 0;
	variable temp_ram : buff_RAM := (others => x"00");
	variable line_cache : line;
	variable byte_cache : bit_vector (31 downto 0) := x"00000000" ;
	
	begin 
		file_open(fstatus ,fp, FileName, read_mode);
		if fstatus = STATUS_ERROR or fstatus = MODE_ERROR or fstatus = NAME_ERROR then
			return temp_ram;
		else
			while (not(endfile(fp))) loop
				readline(fp, line_cache);
				read(line_cache, byte_cache);
				temp_ram(count3) := to_stdlogicvector(byte_cache(31 downto 24));
				count3 := count3 + 1;
				temp_ram(count3) := to_stdlogicvector(byte_cache(23 downto 16));
				count3 := count3 + 1;
				temp_ram(count3) := to_stdlogicvector(byte_cache(15 downto 8));
				count3 := count3 + 1;
				temp_ram(count3) := to_stdlogicvector(byte_cache(7 downto 0));
				count3 := count3 + 1;
			end loop;
		end if;
		file_close(fp);
		return temp_ram;
	end function;
begin

O_RAM_DATA <= temp_ram_data;

	RAM_Process: process(I_RAM_EN, I_RAM_RE, I_RAM_WE, I_RAM_ADDR, I_RAM_DATA)
	variable temp1: integer;
	variable temp_addr: integer;
	begin
	if indentifier = 0 then
		RAM <= init_ram ("init.txt");
	end if;
	indentifier <= 1;
	if I_RAM_EN = '1' then
		temp1 := to_integer(unsigned(I_RAM_ADDR));
		temp_addr := temp1;
		
		if (temp1 >= base_lower_bound) and (temp1 <= upper_bound) then
		
			if I_RAM_RE = '1' then
				while (temp_addr mod 4 /= 0) loop
					temp_addr := temp_addr - 1;
				end loop;
				temp_addr := temp_addr - base_lower_bound;
				temp_ram_data (7 downto 0) <= RAM(temp_addr + 3); 
				temp_ram_data (15 downto 8) <= RAM(temp_addr + 2);
				temp_ram_data (23 downto 16) <= RAM(temp_addr + 1);
				temp_ram_data (31 downto 24) <= RAM(temp_addr);
			end if;
			
			temp_addr := temp1;
			
			if I_RAM_WE = '1' then
				while (temp_addr mod 4 /= 0) loop
					temp_addr := temp_addr - 1;
				end loop;
				temp_addr := temp_addr - base_lower_bound;
				RAM(temp_addr + 3) <= I_RAM_DATA (7 downto 0);
				RAM(temp_addr + 2) <= I_RAM_DATA (15 downto 8);
			   RAM(temp_addr + 1) <= I_RAM_DATA (23 downto 16);
				RAM(temp_addr) <= I_RAM_DATA (31 downto 24);
				
			end if;
			
		end if;
		
	end if;
	
	end process;
	
	
end Behavioral;

