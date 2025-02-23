-- ??????? ???????? 4 bit
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY adder4 IS
    PORT(
          Cin   : IN std_logic;
          X, Y  : IN std_logic_vector(3 DOWNTO 0);
          S     : OUT std_logic_vector(3 DOWNTO 0);
          Cout  : OUT std_logic);
END adder4;

ARCHITECTURE dataflow OF adder4 IS
SIGNAL Sum : std_logic_vector(4 DOWNTO 0);
BEGIN
  Sum <= ('1' & X) + Y + Cin;
  S <= Sum(3 DOWNTO 0);
  Cout <= Sum(4);
END dataflow;
