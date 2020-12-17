--Johnny Li
--Lab4 Clock generator
--Count 1000 Hz clock pulses (1ms) while the button is pressed down until 1000ms have elapsed, 
--at which point it will output a single clock pulse based on the 1000 Hz clock.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_gen is
    generic (
        ms_period : positive);          -- amount of ms for button to be
                                        -- pressed before creating clock pulse
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        button_n : in  std_logic;
        clk_out  : out std_logic);
end clk_gen;

architecture bhv of clk_gen is

signal clock : std_logic;
signal temp : std_logic;
signal cnt : integer ;

begin
	U_CD: entity work.clk_div
		generic map(
			clk_in_freq => 50000000,
			clk_out_freq => 1000
		)
		port map(
			clk_in => clk50MHz,
			rst => rst,
			clk_out => clock
		);
	
	process(rst, clock)
	begin
		if(rst='1') then	--Reset value
			temp <= '0';
			 cnt <= 0;
		elsif rising_edge(clock) then
			if button_n = '0' then
				if( cnt = ms_period) then
					 cnt <= 1;
					temp <= '1';
				else 
					 cnt <=  cnt+1;
					temp <= '0';
				end if;
			else
				 cnt <= 0;
				temp <= '0';
			end if;
		end if;
	end process;
	
	clk_out <= temp;

end bhv;