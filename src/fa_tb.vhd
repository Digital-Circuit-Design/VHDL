-- Testbench Full Adder

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_fa IS
END test_fa;

ARCHITECTURE test_b OF test_fa IS
SIGNAL A1, B1, Cin1, Cout1, S1 : bit;

-- fa.vhd
COMPONENT fa IS
  PORT(
        a, b, cin : IN bit;
        cout, s   : OUT bit);
END COMPONENT;

BEGIN
M1: fa PORT MAP (a => A1, b => B1, cin => Cin1, cout => Cout1, s => S1);
PROCESS
BEGIN
      A1 <= '0'; B1 <= '0'; Cin1 <= '0'; wait for 20 ps;
      A1 <= '0'; B1 <= '0'; Cin1 <= '1'; wait for 20 ps;
      A1 <= '0'; B1 <= '1'; Cin1 <= '0'; wait for 20 ps;
      A1 <= '0'; B1 <= '1'; Cin1 <= '1'; wait for 20 ps;
      A1 <= '0'; B1 <= '1'; Cin1 <= '1'; wait for 20 ps;
      A1 <= '1'; B1 <= '0'; Cin1 <= '0'; wait for 20 ps;
      A1 <= '1'; B1 <= '0'; Cin1 <= '1'; wait for 20 ps;
      A1 <= '1'; B1 <= '1'; Cin1 <= '0'; wait for 20 ps;
      A1 <= '1'; B1 <= '1'; Cin1 <= '1'; wait for 20 ps;
END PROCESS;
END test_b;