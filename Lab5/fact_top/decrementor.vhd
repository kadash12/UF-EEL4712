-- Johnny Li
-- Lab 5: decrementor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementor is
	generic( 
			WIDTH : positive := 8
			);
	port(	
			in1 	 : in std_logic_vector(WIDTH-1 downto 0);
			output : out std_logic_vector(WIDTH-1 downto 0)
			);
end decrementor;

architecture bhv of decrementor is
begin

	output <= std_logic_vector(unsigned(in1)-1);
	
end bhv;
