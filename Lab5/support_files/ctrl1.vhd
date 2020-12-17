library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl1 is
  port(
    clk           : in std_logic;
    rst           : in std_logic;
    go            : in std_logic;
    n_ge_1        : in std_logic;
    regN_sel      : out std_logic;
    regN_en       : out std_logic;
    output_en     : out std_logic;
    tempFact_sel  : out std_logic;
    tempFact_en   : out std_logic;
    done          : out std_logic
  );
end ctrl1;

architecture BHV of ctrl1 is
 

end BHV;
