library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab3 Part 4
--9/26/2020

--4-bit hierarchical CLA
entity cla4 is
	port(
		X, Y : in std_logic_vector(3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector(3 downto 0);
		Cout, BG, BP : out std_logic
	);

end cla4;

architecture behavior of cla4 is

signal C : std_logic;
signal P, G : std_logic_vector(1 downto 0);

begin

	U_CLA2_1: entity work.cla2 port map (
		Cin  => Cin,
		X    => X(1 downto 0),
		Y    => Y(1 downto 0),
		S    => S(1 downto 0),
		Cout => open,
		BG   => G(0),
		BP   => P(0)
		);
			
	U_CLA2_2: entity work.cla2 port map (
		Cin  => C,
		X    => X(3 downto 2),
		Y    => Y(3 downto 2),
		S    => S(3 downto 2),
		Cout => open,
		BG   => G(1),
		BP   => P(1)
		);
		
	U_cgen2 : entity work.cgen2 port map(
		Cin => Cin,
		G => G(1 downto 0),
		P => P(1 downto 0),
		C(0) => C,
		C(1) => Cout,
		BG => BG,
		BP => BP
		);

end behavior;