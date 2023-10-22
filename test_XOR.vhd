library IEEE;
use IEEE.STD_LOGIC_1164.All;

ENTITY testxorab IS
END testxorab ;

ARCHITECTURE behaviour OF testxorab IS

Signal A_tb, B_tb, C_tb : std_logic ;
BEGIN
  DUT : entity work.XORporte PORT MAP ( A_tb, B_tb, C_tb );
    
  A_tb <= '0' after 0 ns, '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 50 ns;
  
   B_tb <= '0' after 0 ns, '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 70 ns; 
  

END behaviour ;
