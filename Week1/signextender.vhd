--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS Sign Extender

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signextender is
    generic (
        WIDTH  : natural
    );
    port(
        sign	 : in  std_logic;
        input 	 : in  std_logic_vector(WIDTH -1 downto 0);
		output 	 : out  std_logic_vector(2*WIDTH-1 downto 0)
    );
end signextender;

architecture BHV of signextender is
begin
    process(sign, input)
    begin
        if (sign = '1') then	--Signed extended
            output <= std_logic_vector(resize(signed(input), 2*WIDTH));
        else	--Signed not extended
            output <= std_logic_vector(resize(unsigned(input), 2*WIDTH));
        end if;
    end process;
end BHV;
