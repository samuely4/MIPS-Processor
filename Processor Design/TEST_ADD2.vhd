--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:55:09 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_ADD2.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD2
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
 
ENTITY TEST_ADD2 IS
END TEST_ADD2;
 
ARCHITECTURE behavior OF TEST_ADD2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD2
    PORT(
         I_ADD2_A : IN  std_logic_vector(31 downto 0);
         I_ADD2_B : IN  std_logic_vector(31 downto 0);
         O_ADD2_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADD2_A : std_logic_vector(31 downto 0) := (others => '0');
   signal I_ADD2_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ADD2_Out : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD2 PORT MAP (
          I_ADD2_A => I_ADD2_A,
          I_ADD2_B => I_ADD2_B,
          O_ADD2_Out => O_ADD2_Out
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 20 ns;
	  I_ADD2_A <= x"00000001";
	  I_ADD2_B <= x"00000004";
	  wait for 100 ns;
	  
	  I_ADD2_A <= x"00000009";
	  I_ADD2_B <= x"00000005";
      wait;
   end process;

END;
