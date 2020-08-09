----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:47 04/30/2018 
-- Design Name: 
-- Module Name:    ADD2 - Behavioral 
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

entity ADD2 is
    Port ( I_ADD2_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ADD2_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ADD2_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD2;

architecture Behavioral of ADD2 is

signal ADD2_Out_temp: std_logic_vector(31 downto 0);

begin
O_ADD2_Out <= ADD2_Out_temp;

	ADD2_Process : process(I_ADD2_A, I_ADD2_B)
	variable temp1: unsigned(31 downto 0); 
	variable temp2: unsigned(31 downto 0);
	variable temp3: unsigned(31 downto 0);
	begin
		temp1 := unsigned(I_ADD2_A);
		temp2 := unsigned(I_ADD2_B);
		temp3 := temp1 + temp2;
		ADD2_Out_temp <= std_logic_vector(temp3);
	end process;

end Behavioral;

