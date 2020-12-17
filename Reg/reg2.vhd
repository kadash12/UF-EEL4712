

library ieee;
use ieee.std_logic_1164.all;

entity reg2 is
  generic (
    width  :     positive := 8);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    load   : in  std_logic;
    clear  : in  std_logic;
    input  : in  std_logic_vector(width-1 downto 0);
    output : out std_logic_vector(width-1 downto 0));
end reg2;

architecture BHV of reg2 is
begin

  -- following guideline 1. Note that load and clear are intentionally not
  -- included here
  process(clk, rst)
  begin

    -- following guideline 2 
    if (rst = '1') then
      output   <= (others => '0');
    elsif (clk'event and clk = '1') then
      -- in this example, we combine an asynchronous reset with a synchronous
      -- clear, and also use a load signal that only stores values when
      -- asserted. Note that all behavior other than the reset is placed inside
      -- the rising clock elsif
      if (clear = '1') then
        output <= (others => '0');
      elsif (load = '1') then
        output <= input;
      end if;
    end if;
  end process;
end BHV;


architecture BAD of reg2 is
begin
  process(clk, rst)
  begin
    if (rst = '1') then
      output <= (others => '0');

      -- Although this may simulate correctly, this violates my guideline of
      -- including all synchronous behavior inside the rising clock elsif.
      -- There are actually two problems here. One is that the condition
      -- should only check the rising clock edge and not clear or load. The
      -- second problem is that there should only be one rising clock edge
      -- elsif.
      -- 
      -- Here is the error I get in ISE:
      -- line 46: Signal output cannot be synthesized, bad synchronous
      -- description. The description style you are using to describe a
      -- synchronous element (register, memory, etc.) is not supported in the
      -- current software release.
      --
      -- What is important to realize is that in other situations, you may not
      -- get an error message like this, so you will think it synthesizes, but
      -- when you actually test it, your circuit does not work. Avoid these
      -- problems and follow the guidelines!
      
    elsif (clk'event and clk = '1' and clear = '1') then
      output <= (others => '0');
    elsif (clk'event and clk = '1' and load = '1') then
      output <= input;
    end if;
  end process;
end BAD;
