-- Testbench ?????? ???????? 4-bit
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_adder4 IS
END test_adder4;

ARCHITECTURE test_b OF test_adder4 IS
SIGNAL Cin1   : std_logic;
SIGNAL X1, Y1 : std_logic_vector(3 DOWNTO 0);
SIGNAL S1     : std_logic_vector(3 DOWNTO 0);
SIGNAL Cout1  : std_logic;

-- adder4.vhd
COMPONENT adder4 IS
  PORT(
          cin   : IN std_logic;
          x, y  : IN std_logic_vector(3 DOWNTO 0);
          s     : OUT std_logic_vector(3 DOWNTO 0);
          cout  : OUT std_logic);
END COMPONENT;

BEGIN
M1: adder4 PORT MAP (x => X1, y => Y1, cin => Cin1, cout => Cout1, s => S1);
PROCESS
BEGIN
      X1 <= "0000"; Y1 <= "0000"; Cin1 <= '0'; wait for 20 ps;
      X1 <= "1111"; Y1 <= "1111"; Cin1 <= '0'; wait for 20 ps;
      X1 <= "1111"; Y1 <= "1111"; Cin1 <= '1'; wait for 20 ps;
      X1 <= "0011"; Y1 <= "0101"; Cin1 <= '0'; wait for 20 ps; -- 3 + 5
      X1 <= "0010"; Y1 <= "0011"; Cin1 <= '0'; wait for 20 ps; -- (-2) + 3
      X1 <= "1000"; Y1 <= "0111"; Cin1 <= '0'; wait for 20 ps; -- (-8) + 7
END PROCESS;
END test_b;