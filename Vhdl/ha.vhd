-- ??????? ???????????
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ha is
    PORT(
      A, B  : IN bit;
      S, C  : OUT bit);
END ha;

ARCHITECTURE dataflow OF ha IS
BEGIN
  S <= A XOR B;
  C <= A AND B;
END dataflow;