--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:30:06 05/06/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab7/MIPS_Processor/TEST_ALU.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY TEST_ALU IS
END TEST_ALU;
 
ARCHITECTURE behavior OF TEST_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         I_ALU_EN : IN  std_logic;
         I_ALU_CTL : IN  std_logic_vector(3 downto 0);
         I_ALU_A : IN  std_logic_vector(31 downto 0);
         I_ALU_B : IN  std_logic_vector(31 downto 0);
         O_ALU_Out : OUT  std_logic_vector(31 downto 0);
         O_ALU_Zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_ALU_EN : std_logic := '0';
   signal I_ALU_CTL : std_logic_vector(3 downto 0) := (others => '0');
   signal I_ALU_A : std_logic_vector(31 downto 0) := (others => '0');
   signal I_ALU_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ALU_Out : std_logic_vector(31 downto 0);
   signal O_ALU_Zero : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          I_ALU_EN => I_ALU_EN,
          I_ALU_CTL => I_ALU_CTL,
          I_ALU_A => I_ALU_A,
          I_ALU_B => I_ALU_B,
          O_ALU_Out => O_ALU_Out,
          O_ALU_Zero => O_ALU_Zero
        );

   -- Stimulus process
   stim_proc: process
   begin		
	I_ALU_EN <= '0';
	--test addition
	wait for 100 ns;
	I_ALU_EN <= '1';
	I_ALU_CTL <= "0010";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000002";
	--test subtraction
	wait for 100 ns;
	I_ALU_CTL <= "0110";
	I_ALU_A <= x"00000002";
	I_ALU_B <= x"00000002";
	--test subtraction of slt
	wait for 100 ns;
	I_ALU_CTL <= "0111";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000002";
	--test and
	wait for 100 ns;
	I_ALU_CTL <= "0000";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000003";
	--test or
	wait for 100 ns;
	I_ALU_CTL <= "0001";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000002";
	--test unfunctionality
	wait for 100 ns;
	I_ALU_CTL <= "1111";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000002";
	--test disable
	wait for 100 ns;
	I_ALU_EN <= '0';
	I_ALU_CTL <= "0010";
	I_ALU_A <= x"00000001";
	I_ALU_B <= x"00000002";
	
	
	

      wait;
   end process;

END;
