--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:50:04 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_SHIFT_LEFT_2.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_left_2
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
 
ENTITY TEST_SHIFT_LEFT_2 IS
END TEST_SHIFT_LEFT_2;
 
ARCHITECTURE behavior OF TEST_SHIFT_LEFT_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_left_2
    PORT(
         I_SHIFT_LEFT_2 : IN  std_logic_vector(31 downto 0);
         O_SHIFT_LEFT_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_SHIFT_LEFT_2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_SHIFT_LEFT_2 : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_left_2 PORT MAP (
          I_SHIFT_LEFT_2 => I_SHIFT_LEFT_2,
          O_SHIFT_LEFT_2 => O_SHIFT_LEFT_2
        );



   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		I_SHIFT_LEFT_2 <= x"fec9461a";
		wait for 100 ns;
		I_SHIFT_LEFT_2 <= x"87abe091";
		wait for 100 ns;
		I_SHIFT_LEFT_2 <= x"45fc12ab";
		wait for 100 ns;

      wait;
   end process;

END;
