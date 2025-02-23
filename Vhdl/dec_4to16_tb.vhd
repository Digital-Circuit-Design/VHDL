-- Testbench ?????? ??????????????? 4-??-16 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_dec_4to16 IS
END test_dec_4to16;

ARCHITECTURE test_b OF test_dec_4to16 IS
SIGNAL A1     : std_logic_vector(4 DOWNTO 1);
SIGNAL D1     : std_logic_vector(16 DOWNTO 1);

-- dec_4to16.vhd
COMPONENT dec_4to16 IS 
    PORT(
          a   : IN std_logic_vector(4 DOWNTO 1); 
          d   : OUT std_logic_vector(16 downto 1)); 
END COMPONENT;

BEGIN
M1: dec_4to16 PORT MAP (a => A1, d => D1);
PROCESS
BEGIN
      A1 <= "0001"; wait for 20 ps;
      A1 <= "0010"; wait for 20 ps;
      A1 <= "0011"; wait for 20 ps;
      A1 <= "0100"; wait for 20 ps;
      A1 <= "0101"; wait for 20 ps;
      A1 <= "0110"; wait for 20 ps;
      A1 <= "0111"; wait for 20 ps;
      A1 <= "1000"; wait for 20 ps;
      A1 <= "1001"; wait for 20 ps;
      A1 <= "1010"; wait for 20 ps;
      A1 <= "1011"; wait for 20 ps;
      A1 <= "1100"; wait for 20 ps;
      A1<= "1101"; wait for 20 ps;
      A1 <="1110"; wait for 20 ps;
      A1 <= "1111"; wait for 20 ps;
END PROCESS;
END test_b;

