
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ALU with generic width that does addition (sel = "00"),
-- subtraction (sel="01"), and (sel="10"), or (sel="11"). There are also
-- status flags to signify positive, negative, and zero results.
-- For illustrative purposes, assume the flags can be set to any value for
-- the "and" and "or" cases.

entity alu is
  generic (
    width : positive := 8);
  port (
    in1    : in  std_logic_vector(width-1 downto 0);
    in2    : in  std_logic_vector(width-1 downto 0);
    sel    : in  std_logic_vector(1 downto 0);
    neg    : out std_logic;
    pos    : out std_logic;
    zero   : out std_logic;
    output : out std_logic_vector(width-1 downto 0));
end alu;

-- Although this architecture will simulate correctly, there is a synthesis
-- problem. Note that the status flags are not defined by the "and" or "or"
-- cases, which is ok because we originally defined the flags as meaningless
-- for these operations. However, we are describing combinational logic. What
-- happens to the flags if the "and" or "or" cases are selected according to
-- this code? The answer is that flags must preserve their previous values.
-- Using combinational logic, how can you preserve a value? In general,
-- you can't, which is the purpose of sequential logic. So, what ends up
-- happening is that the synthesis tool will infer latches. Although this
-- technically works (although there may be timing problems), you should
-- avoid it unless you explicitly want to use a latch, which is unlikely.
-- To solve this problem, every path through the process has to define each
-- output and signal. In this example, the paths through the "and" and "or"
-- cases do not define the flag outputs, and therefore result in latches.
--
-- SYNTHESIS GUIDELINE 2 FOR COMBINATIONAL LOGIC: Make sure that every path
-- through the process defines every output and internal signal.

architecture BAD1 of alu is
begin  -- BAD

  -- Remember to use combination synthesis guideline 1 (put all inputs in
  -- sensitivity list)

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);
  begin
    case sel is
      when "00" =>
        -- must case in1 and in2 to either signed or unsigned because addition
        -- is not defined for std_logic_vector when using ieee.numeric_std  
        temp := signed(in1)+signed(in2);

        -- set the flags

        if (temp > 0) then
          pos  <= '1';
          neg  <= '0';
          zero <= '0';
        elsif (temp = 0) then
          pos  <= '0';
          neg  <= '0';
          zero <= '1';
        else
          pos  <= '0';
          neg  <= '1';
          zero <= '0';
        end if;

      when "01" =>
        -- same thing except using substraction
        temp := signed(in1)-signed(in2);

        if (temp > 0) then
          pos  <= '1';
          neg  <= '0';
          zero <= '0';
        elsif (temp = 0) then
          pos  <= '0';
          neg  <= '0';
          zero <= '1';
        else
          pos  <= '0';
          neg  <= '1';
          zero <= '0';
        end if;

      when "10" =>
        temp := signed(in1 and in2);

      when "11" =>
        temp := signed(in1 or in2);

      when others => null;
    end case;

    output <= std_logic_vector(temp);

  end process;
end BAD1;


architecture GOOD1 of alu is
begin  -- GOOD1

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);
  begin
    case sel is
      when "00" =>
        temp := signed(in1)+signed(in2);

      when "01" =>
        temp := signed(in1)-signed(in2);

      when "10" =>
        temp := signed(in1 and in2);

      when "11" =>
        temp := signed(in1 or in2);

      when others => null;
    end case;

    -- by moving the flag definitions outside of the case statement, we
    -- guarantee that all the flags are defined by all paths.

    if (temp > 0) then
      pos  <= '1';
      neg  <= '0';
      zero <= '0';
    elsif (temp = 0) then
      pos  <= '0';
      neg  <= '0';
      zero <= '1';
    else
      pos  <= '0';
      neg  <= '1';
      zero <= '0';
    end if;

    output <= std_logic_vector(temp);

  end process;
end GOOD1;


architecture GOOD2 of alu is
begin  -- GOOD2

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);
  begin
    case sel is
      when "00" =>
        temp := signed(in1)+signed(in2);

      when "01" =>
        temp := signed(in1)-signed(in2);

      when "10" =>
        temp := signed(in1 and in2);

      when "11" =>
        temp := signed(in1 or in2);

      when others => null;
    end case;

    -- another option that is prefered in many cases is to assign default
    -- values to each output, and then only update the value within the if
    -- statement. This requires less assignments and tends to be less error
    -- prone. This is especially useful when dealing with many outputs. Note
    -- this only works when using sequential statements (i.e. inside a
    -- process). Multiple concurrent assignements (i.e. outside a process) to a
    -- signal will result an error. Similarly, multiple processes defining the
    -- same signal will also result in an error.

    pos  <= '0';
    neg  <= '0';
    zero <= '0';

    if (temp > 0) then
      pos  <= '1';
    elsif (temp = 0) then
      zero <= '1';
    else
      neg  <= '1';
    end if;

    output <= std_logic_vector(temp);
  end process;
end GOOD2;


architecture GOOD3 of alu is

  -- We can use constants to make the case statements more readable
  
  constant C_ADD : std_logic_vector(1 downto 0) := "00";
  constant C_SUB : std_logic_vector(1 downto 0) := "01";
  constant C_AND : std_logic_vector(1 downto 0) := "10";
  constant C_OR  : std_logic_vector(1 downto 0) := "11";

begin  -- GOOD3

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);
  begin
    case sel is
      when C_ADD =>
        temp := signed(in1)+signed(in2);

      when C_SUB =>
        temp := signed(in1)-signed(in2);

      when C_AND =>
        temp := signed(in1 and in2);

      when C_OR =>
        temp := signed(in1 or in2);

      when others => null;
    end case;

    pos  <= '0';
    neg  <= '0';
    zero <= '0';

    if (temp > 0) then
      pos  <= '1';
    elsif (temp = 0) then
      zero <= '1';
    else
      neg  <= '1';
    end if;

    output <= std_logic_vector(temp);
  end process;
end GOOD3;


architecture GOOD4 of alu is

  constant C_ADD : std_logic_vector(1 downto 0) := "00";
  constant C_SUB : std_logic_vector(1 downto 0) := "01";
  constant C_AND : std_logic_vector(1 downto 0) := "10";
  constant C_OR  : std_logic_vector(1 downto 0) := "11";

begin  -- GOOD4

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);
  begin

    -- In this example, the default values are assigned at the beginning of the
    -- process, which is what I would recommend.

    pos  <= '0';
    neg  <= '0';
    zero <= '0';

    case sel is
      when C_ADD =>
        temp := signed(in1)+signed(in2);

        -- Here, the flag code is replicated for both add and sub (an
        -- improvement will be shown in the next architecture), which allows us
        -- to handle the flags differently in each case.

        if (temp > 0) then
          pos  <= '1';
        elsif (temp = 0) then
          zero <= '1';
        else
          neg  <= '1';
        end if;

      when C_SUB =>
        temp := signed(in1)-signed(in2);

        if (temp > 0) then
          pos  <= '1';
        elsif (temp = 0) then
          zero <= '1';
        else
          neg  <= '1';
        end if;

      when C_AND =>
        temp := signed(in1 and in2);

        -- Because the flags were defined as meaningless for "and" and "or", we
        -- can assign them dont-care values (i.e., '-'), which may allow the
        -- synthesis tool to perform more optimization.

        pos  <= '-';
        zero <= '-';
        neg  <= '-';

      when C_OR =>
        temp := signed(in1 or in2);

        pos  <= '-';
        zero <= '-';
        neg  <= '-';

      when others => null;
    end case;

    output <= std_logic_vector(temp);
  end process;
end GOOD4;


architecture GOOD5 of alu is

  constant C_ADD : std_logic_vector(1 downto 0) := "00";
  constant C_SUB : std_logic_vector(1 downto 0) := "01";
  constant C_AND : std_logic_vector(1 downto 0) := "10";
  constant C_OR  : std_logic_vector(1 downto 0) := "11";

begin  -- GOOD5

  process(in1, in2, sel)
    variable temp : signed(width-1 downto 0);

    procedure updateFlags(variable result : in signed(width-1 downto 0)) is
    begin

      pos  <= '0';
      neg  <= '0';
      zero <= '0';

      if (result > 0) then
        pos  <= '1';
      elsif (result = 0) then
        zero <= '1';
      else
        neg  <= '1';
      end if;
    end updateFlags;

    procedure dontCareFlags is
    begin
      pos  <= '-';
      zero <= '-';
      neg  <= '-';
    end dontCareFlags;

  begin

    case sel is
      when C_ADD =>
        temp := signed(in1)+signed(in2);

        -- Instead of copying and pasting the flag code, make a procedure and
        -- call it every place you need to update the flags.

        updateFlags(temp);

      when C_SUB =>
        temp := signed(in1)-signed(in2);
        updateFlags(temp);

      when C_AND =>
        temp := signed(in1 and in2);
        dontCareFlags;

      when C_OR =>
        temp := signed(in1 or in2);
        dontCareFlags;

      when others => null;
    end case;

    output <= std_logic_vector(temp);
  end process;
end GOOD5;


