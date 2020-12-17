library ieee;
use ieee.std_logic_1164.all;

--Johnny Li
--Lab1 Part 2
--9/11/2020

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity adder is
  port (
    input1    : in  std_logic_vector(5 downto 0);
    input2    : in  std_logic_vector(5 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(5 downto 0);
    carry_out : out std_logic);
end adder;

-- DEFINE A RIPPLE-CARRY ADDER USING A STRUCTURE DESCRIPTION THAT CONSISTS OF 4
-- FULL ADDERS

architecture STR of adder is  

component fa

	port (input1, input2, carry_in : in std_logic;
		sum, carry_out	: out std_logic);

end component;

signal c: std_logic_vector(5 downto 1);

begin

	adder1: fa port map (input1(0), input2(0), carry_in, sum(0), c(1));
	adder2: fa port map (input1(1), input2(1), c(1), sum(1), c(2));
	adder3: fa port map (input1(2), input2(2), c(2), sum(2), c(3));
	adder4: fa port map (input1(3), input2(3), c(3), sum(3), c(4));
	adder5: fa port map (input1(4), input2(4), c(4), sum(4), c(5));
	adder6: fa port map (input1(5), input2(5), c(5), sum(5), carry_out);

end STR;