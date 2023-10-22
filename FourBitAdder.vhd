library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity FourBitAdder is
port(
  A, B: in std_logic_vector(3  downto 0);
  S: out std_logic_vector(3 downto 0);
  Cout: out std_logic
);
end FourBitAdder;

architecture add of FourBitAdder is
  signal ci,c0,c1,c2: std_logic;
  begin
    ci<='0';
    onebitadder0: entity work.onebitADDER port map(A(0),B(0),ci,S(0),c0);
    onebitadder1: entity work.onebitADDER port map(A(1),B(1),c0,S(1),c1);
    onebitadder2: entity work.onebitADDER port map(A(2),B(2),c1,S(2),c2);
    onebitadder3: entity work.onebitADDER port map(A(3),B(3),c2,S(3),Cout);
    end add;