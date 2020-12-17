library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity ADD is   
	port (     
	input1, input2 : in  std_logic_vector(15 downto 0);     
	output         : out std_logic_vector(15 downto 0);     
	overflow       : out std_logic); 
end ADD; 

architecture BHV of ADD is   
	signal temp : unsigned(16 downto 0); 
begin   
	process(input1, input2)   
	begin     
		temp     <= unsigned("0"&input1) + unsigned("0"&input2);     
		output   <= std_logic_vector(temp(15 downto 0));     
		overflow <= std_logic(temp(16));   
	end process; 
end BHV;
