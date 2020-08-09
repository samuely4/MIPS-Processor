--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:39:29 05/02/2018
-- Design Name:   
-- Module Name:   H:/Documents/city college the first semester/spring 2018 semester/CSC 343/labs/lab6/MIPS_Processor/TEST_CTL.vhd
-- Project Name:  MIPS_Processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY TEST_CTL IS
END TEST_CTL;
 
ARCHITECTURE behavior OF TEST_CTL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         I_FSM_CLK : IN  std_logic;
         I_FSM_EN : IN  std_logic;
         I_FSM_INST : IN  std_logic_vector(31 downto 0);
         O_FSM_IF : OUT  std_logic;
         O_FSM_ID : OUT  std_logic;
         O_FSM_EX : OUT  std_logic;
         O_FSM_ME : OUT  std_logic;
         O_FSM_WB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_FSM_CLK : std_logic := '0';
   signal I_FSM_EN : std_logic := '0';
   signal I_FSM_INST : std_logic_vector(31 downto 0);

 	--Outputs
   signal O_FSM_IF : std_logic;
   signal O_FSM_ID : std_logic;
   signal O_FSM_EX : std_logic;
   signal O_FSM_ME : std_logic;
   signal O_FSM_WB : std_logic;

   -- Clock period definitions
   constant I_FSM_CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          I_FSM_CLK => I_FSM_CLK,
          I_FSM_EN => I_FSM_EN,
          I_FSM_INST => I_FSM_INST,
          O_FSM_IF => O_FSM_IF,
          O_FSM_ID => O_FSM_ID,
          O_FSM_EX => O_FSM_EX,
          O_FSM_ME => O_FSM_ME,
          O_FSM_WB => O_FSM_WB
        );

   -- Clock process definitions
   I_FSM_CLK_process :process
   begin
		I_FSM_CLK <= '0';
		wait for I_FSM_CLK_period/2;
		I_FSM_CLK <= '1';
		wait for I_FSM_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		 
		I_FSM_INST <= x"a858cf09";
		I_FSM_EN <= '1';
		wait for 800 ns;
		I_FSM_EN <= '0';
-- 	I_FSM_INST <= x"00000000";
--		wait for 50 ns;
--		I_FSM_INST <= x"c0f1407a";
--		wait for 50 ns;
--		I_FSM_INST <= x"c0f1407c";
--		wait for 50 ns;
--		I_FSM_INST <= x"c0f1400c";
      wait;
   end process;

END;
