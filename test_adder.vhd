library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity testadder is
end testadder;

architecture behav of testadder is
  signal a_tb, b_tb, cin_tb, s_tb, cout_tb: std_logic;
  begin
    uut: entity work.onebitADDER port map(a_tb,b_tb,cin_tb,s_tb,cout_tb);
    process
      begin
        a_tb<='0';
        b_tb<='0';
        cin_tb<='0';
        wait for 10 ns;
        a_tb<='1';
        wait for 10 ns;
        a_tb<='0';
        b_tb<='1';
        wait for 10 ns;
        a_tb<='1';
        wait for 10 ns;
        b_tb<='0';
        cin_tb<='1';
        wait for 10 ns;
        a_tb<='0';
        wait for 10 ns;
        b_tb<='1';
        wait for 10 ns;
        b_tb<='0';
        cin_tb<='0';
        wait for 10 ns;
        a_tb<='1';
        b_tb<='1';
        cin_tb<='1';
        wait for 20 ns;
      end process;
    end architecture behav;
        