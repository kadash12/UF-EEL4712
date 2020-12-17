library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab3 Part 3
--9/26/2020

--2 bit carry generator 
entity cgen2 is
	 port(
		Cin  : in   std_logic;
		P	  : in 	std_logic_vector(1 downto 0);
		G	  : in 	std_logic_vector(1 downto 0);
		C    : out  std_logic_vector(1 downto 0);
		BP   : out	std_logic;
		BG   : out	std_logic
		);
end cgen2;

architecture behavior of cgen2 is
	
begin

	C(0) <= G(0) OR (P(0) AND Cin);
	C(1) <=  G(1) OR (P(1) AND G(0)) OR (P(1) AND P(0) AND Cin);

	BG <= G(1) OR (P(1) AND G(0));
	BP <= P(0) AND P(1);

end behavior;