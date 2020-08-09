--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:20:58 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_MUX_5.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX5
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_MUX_5 IS
END TEST_MUX_5;
 
ARCHITECTURE behavior OF TEST_MUX_5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX5
    PORT(
         I_MUX_0 : IN  std_logic_vector(4 downto 0);
         I_MUX_1 : IN  std_logic_vector(4 downto 0);
         I_MUX_SEL : IN  std_logic;
         O_MUX_Out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_MUX_0 : std_logic_vector(4 downto 0) := (others => '0');
   signal I_MUX_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal I_MUX_SEL : std_logic := '0';

 	--Outputs
   signal O_MUX_Out : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX5 PORT MAP (
          I_MUX_0 => I_MUX_0,
          I_MUX_1 => I_MUX_1,
          I_MUX_SEL => I_MUX_SEL,
          O_MUX_Out => O_MUX_Out
        );



   -- Stimulus process
   stim_proc: process
   begin		
		wait for 20 ns;
		I_MUX_0 <= "00100";
		I_MUX_1 <= "11110";
		I_MUX_SEL <= '1';
		wait for 20 ns;
		
		I_MUX_0 <= "01100";
		I_MUX_1 <= "10010";
		I_MUX_SEL <= '0';
		
		wait for 20 ns;
		

      wait;
   end process;

END;
