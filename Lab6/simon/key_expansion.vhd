--Jonathan Cruz
--University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity key_expansion is
    port(
	key_in	: in std_logic_vector(2*BLOCK_SIZE-1 downto 0); -- {round_key[i+3], round_key[i+2], round_key[i+1], round_key[i]}
	round_count : in std_logic_vector(4 downto 0); -- current round
	key_out	: out std_logic_vector(WORD_SIZE-1 downto 0) -- round_key[i+4]
    );

end key_expansion;

architecture BHV of key_expansion is
----------- your signals here -----------


begin

    process(key_in, round_count)
	  variable zvar : std_logic_vector(0 downto 0);  --Z Variable. Defined in constants.vhd
	  constant c : std_logic_vector(WORD_SIZE-1 downto 0) := X"0003"; -- Constant C
	  ----------- your variables here -----------
	  variable rotright1 : std_logic_vector(WORD_SIZE-1 downto 0);
	  variable rotright3 : std_logic_vector(WORD_SIZE-1 downto 0);	--i+1
	  variable temp : std_logic_vector(WORD_SIZE-1 downto 0);
	  variable tempz : std_logic_vector(WORD_SIZE-1 downto 0);
	  
    begin
    ----------- your code here -----------
	rotright3 := key_in(50 downto 48) & key_in(2*BLOCK_SIZE-1 downto 51);
	temp := rotright3 XOR key_in(31 downto 16);
	rotright1 := temp(0) & temp(WORD_SIZE-1 downto 1);
	temp := rotright1 XOR temp; 
	temp := temp XOR (not key_in(15 downto 0));
	
	zvar(0) := Z(to_integer(unsigned(round_count)-M) mod 62);
	tempz := std_logic_vector(resize(unsigned(zvar), WORD_SIZE));
	
	temp := temp XOR tempz; 
	temp := temp XOR x"0003";
	key_out <= temp;
	
    end process;

end BHV;
