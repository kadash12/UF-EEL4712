--Johnny Li
--Lab4 Clock divider
--Converts the 50 MHz clock on the board to a 1000 Hz (1ms) clock with any duty cycle.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is

  generic(	clk_in_freq : natural;
				clk_out_freq : natural);
				
  port (
    clk_in : in std_logic;
    clk_out : out std_logic;
    rst   : in std_logic);
	 
end clk_div;

architecture bhv of clk_div is

	constant max : integer := (clk_in_freq/clk_out_freq)-1;
	signal count : integer range 0 to max := 0;
	signal temp : std_logic;
	
begin

	process(clk_in, rst)
	
	begin
		if(rst = '1') then	--Reset values
			temp <= '0';
			count <= 0;
		
		elsif rising_edge(clk_in) then
			if (count = max) then
				temp <= '1';
				count <= 0;
			
			else
				temp <= '0';
				count <= count+1;
			end if;
		end if;
	end process;
		
	clk_out <= temp;
end bhv;