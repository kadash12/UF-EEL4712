--Johnny Li
--Lab4 Counter Test Bench

library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is

	signal clk, rst, go, done, up_n, load_n : std_logic := '0';
	signal input : std_logic_vector(3 downto 0) := "0100";
	signal output : std_logic_vector(3 downto 0);
	
begin

	UUT: entity work.counter
		port map(
			rst => rst,
			clk => clk,
			up_n => up_n,
			load_n => load_n,
			input => input,
			go => go,
			output => output
		);

	clk <= not clk after 5 ns when done = '0' else clk;		--Clock till done
	
	process 
	begin
	
	load_n <= '1';
	up_n <= '0';
	rst <= '1';		--inital reset
	wait until rising_edge(clk);
	
	rst <= '0';	
	go <= '1';
	for i in 0 to 18 loop	--go through all values up
		wait until rising_edge(clk);
	end loop;
	
	go <= '0';
	for i in 0 to 5 loop	--hold values up
		wait until rising_edge(clk);
	end loop;
	
	load_n <= '0';	--Initial load
	wait until rising_edge(clk);
	
	input <= "1110";	--relaod
	wait until rising_edge(clk);
	
	load_n <= '1';
	go <= '1';
	
	up_n <= '1';
	for i in 0 to 15 loop
		wait until rising_edge(clk);	--go through all values down
	end loop;
	
	done <= '1';
	report "SIMULATION FINISHED!";
	wait;
	end process;
end TB;