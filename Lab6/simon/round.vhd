--Jonathan Cruz
--University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity round is
    port(
        x	: in std_logic_vector(WORD_SIZE-1 downto 0); --most significant word of input
        y	: in std_logic_vector(WORD_SIZE-1 downto 0); -- least signficant word of input
	round_key : in std_logic_vector(WORD_SIZE-1 downto 0); 
	round_out : out std_logic_vector(BLOCK_SIZE-1 downto 0)
    );

end round;

architecture BHV of round is


begin
    process(x,y,round_key)
	----------- your variables here -----------
	variable tempx : std_logic_vector(WORD_SIZE-1 downto 0);
	variable rotleft1 : std_logic_vector(WORD_SIZE-1 downto 0);
	variable rotleft2 : std_logic_vector(WORD_SIZE-1 downto 0);
	variable rotleft8 : std_logic_vector(WORD_SIZE-1 downto 0);
	
    begin
	----------- your code here -----------
	rotleft1 := x(WORD_SIZE-2 downto 0) & x(WORD_SIZE-1);
	rotleft2 := x(WORD_SIZE-3 downto 0) & x(WORD_SIZE-1 downto WORD_SIZE-2);
	rotleft8 := x(WORD_SIZE-9 downto 0) & x(WORD_SIZE-1 downto WORD_SIZE-8);

	tempx := ((y XOR (rotleft1 AND rotleft8)) XOR rotleft2) XOR round_key;	--Encryption
	
	round_out <= tempx & x;

    end process;
end BHV;
