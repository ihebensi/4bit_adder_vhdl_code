library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity onebitADDER is
port(
  a: in std_logic;
  b: in std_logic;
  cin: in std_logic;
  s: out std_logic;
  cout: out std_logic
);
end onebitADDER;

architecture behavioral of onebitADDER is
  signal aux1 : std_logic;
  begin
    aux1<= a xor b;
    s<= aux1 xor cin;
    cout<= (cin and(b or a)) or (a and b);
  end architecture behavioral;