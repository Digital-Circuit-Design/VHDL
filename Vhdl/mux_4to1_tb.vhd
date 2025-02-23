-- Testbench ?????? ?????????? 4-??-1 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_mux_4to1 IS
END test_mux_4to1;

ARCHITECTURE test_b OF test_mux_4to1 IS
SIGNAL A1 : std_logic_vector(4 downto 1);
SIGNAL S1 : std_logic_vector(2 downto 1);
SIGNAL D1 : std_logic;

-- mux_4to1.vhd
COMPONENT mux_4to1 IS 
    PORT(
          a : IN std_logic_vector(4 downto 1); 
          s : IN std_logic_vector(2 downto 1); 
          d : OUT std_logic);
END COMPONENT;

BEGIN 
M1: mux_4to1 PORT MAP (a => A1, s => S1, d => D1);
PROCESS
BEGIN
        A1 <= "0000"; S1 <= "00"; wait for 20 ps;
        A1 <= "0101"; S1 <= "01"; wait for 20 ps;
        A1 <= "1010"; S1 <= "10"; wait for 20 ps;
        A1 <= "1100"; S1 <= "11"; wait for 20 ps;
END PROCESS;
END test_b;
