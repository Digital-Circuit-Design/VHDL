-- Testbench Triple Multiplexer 2-to-1

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_mux_double_2to1 IS
END test_mux_double_2to1;

ARCHITECTURE test_b OF test_mux_double_2to1 IS
SIGNAL A1, B1, D1 : std_logic_vector(2 downto 0);
SIGNAL S1         : std_logic;

-- mux_double_2to1.vhd
COMPONENT mux_double_2to1 IS 
    PORT(
          a, b  : IN std_logic_vector(2 downto 0); 
          s     : IN std_logic; 
          d     : OUT std_logic_vector(2 downto 0));
END COMPONENT;

BEGIN 
M1: mux_double_2to1 PORT MAP (a => A1, b => B1, s => S1, d => D1);
PROCESS
BEGIN
        A1 <= "001"; B1 <= "010"; S1 <= '0'; wait for 20 ps;
        A1 <= "010"; B1 <= "100"; S1 <= '0'; wait for 20 ps;
        A1 <= "111"; B1 <= "011"; S1 <= '0'; wait for 20 ps;
        A1 <= "101"; B1 <= "111"; S1 <= '0'; wait for 20 ps;
        A1 <= "010"; B1 <= "001"; S1 <= '1'; wait for 20 ps;
        A1 <= "000"; B1 <= "101"; S1 <= '1'; wait for 20 ps;
        A1 <= "101"; B1 <= "010"; S1 <= '1'; wait for 20 ps;
        A1 <= "111"; B1 <= "101"; S1 <= '1'; wait for 20 ps;
END PROCESS;
END test_b;