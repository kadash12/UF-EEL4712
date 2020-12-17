

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in std_logic;
        up_n   : in  std_logic;         -- active low
        load_n : in  std_logic;         -- active low
        input  : in  std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0));
end counter;

architecture bhv of counter is

signal cnt : unsigned(3 downto 0);

begin

	process(clk, rst)
		begin
			if (rst = '1') then
				cnt <= (others => '0');
				
			elsif (rising_edge(clk)) then
				if (load_n = '0') then
					cnt <= unsigned(input);
				elsif(go = '1') then
					if (up_n = '0') then
						cnt <= cnt + 1;
					else
						cnt <= cnt - 1;
					end if;
				else
					cnt <= cnt;
				end if;
			end if;
	end process;
		
	output <= std_logic_vector(cnt);

end bhv;