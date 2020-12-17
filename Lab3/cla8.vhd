library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab3 Part 9
--9/26/2020

--8-bit hybrid CLA
entity cla8 is
	generic (
		width :     positive := 8
	);
	port (
		x, y  : in  std_logic_vector(width-1 downto 0);
		cin   : in  std_logic;
		s     : out std_logic_vector(width-1 downto 0);
		cout  : out std_logic
	);
end cla8;

architecture hybrid of cla8 is

signal c : std_logic_vector(width/2 downto 0);

begin  -- RIPPLE_CARRY

U_ADD : for i in 0 to 4 generate

	U_CLA2_0 : entity work.cla2 port map (
		  X    => x(i*2+1 downto i*2),
		  Y    => y(i*2+1 downto i*2),
		  Cin  => cin,
		  S    => s(i*2+1 downto i*2),
		  Cout => c(i+1)
	);
	
end generate U_ADD;
  
	c(0) <= cin;
	cout <= c(width/2);
  
end hybrid;