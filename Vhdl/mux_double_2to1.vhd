-- ??????? ?????????? 2-??-1
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_double_2to1 IS 
    PORT(
          a, b  : IN std_logic_vector(2 downto 0);
          s     : IN std_logic;
          d     : OUT std_logic_vector(2 downto 0));
END mux_double_2to1;

ARCHITECTURE dataflow OF mux_double_2to1 IS 
BEGIN
    d <= a WHEN s = '1' ELSE b;
END dataflow;