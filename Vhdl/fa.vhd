-- ??????? ??????? ????????
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fa is
    PORT(
      A, B, Cin   : IN bit;
      S, Cout     : OUT bit);
END fa;

ARCHITECTURE dataflow OF fa IS
SIGNAL xor_AB     : bit;
SIGNAL and_AB     : bit;
SIGNAL and_xorAB_Cin : bit;
BEGIN
  xor_AB <= A XOR B;
  S <= xor_AB XOR Cin;
  and_AB <= A AND B;
  and_xorAB_Cin <= xor_AB AND Cin;
  Cout <= and_AB OR and_xorAB_Cin;
END dataflow;