-- Testbench ?????? ???????????
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_ha IS
END test_ha;

ARCHITECTURE test_b OF test_ha IS
SIGNAL A1, B1, C1, S1 : bit;

-- ha.vhd
COMPONENT ha IS
  PORT(
        a, b : IN bit;
        c, s : OUT bit);
END COMPONENT;

BEGIN
M1: ha PORT MAP (a => A1, b => B1, c => C1, s => S1);
PROCESS
BEGIN
      A1 <= '0'; B1 <= '0'; wait for 20 ps;
      A1 <= '0'; B1 <= '1'; wait for 20 ps;
      A1 <= '1'; B1 <= '0'; wait for 20 ps;
      A1 <= '1'; B1 <= '1'; wait for 20 ps;
END PROCESS;
END test_b;

