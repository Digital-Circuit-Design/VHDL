-- Decoder 2-to-4 with Permission

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec2to4 IS 
    PORT(
          a   : IN std_logic_vector(2 DOWNTO 1);
          en  : IN std_logic;
          d   : OUT std_logic_vector(4 DOWNTO 1));
END dec2to4;

ARCHITECTURE dataflow OF dec2to4 IS
SIGNAL en_a   : std_logic_vector(3 DOWNTO 1); 
BEGIN
  en_a <= en & a;
  WITH en_a SELECT
    d <= "0001" WHEN "100",
     	   "0010" WHEN "101",
     	   "0100" WHEN "110",
     	   "1000" WHEN "111",
     	   "0000" WHEN OTHERS;
END dataflow;