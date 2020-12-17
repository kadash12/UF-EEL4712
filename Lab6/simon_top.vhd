--Jonathan Cruz
--University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity simon_top is
    port(
	clk	: in std_logic;
	rst	: in std_logic;	
	go	: in std_logic;
	valid : out std_logic; --denotes output is valid.
	done : out std_logic);

end simon_top;

architecture STR of simon_top is

signal simon_out : std_logic_vector(BLOCK_SIZE-1 downto 0); -- map to output of your simon cipher instance. DO NOT TOUCH
----------- your signals here -----------
signal muxxsel, muxysel : std_logic_vector(1 downto 0);
signal ffkeyen, ffxen, ffyen, outramwren, en  : std_logic;
signal count, addrin : std_logic_vector(4 downto 0);
signal keyin : std_logic_vector(2*BLOCK_SIZE-1 downto 0);
signal input : std_logic_vector(BLOCK_SIZE-1 downto 0);

begin
----------- your code here -----------
sp_simon_out <= simon_out; --for testbench to work, this signal assignment is needed. DO NOT TOUCH

U_SIMON : entity work.simon --*
	port map(				
		clk	=> clk,
		rst	=> rst,
		key_in => keyin,
		input => input,
		round_count => count,
		mux_x_sel => muxxsel,
		mux_y_sel => muxysel,
		ff_key_en => ffkeyen,
		ff_x_en => ffxen,
		ff_y_en => ffyen,
		output => simon_out
	);
		
U_CONTL : entity work.controller --*
	port map(
		clk	=> clk,
		rst	=> rst,
		go	=> go,
		round_count => count,
		done => done,
		mux_x_sel => muxxsel,
		mux_y_sel => muxysel,
		ff_key_en => ffkeyen,
		ff_x_en => ffxen,
		ff_y_en => ffyen,
		addr_in => addrin,
		valid => en,
		out_ram_wren => outramwren
	);
	
U_ROM : entity work.keyrom	--*
	port map(
		address => "0",
		clock => clk,
		q => keyin
	);
	
U_IN_RAM : entity work.inram
	port map(
		address => addrin,
		clock => clk,
		data => (others => '0'),
		wren => '0',
		q => input
	);
		
U_OUT_RAM : entity work.outram
	port map(
		address => addrin,
		clock => clk,
		data => simon_out,
		wren => outramwren,
		q => open
	);

U_inaddr_gen : entity work.counterE
	port map( 
		Clk => clk,
		Enable => en,
		Reset => rst,
		Output => addrin
	);

	valid <= en;
end STR;