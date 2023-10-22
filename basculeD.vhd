library ieee ;
use ieee.std_logic_1164.all;
use work.all;

entity basculeD is
port(	data_in:	in std_logic;
	clock:		in std_logic;
	rst: in std_logic;
	data_out:	out std_logic;
	databar_out:	out std_logic
);
end basculeD;

architecture Arch_D of basculeD is
begin

    process(data_in, clock,rst)
    begin
      if(rst='1') then
        data_out<='0';
        databar_out<='1';

	    elsif (rising_edge(clock)) then
	      data_out <= data_in;
	      databar_out<=not data_in;
	end if;
	

    end process;	

end Arch_D;