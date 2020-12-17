library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1 is
	port(
		input : in std_logic_vector(3 downto 0);
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end mux_4x1;

architecture STR of mux_4x1 is

component mux_2x1
port (in1	: in std_logic;
	in2	: in std_logic;
	sel 	: in std_logic;
	output	: out std_logic);
end component;

signal mux_out1, mux_out2 : std_logic;

begin

U_Mux1 : mux_2x1 port map ( in1 => input(0), in2 => input(1), sel => sel(0), output => mux_out1 );

U_Mux2 : mux_2x1 port map ( in1 => input(2), in2 => input(3), sel => sel(0), output => mux_out2 );

U_Mux3 : mux_2x1 port map ( in1 => mux_out1, in2 => mux_out2, sel => sel(1), output => output );
	
end STR;


architecture STR2 of mux_4x1 is
signal mux_out1, mux_out2 : std_logic;
	
begin
	
	U_Mux1 : entity work.mux_2x1(with_select) port map (in1 => input(0), in2 => input(1), sel => sel(0), output => mux_out1 );

	U_Mux2 : entity work.mux_2x1(with_select) port map (in1 => input(2), in2 => input(3), sel => sel(0), output => mux_out2 );

	U_Mux3 : entity work.mux_2x1(with_select) port map (in1 => mux_out1, in2 => mux_out2, sel => sel(1), output => output );

end STR2;
