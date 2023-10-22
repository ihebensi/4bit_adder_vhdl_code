library IEEE;
use IEEE.STD_LOGIC_1164.All;

ENTITY ParityGenerator IS
port(
DataIn: in std_logic_vector(3 downto 0);
ParityBit: out std_logic
);
END ParityGenerator ;

architecture behaviour of ParityGenerator is 
signal paritycal : std_logic;
begin
  paritycal<=DataIn(3) xor (DataIn(2) xor (DataIn(1) xor DataIn(0)));
  ParityBit<=paritycal;
end architecture behaviour;