library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity factorial is
  generic(
    WIDTH         :   positive := 32);
  port(
    clk     : in  std_logic;
    rst     : in  std_logic;
    n       : in  std_logic_vector(width-1 downto 0);
    go      : in  std_logic;
    done    : out std_logic;
    output  : out std_logic_vector(WIDTH-1 downto 0)

  );
end factorial;


architecture FSM_D1 of factorial is

  -- Fill in with your code

begin 
  
   -- Fill in with your code
  
end FSM_D1;