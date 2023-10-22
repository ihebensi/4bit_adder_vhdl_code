library IEEE;
use IEEE.STD_LOGIC_1164.All;
entity XORporte is
  port(a : in std_logic ;
      b : in std_logic ;
      c : out std_logic ) ;
end XORporte;

Architecture Arch_XOR of XORporte is
begin
c <= a xor b ;
end Arch_XOR ;