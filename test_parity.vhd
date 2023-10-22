library IEEE;
use IEEE.STD_LOGIC_1164.All;
entity testparity is
end testparity;

architecture beh of testparity is
  SIGNAL DataIn_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL ParityBit_tb : STD_LOGIC;
  begin
    uut: entity work.ParityGenerator port map(DataIn_tb,ParityBit_tb);
    DataIn_tb<="0000" after 0ns, "0001" after 10ns, "0010" after 20ns, "0011" after 30ns, "0101" after 40ns, "1100" after 50ns, "1110" after 60ns, "1000" after 70ns, "0111" after 80ns, "1111" after 90ns;
  end beh;