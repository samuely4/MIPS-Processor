----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:02 05/01/2018 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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
use work.Processor_Pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( I_FSM_CLK : in  STD_LOGIC;
           I_FSM_EN : in  STD_LOGIC;
           I_FSM_INST : in  STD_LOGIC_VECTOR (31 downto 0);
           O_FSM_IF : out  STD_LOGIC;
           O_FSM_ID : out  STD_LOGIC;
           O_FSM_EX : out  STD_LOGIC;
           O_FSM_ME : out  STD_LOGIC;
           O_FSM_WB : out  STD_LOGIC);
end FSM;

architecture Behavioral of FSM is
signal state: ProcessorState:= INITIAL;
signal identifier : integer := 0;
begin

	FSM: process(I_FSM_CLK)
	begin
		if rising_edge(I_FSM_CLK) then
			if I_FSM_EN = '1' then
				if I_FSM_INST (5 downto 0) /= "001100" then
							if state = INITIAL then state <= FETCH; identifier <= 1; 
							elsif state = FETCH  then state <= DECODE;
							elsif state = DECODE  then state <= EXECUTE;
							elsif state = EXECUTE  then state <= MEMORY; 
							elsif state = MEMORY  then state <= WRITE_BACK;
							elsif state = WRITE_BACK and identifier <= 1 then state <= FETCH;
							--else state <= STOP;
							end if; 
				else
					state <= STOP; 
				end if;
			else
				if state = INITIAL then state <= INITIAL;
				else state <= STOP; 
				end if;
			end if;
		end if;
	end process; 
	
	stateFSM: process(state)
	begin
		if state = FETCH then
			O_FSM_IF <= '1'; O_FSM_ID <= '0'; O_FSM_EX <= '0'; O_FSM_ME <= '0'; O_FSM_WB <= '0';
		elsif state = DECODE then
			O_FSM_IF <= '0'; O_FSM_ID <= '1'; O_FSM_EX <= '0'; O_FSM_ME <= '0'; O_FSM_WB <= '0';
		elsif state = EXECUTE then
			O_FSM_IF <= '0'; O_FSM_ID <= '0'; O_FSM_EX <= '1'; O_FSM_ME <= '0'; O_FSM_WB <= '0';
		elsif state = MEMORY then
			O_FSM_IF <= '0'; O_FSM_ID <= '0'; O_FSM_EX <= '0'; O_FSM_ME <= '1'; O_FSM_WB <= '0';
		elsif state = WRITE_BACK then
			O_FSM_IF <= '0'; O_FSM_ID <= '0'; O_FSM_EX <= '0'; O_FSM_ME <= '0'; O_FSM_WB <= '1';
		else
			O_FSM_IF <= '0'; O_FSM_ID <= '0'; O_FSM_EX <= '0'; O_FSM_ME <= '0'; O_FSM_WB <= '0';
		end if;
	end process;

end Behavioral;

