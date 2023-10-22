library ieee ;
use ieee.std_logic_1164.all;
use work.all;

entity test_D is 
end test_D;

architecture behv of test_D is
--  component basculeD port(	data_in:	in std_logic;
--	clock:		in std_logic;
--	rst: in std_logic;
--	data_out:	out std_logic
--);
--end component;

signal data_in_tb,clock_tb,rst_tb,data_out_tb: std_logic;
begin
  dut: entity work.basculeD port map (data_in_tb,clock_tb,rst_tb,data_out_tb);
        rst_tb<='1','0' after 100 ns;
        clock_tb<='0';
        --data_in_tb<='1','0' after 35 ns,'1' after 70 ns;
    process
    begin
      clock_tb<=not clock_tb;
      wait for 20 ns;
  end process;        
      
    end behv;