--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:43:39 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_EXT.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EXT
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
 
ENTITY TEST_EXT IS
END TEST_EXT;
 
ARCHITECTURE behavior OF TEST_EXT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EXT
    PORT(
         I_EXT_16 : IN  std_logic_vector(15 downto 0);
         O_EXT_32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_EXT_16 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_EXT_32 : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EXT PORT MAP (
          I_EXT_16 => I_EXT_16,
          O_EXT_32 => O_EXT_32
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 20 ns;
	  I_EXT_16 <= x"80e0";
	  wait for 100 ns;
	  I_EXT_16 <= x"720a";
	  wait for 100 ns;
	  I_EXT_16 <= x"f230";
	  wait for 100 ns;
	  I_EXT_16 <= x"0fdc";

      wait;
   end process;

END;
