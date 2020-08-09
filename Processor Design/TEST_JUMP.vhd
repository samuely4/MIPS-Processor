--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:02:17 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_JUMP.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JUMP
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
 
ENTITY TEST_JUMP IS
END TEST_JUMP;
 
ARCHITECTURE behavior OF TEST_JUMP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JUMP
    PORT(
         I_JUMP_PC : IN  std_logic_vector(31 downto 0);
         I_JUMP_SHIFT_INST : IN  std_logic_vector(31 downto 0);
         O_JUMP_ADDR : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_JUMP_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal I_JUMP_SHIFT_INST : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_JUMP_ADDR : std_logic_vector(31 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JUMP PORT MAP (
          I_JUMP_PC => I_JUMP_PC,
          I_JUMP_SHIFT_INST => I_JUMP_SHIFT_INST,
          O_JUMP_ADDR => O_JUMP_ADDR
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		I_JUMP_PC <= x"12fc98a0";
		I_JUMP_SHIFT_INST <= x"987ac2b0";
		wait for 100 ns;
		I_JUMP_PC <= x"54abf65f";
		I_JUMP_SHIFT_INST <= x"12990fca";
		wait for 100 ns;
		I_JUMP_PC <= x"90546fab";
		I_JUMP_SHIFT_INST <= x"000ab321";
		wait for 100 ns;
		I_JUMP_PC <= x"720ab12c";
		I_JUMP_SHIFT_INST <= x"ab32790a";
		wait for 100 ns;
      wait;
   end process;

END;
