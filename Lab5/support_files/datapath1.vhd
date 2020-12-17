library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

begin

  -- Fill in with your code




end STR;
