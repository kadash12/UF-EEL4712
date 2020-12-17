
library ieee;
use ieee.std_logic_1164.all;

-- Use this entity to synthesize the ALU. Note that this is only needed
-- because there are multiple architectures. Therefore, we
-- have to tell the synthesis tool which one to use (otherwise it will
-- typically use the last one).

entity alu_top is
  generic (
    width  :     positive := 8);
  port (
    in1    : in  std_logic_vector(WIDTH-1 downto 0);
    in2    : in  std_logic_vector(WIDTH-1 downto 0);
    sel    : in  std_logic_vector(1 downto 0);
    neg    : out std_logic;
    pos    : out std_logic;
    zero   : out std_logic;
    output : out std_logic_vector(WIDTH-1 downto 0));
end alu_top;

architecture STR of alu_top is

begin  -- STR

  -- To change the architecture that is used for synthesis, change the
  -- architecture name in the pararenthesis (e.g., BAD1, GOOD1, GOOD2).
  
  U_ALU : entity work.alu(BAD1)
    generic map (
      width  => width)
    port map (
      in1    => in1,
      in2    => in2,
      sel    => sel,
      neg    => neg,
      pos    => pos,
      zero   => zero,
      output => output);

end STR;