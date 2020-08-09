--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:58:44 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_ADD1.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD1
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
 
ENTITY TEST_ADD1 IS
END TEST_ADD1;
 
ARCHITECTURE behavior OF TEST_ADD1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD1
    PORT(
         I_ADD1_A : IN  std_logic_vector(31 downto 0);
         O_ADD1_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADD1_A : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ADD1_Out : std_logic_vector(31 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD1 PORT MAP (
          I_ADD1_A => I_ADD1_A,
          O_ADD1_Out => O_ADD1_Out
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		I_ADD1_A <= x"00000001";
		wait for 100 ns;
		I_ADD1_A <= x"00000005";
		wait for 100 ns;
		I_ADD1_A <= x"fc054307";
      wait;
   end process;

END;
