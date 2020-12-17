--Johnny Li
--Lab4 Gray1 FSM Test Bench

library ieee;
use ieee.std_logic_1164.all;

entity gray1_tb is
end gray1_tb;

architecture TB of gray1_tb is

	signal clk, rst, go : std_logic := '0';
	signal output  : std_logic_vector(3 downto 0);
	signal finish : std_logic := '0';	--end signal
	
begin
	--Gray1 component
	UUT : entity work.gray1
		port map (
			clk    => clk,
			rst    => rst,
			go => go,
			output => output
		);
		
	clk <= not clk after 5 ns when finish = '0' else clk;	--clk till end
	
	process
	begin
		rst <= '1';	--inital reset
		wait until rising_edge(clk);
		
		rst <= '0';	--reset off
		go <= '1'; --change value
		for i in 0 to 20 loop	--Go to all state in order
			wait until rising_edge(clk);
		end loop; -- i
		
		rst <= '1';
		wait until rising_edge(clk);	--return back 
		
		rst <= '0';
		for i in 1 to 15 loop
			wait until rising_edge(clk);
			if (i = 5) then
				go <= '0';	--hold value
			elsif (i = 10) then 
				go <= '1';
			end if;
		end loop; --i
		
		report "SIMULATION FINISHED!";
		finish <= '1';
		wait;
		
	end process;
end TB;

