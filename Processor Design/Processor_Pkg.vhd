--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Processor_Pkg is

type ProcessorState is(INITIAL ,FETCH, DECODE, EXECUTE, MEMORY, WRITE_BACK, STOP);

end Processor_Pkg;

package body Processor_Pkg is
 
end Processor_Pkg;
