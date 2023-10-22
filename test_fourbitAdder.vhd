library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity testFourAdder is
end testFourAdder;

architecture bh of testFourAdder is
  signal A_tb,B_tb,S_tb: STD_LOGIC_VECTOR(3 downto 0);
  signal Cout_tb: std_logic;
  begin
    dut: entity work.FourBitAdder port map(A_tb,B_tb,S_tb,Cout_tb);
    
    A_tb <= "0000" after 0 ns, "1011" after 10 ns, "0011" after 100 ns, "1011" after 200 ns, "1101" after 300 ns;
    B_tb <= "0000" after 0 ns, "1010" after 10 ns, "1100" after 100 ns, "0010" after 200 ns, "0011" after 300 ns;
end bh;