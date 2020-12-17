
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
  -- treats std_logic_vectors as unsigned

entity add is

  generic (
    WIDTH : positive := 8);

  port (
    input1 : in  std_logic_vector(WIDTH-1 downto 0);
    input2 : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0);
    carry  : out std_logic
    );

end add;

architecture BHV1 of add is

begin  -- BHV1

  process (input1, input2)

    -- temp_add has to be a variable (not a signal) for this to work
    -- variables are updated immediately, whereas signals are updated at the
    -- end of the process. Note that the size is (WIDTH downto 0)
    -- and not (WIDTH-1 downto to 0)

    variable temp_add : std_logic_vector(WIDTH downto 0);

  begin

    -- With std_logic_arith and std_logic_unsigned, we can add std_logic_
    -- vectors (which are then treated as unsigned),
    -- so we just need to convert the inputs to a width of WIDTH+1.
    -- conv_std_logic_vector can handle size conversions, but we must first
    -- cast the inputs to unsigned because the first parameter has to be
    -- unsigned, signed, or an integer. 

    temp_add := conv_std_logic_vector(unsigned(input1), WIDTH+1) +
                conv_std_logic_vector(unsigned(input2), WIDTH+1);

    -- write the lowest WIDTH bits to the output

    output <= temp_add(WIDTH-1 downto 0);

    -- get the carry from the highest bit

    carry <= temp_add(WIDTH);

  end process;

end BHV1;


architecture BHV2 of add is

begin  -- BHV2

  process (input1, input2)

    variable temp_add : std_logic_vector(WIDTH downto 0);

  begin

    -- An alternative way to do the add is to convert the inputs to WIDTH+1
    -- wide unsigned values using conv_unsigned and add the unsigned values.
    -- It might seem confusing that the code casts the inputs to unsigned
    -- before calling conv_unsigned, but this is necessary because
    -- conv_unsigned does not take std_logic_vector inputs.

    -- *****Important*******
    -- You do not need to cast the result to std_logic_vector. In fact, if
    -- you do, you will get a compilation/synthesis error. The reason is
    -- complicated, but here's a summary. std_logic_arith overloads the +
    -- function with different possible return types. When trying to cast the
    -- result, the compiler/sythesis tool doesn't know which version of the
    -- function to use. Basic rule: when using std_logic_arith, don't cast the
    -- output of arithmetic operations.

    temp_add := conv_unsigned(unsigned(input1), WIDTH+1) +
                conv_unsigned(unsigned(input2), WIDTH+1);

    output <= temp_add(WIDTH-1 downto 0);
    carry  <= temp_add(WIDTH);

  end process;

end BHV2;


architecture BHV3 of add is

begin  -- BHV3

  process (input1, input2)

    variable temp_add : std_logic_vector(WIDTH downto 0);

  begin

    -- Another way to extend the inputs is by concatenating (&) a single bit

    temp_add := ("0"&input1) + ("0"&input2);

    output <= temp_add(WIDTH-1 downto 0);
    carry  <= temp_add(WIDTH);

  end process;

end BHV3;
