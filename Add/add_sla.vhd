library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

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

    variable temp_add : std_logic_vector(WIDTH downto 0);

  begin

    -- With std_logic_arith and *without* std_logic_unsigned, we have to
    -- explicitly convert the inputs to unsigned before adding. This code uses
    -- conv_unsigned to sign extend the inputs to create the carry. It might
    -- seem confusing that the code casts the inputs to unsigned before calling
    -- conv_unsigned, but this is necessary because conv_unsigned does not take
    -- std_logic_vector inputs.

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

end BHV1;

architecture BHV2 of add is

begin  -- BHV2

  process (input1, input2)

    variable temp_add : std_logic_vector(WIDTH downto 0);

  begin

    -- same code as std_logic_arith+std_logic_unsigned
    -- make sure not to cast result to std_logic_vector (see previous comments)
    
    temp_add := unsigned("0"&input1) + unsigned("0"&input2);

    output <= temp_add(WIDTH-1 downto 0);
    carry  <= temp_add(WIDTH);

  end process;


end BHV2;


architecture BHV3 of add is

begin  -- BHV3

  process (input1, input2)

    -- Here we make the variable unsigned

    variable temp_add : unsigned(WIDTH downto 0);

  begin

    temp_add := unsigned("0"&input1) + unsigned("0"&input2);

    -- Here, we need to cast from unsigned back to std_logic for the I/O,
    -- which is of type std_logic or std_logic_vector.
    --
    -- ****Important******
    -- Do not confuse this with not casting the result of the add in previous
    -- examples. To convert between types, you must explicitly use casts. The +
    -- function (and other std_logic_arith functions) are special cases.

    output <= std_logic_vector(temp_add(WIDTH-1 downto 0));
    carry  <= std_logic(temp_add(WIDTH));

    -- Note:
    -- You may wonder why the I/O isn't of type unsigned. This is possible,
    -- but is not suggested because for whatever reason, many tools expect
    -- std_logic_vector for all top-level I/O. If you make the I/O unsigned,
    -- then you can't use it as a top-level entity.

  end process;


end BHV3;

