-- Multiplexer 4-to-1

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_4to1 IS 
    PORT(
          a  : IN std_logic_vector(4 downto 1);
          s  : IN std_logic_vector(2 downto 1);
          d  : OUT std_logic);
END mux_4to1;

ARCHITECTURE dataflow OF mux_4to1 IS 
BEGIN
  WITH s SELECT
    d <= a(1) WHEN "00",
         a(2) WHEN "01",
         a(3) WHEN "10",
         a(4) WHEN OTHERS;
END dataflow;