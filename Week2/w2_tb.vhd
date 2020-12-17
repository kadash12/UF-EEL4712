--Johnny Li
--EEL4712 Digital Design
--Lab 7: Week 2 Testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mips_tb is
end mips_tb;

architecture TB of mips_tb is
	signal clk        : std_logic 						   := '0';
	signal rst        : std_logic                          := '0';
	signal inport	  : std_logic_vector(31 downto 0) := (others => '0');
	signal inport0_en : std_logic                          := '0';
	signal inport1_en : std_logic                          := '0';
	signal outport    : std_logic_vector(31 downto 0);
	signal done 	  : std_logic                          := '0';
	
begin

	UUT : entity work.mips
		port map (
			clk        	=> clk,
			rst       	=> rst,
			inport		=> inport,
			inport0_en 	=> inport0_en,
			inport1_en 	=> inport1_en,
			outport   	=> outport
		);
	
	clk <= not clk after 5 ns when done = '0' else clk;
	
	process
	begin
	
	wait until clk'event and clk = '1';
	rst <= '1';
	
	wait until clk'event and clk = '1';
	rst <= '0';
	
	inport <= x"000001FF";
	inport0_en <= '1';
	
	for i in 0 to 1000 loop
		wait until clk'event and clk = '1';
	end loop;
	
	done <= '1';
	
	assert FALSE Report "SIMULATION FINISHED."severity note;
	wait;
	end process;
end TB;
