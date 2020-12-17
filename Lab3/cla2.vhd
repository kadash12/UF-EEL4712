library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab3 Part 2
--9/26/2020

--2-bit carry-lookahead adder 
entity cla2 is
    port(
		Cin  : in   std_logic;		--carry in
		X 	  : in   std_logic_vector(1 downto 0);		--2-bit inputs
		Y 	  : in   std_logic_vector(1 downto 0);
		S 	  : out  std_logic_vector(1 downto 0);		--2-bit sum
		Cout : out  std_logic;		--carry out
		BP   : out	std_logic;		--block propagate
		BG   : out	std_logic);		--block generate
end cla2;

architecture behavior of cla2 is

signal p	 : std_logic_vector(1 downto 0);		--propagate
signal g  : std_logic_vector(1 downto 0);		--generate
signal c : std_logic_vector(1 downto 0);		--carry in

begin

	c(0) <= Cin;
	
	g <= X AND Y;
	p <= X XOR Y;
	c(1) <= g(0) OR (p(0) AND C(0));
	
	Cout 	 <= g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND cin);		--carry = gi+pig(i-1)+pip(i-1)c(i-1)
	BG <= g(1) OR (p(1) AND g(0));
	BP <= p(1) AND p(0);
	S  <= P XOR C;
	
end behavior;