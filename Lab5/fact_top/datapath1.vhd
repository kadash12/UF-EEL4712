library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Johnny Li
-- Lab 5: datapath

entity datapath1 is
  generic(
  WIDTH :   positive := 16);
  port(
    clk             : in std_logic;
    rst             : in std_logic;
    n               : in std_logic_vector(width-1 downto 0);

    regN_en         : in std_logic;
    regN_sel        : in std_logic;
    tempFact_en     : in std_logic;
    tempFact_sel    : in std_logic;
    output_en       : in std_logic;
    n_ge_1          : out std_logic;
    output          : out std_logic_vector(width-1 downto 0)

  );
end datapath1;

architecture STR of datapath1 is

  -- Fill in with your code
	signal Nm2r, Tm2r : std_logic_vector(width-1 downto 0);
	signal N2mux, T2mux : std_logic_vector(width-1 downto 0);
	signal Nreg_out, Treg_out : std_logic_vector(width-1 downto 0);

begin

  -- Fill in with your code
	U_MUX_regN: entity work.mux2x1 
	generic map(WIDTH)
	port map(
		in1 => n,
		in2 => N2mux, 
		sel => regN_sel,
		output => Nm2r); 
		
	U_MUX_tempFact: entity work.mux2x1 
	generic map(WIDTH)
	port map(
		in1 => std_logic_vector(to_unsigned(1,width)),
		in2 => T2mux, 
		sel => tempFact_sel,
		output => Tm2r); 

	U_REG_regN: entity work.reg 
	generic map(WIDTH)
	port map(	
		clk => clk,
		rst => rst,
		load => regN_en,
		input => Nm2r, 
		output => Nreg_out); 
		
	U_REG_tempFact: entity work.reg 
	generic map(WIDTH)
	port map(	
		clk => clk,
		rst => rst,
		load => tempFact_en,
		input => Tm2r, 
		output =>  Treg_out); 
		
	U_MULT: entity work.mult
	generic map(WIDTH)
	port map(
		in1 => Nreg_out, 
		in2 =>  Treg_out, 
		output => T2mux); 
		
	U_DECREMENTOR: entity work.decrementor
	generic map(WIDTH)
	port map(
		in1 => Nreg_out, 
		output => N2mux); 
	
	U_COMP: entity work.comp(UNSIGNED_INPUTS) 
	generic map(WIDTH)
	port map(
		in1 => Nreg_out, 
		--lt => open,
		eq => n_ge_1);
		--gt => open);
		
	U_REG_output: entity work.reg 
	generic map(WIDTH)
	port map(	
		clk => clk,
		rst => rst,
		load => output_en,
		input => Treg_out, 
		output => output);
end STR;
