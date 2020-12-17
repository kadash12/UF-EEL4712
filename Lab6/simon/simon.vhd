--Jonathan Cruz
--University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity simon is
    port(
	clk	: in std_logic;
	rst	: in std_logic;	
	key_in	: in std_logic_vector(2*BLOCK_SIZE-1 downto 0); --key input
	input	: in std_logic_vector(BLOCK_SIZE-1 downto 0); --plaintext or ciphertext
	round_count : in std_logic_vector(4 downto 0); -- current round count
	mux_x_sel, mux_y_sel : in std_logic_vector(1 downto 0); --control for muxes
	ff_key_en, ff_x_en, ff_y_en : in std_logic; --enable for FFs
	output	: out std_logic_vector(BLOCK_SIZE-1 downto 0)); --final plaintext or ciphertext
end simon;

architecture datapath of simon is
----------- your signals here -----------
type KEY_EXPANSION_ARR is array (0 to N_ROUNDS) of std_logic_vector(WORD_SIZE-1 downto 0);
type KEY_ARR is array (0 to N_ROUNDS-1) of std_logic_vector((2*BLOCK_SIZE)-1 downto 0);
type ROUND_COUNT_ARR is array (0 to N_ROUNDS-1) of std_logic_vector(4 downto 0);
signal round_key : KEY_EXPANSION_ARR; --round keys
signal round_count_index : ROUND_COUNT_ARR; --index for round keys
signal k : KEY_ARR; 
signal msr, lsr : std_logic_vector(WORD_SIZE-1 downto 0);	--Split
signal xmux, ymux : std_logic_vector(WORD_SIZE-1 downto 0);	--Mux output
signal xreg_out, yreg_out : std_logic_vector(WORD_SIZE-1 downto 0);	--Register x,y output
signal kreg_out : std_logic_vector(2*BLOCK_SIZE-1 downto 0);	--Register k output
signal kexpand_out : std_logic_vector(WORD_SIZE-1 downto 0);	--Key expansion output
signal msrlsr : std_logic_vector(BLOCK_SIZE-1 downto 0);	--Round output
signal keyin : std_logic_vector(WORD_SIZE-1 downto 0);

begin

-----initialize round keys taken from input here-------
round_key(0) <= key_in(WORD_SIZE-1 downto 0);
round_key(1) <= key_in(2*WORD_SIZE-1 downto WORD_SIZE);
round_key(2) <= key_in(3*WORD_SIZE-1 downto 2*WORD_SIZE);
round_key(3) <= key_in(4*WORD_SIZE-1 downto 3*WORD_SIZE);

--round count array for key expansion
round_count_index <= ("00000","00001","00010", "00011","00100","00101","00110","00111",
                "01000","01001","01010","01011");
				
-- generate round keys
GEN_ROUND_KEYS: for i in 4 to N_ROUNDS-1 generate
----------- your code here -----------
--Have the 4 round keys go to the key expansion to generate the needed round keys
k(i) <= (round_key(i-1)&round_key(i-2)&round_key(i-3)&round_key(i-4));

U_REG_keyexpand: entity work.key_expansion
	port map(	
		key_in => k(i),
		round_count => round_count_index(i),
		key_out => round_key(i));

end generate GEN_ROUND_KEYS;
 	
U_MUX_x: entity work.mux4to1 
	port map(
		w0 => lsr,
		w1 => msr,
		w2 => input(15 downto 0),
		w3 => input(31 downto 16),
		s => mux_x_sel,
		f => xmux); 
		
U_MUX_y: entity work.mux4to1 
	port map(
		w0 => lsr,
		w1 => msr,
		w2 => input(15 downto 0),
		w3 => input(31 downto 16),
		s => mux_y_sel,
		f => ymux);

U_REG_regx: entity work.reg 
	generic map (width => WORD_SIZE)
	port map(	
		clk => clk,
		rst => rst,
		load => ff_x_en,
		input => xmux, 
		output => xreg_out); 
		
U_REG_regy: entity work.reg 
	generic map (width => WORD_SIZE)
	port map(	
		clk => clk,
		rst => rst,
		load => ff_y_en,
		input => ymux, 
		output => yreg_out); 
		
U_REG_regk: entity work.reg 
	generic map (width => 64)
	port map(	
		clk => clk,
		rst => rst,
		load => ff_key_en,
		input => key_in, 
		output => kreg_out);		
		
	output <= xreg_out & yreg_out;

keyin <= round_key((to_integer(unsigned(round_count))));
U_REG_rounding: entity work.round
	port map(	
		x => xreg_out,
		y => yreg_out,
		round_key => keyin,
		round_out => msrlsr);
	msr <= msrlsr(31 downto 16);
	lsr <= msrlsr(15 downto 0);		
  
end datapath;