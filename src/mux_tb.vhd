-- Testbench Multiplexer 2-to-1 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_mux IS
END test_mux;

ARCHITECTURE test_b OF test_mux IS
SIGNAL A1, B1, S1, C1: bit;

-- mux_1.vhd
COMPONENT mux2to1 IS 
    PORT(
      a, b, s : IN bit; 
      c       : OUT bit);
END COMPONENT;

BEGIN 
M1: mux2to1 PORT MAP (a => A1, b => B1, s => s1, c => c1);
PROCESS
BEGIN
    A1 <= '1'; B1 <= '0'; S1 <= '1'; wait for 20 ps;
    A1 <= '1'; B1 <= '0'; S1 <= '0'; wait for 20 ps;
END PROCESS;
END test_b;