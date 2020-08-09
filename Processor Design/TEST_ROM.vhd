--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:57 04/28/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab5/MIPS_Processor/TEST_ROM.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY TEST_ROM IS
END TEST_ROM;
 
ARCHITECTURE behavior OF TEST_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         I_ROM_EN : IN  std_logic;
         I_ROM_ADDR : IN  std_logic_vector(31 downto 0);
         O_ROM_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ROM_EN : std_logic := '0';
   signal I_ROM_ADDR : std_logic_vector(31 downto 0);

 	--Outputs
   signal O_ROM_DATA : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          I_ROM_EN => I_ROM_EN,
          I_ROM_ADDR => I_ROM_ADDR,
          O_ROM_DATA => O_ROM_DATA
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		I_ROM_ADDR <= x"00000000"; 
		I_ROM_EN <= '1';
		
		wait for 20 ns;
		I_ROM_ADDR <= x"00000008";
		
		wait for 20 ns;
		I_ROM_ADDR <= x"00000100";
		
		wait for 20 ns;
		I_ROM_ADDR <= x"000000FC";
		
		wait for 20 ns;
		I_ROM_ADDR <= x"00000004";
		
		wait for 20 ns;
		I_ROM_EN <= '0';
		I_ROM_ADDR <= x"00000020";
		
		wait for 20 ns;
		I_ROM_EN <= '1';
		I_ROM_ADDR <= x"00000040";
      wait;
   end process;

END;
