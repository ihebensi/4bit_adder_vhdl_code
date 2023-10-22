library ieee ;
use ieee.std_logic_1164.all;
use work.all;

entity counter is
port(
  d: in std_logic_vector(range 0 to 2);
  clock:in std_logic;
  q:out std_logic_vector(range 0 to 2);
  qbar:out std_logic_vector(range 0 to 2);
  
);
end counter;
architecture counterbehv of counter is
  signal d1,d2,d3,q1,q2,q3,clock,q1_b,q2_b,q3_b,rst: std_logic;
  begin
    bascule1: entity work.basculeD port map(d(0),clock,rst,q(0),qbar(0));
    xor1: entity work.XOR_ent port map(q(0),q(1),d(1));
    
    bascule2: entity work.basculeD port map(d(1),clock,rst,q(1),qbar(0));
    
end counterbehv;