library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab2 Part 1 testbench
--9/19/2020

library ieee;
use ieee.std_logic_1164.all;

entity decoder7seg_tb is
end decoder7seg_tb;

architecture TB of decoder7seg_tb is

component decoder7seg
	port(
		input  : in  std_logic_vector(3 downto 0);
		output : out std_logic_vector(6 downto 0)
	);
end component;

signal input  : std_logic_vector(3 downto 0);
signal output : std_logic_vector(6 downto 0);
	
begin --TB

UUT: entity work.decoder7seg 
	port map (
		input => input,
		output => output
	);
process
begin

	input <= x"0";			--Test input "0"	
	wait for 20 ns;			--Wait
	assert(output = "0000001")	--Check output "1"
	report "Error on input 0";	--If output is false report error.
	
	--Repeat pattern above
	input <= x"1";
	wait for 20 ns;
	assert(output = "1001111")
	report "Error on input 1";
	
	input <= x"2";
	wait for 20 ns;
	assert(output = "0010010")
	report "Error 2";
	
	input <= x"3";
	wait for 20 ns;
	assert(output = "0000110")
	report "Error on input 3";
	
	input <= x"4";
	wait for 20 ns;
	assert(output = "1001100")
	report "Error on input 4";
	
	input <= x"5";
	wait for 20 ns;
	assert(output = "0100100")
	report "Error on input 5";
	
	input <= x"6";
	wait for 20 ns;
	assert(output = "0100000")
	report "Error on input 6";
	
	input <= x"7";
	wait for 20 ns;
	assert(output = "0001111")
	report "Error on input 7";
	
	input <= x"8";
	wait for 20 ns;
	assert(output = "0000000")
	report "Error on input 8";
	
	input <= x"9";
	wait for 20 ns;
	assert(output = "0001100")
	report "Error on input 9";
	
	input <= x"A";
	wait for 20 ns;
	assert(output = "0001000")
	report "Error on input 10/A";
	
	input <= x"B";
	wait for 20 ns;
	assert(output = "1100000")
	report "Error on input 11/B";
	
	input <= x"C";
	wait for 20 ns;
	assert(output = "0110001")
	report "Error on input 12/C";
	
	input <= x"D";
	wait for 20 ns;
	assert(output = "1000010")
	report "Error on input 13/D";
	
	input <= x"E";
	wait for 20 ns;
	assert(output = "0110000")
	report "Error on input 14/E";
	
	input <= x"F";
	wait for 20 ns;
	assert(output = "0111000")
	report "Error on input 15/F";
	 
	report "SIMULATION FINISHED!";		--FINISHED
	wait;		--Infinite loop
	end process; 
end TB;
