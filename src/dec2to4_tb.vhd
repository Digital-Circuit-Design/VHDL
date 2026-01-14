-- Testbench Decoder 2-to-4 with Permission

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY test_dec2to4 IS
END test_dec2to4;

ARCHITECTURE test_b OF test_dec2to4 IS
SIGNAL A1     : std_logic_vector(2 DOWNTO 1);
SIGNAL EN     : std_logic;
SIGNAL D1     : std_logic_vector(4 DOWNTO 1);

-- dec2to4.vhd
COMPONENT dec2to4 IS 
    PORT(
          a   : IN std_logic_vector(2 downto 1); 
          en  : IN std_logic;
          d   : OUT std_logic_vector(4 downto 1)); 
END COMPONENT;

BEGIN
M1: dec2to4 PORT MAP (a => A1, en => EN, d => D1);
PROCESS
BEGIN
        A1 <= "00"; EN <= '1'; wait for 20 ps;
        A1 <= "01"; EN <= '1'; wait for 20 ps;
        A1 <= "10"; EN <= '1'; wait for 20 ps;
        A1 <= "11"; EN <= '1'; wait for 20 ps;
        A1 <= "00"; EN <= '0'; wait for 20 ps;
        A1 <= "01"; EN <= '0'; wait for 20 ps;
        A1 <= "10"; EN <= '0'; wait for 20 ps;
        A1 <= "11"; EN <= '0'; wait for 20 ps;
END PROCESS;
END test_b;
