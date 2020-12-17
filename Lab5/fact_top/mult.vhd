-- Johnny Li
-- Lab 5: mult


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult is
	generic( 
			WIDTH : positive := 8
			);
	port(	
			in1, in2 : in std_logic_vector(WIDTH-1 downto 0);
			output : out std_logic_vector(WIDTH-1 downto 0)
			);
end mult;

architecture bhv of mult is

signal temp: std_logic_vector((2*WIDTH)-1 downto 0);

begin
	temp <= std_logic_vector(unsigned(in1) * unsigned(in2));
	output <= temp(WIDTH-1 downto 0);
	
end bhv;