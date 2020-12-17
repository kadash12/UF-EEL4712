-- Greg Stitt
-- University of Florida
--
-- This file implements a structural architecture for the datapath shown in
-- datapath.pdf. As always, make sure to create a drawing/schematic before
-- writing structural VHDL.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
  generic (
    width  :     positive := 16);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    input  : in  std_logic_vector(width-1 downto 0);
    output : out std_logic_vector(width-1 downto 0);

    -- signals to/from controller

    value_ld   : in  std_logic;
    value_sel  : in  std_logic;
    count_ld   : in  std_logic;
    count_sel  : in  std_logic;
    count_done : out std_logic;
    diff_ld    : in  std_logic;
    diff_sel   : in  std_logic;
    output_ld  : in  std_logic);
end datapath;

architecture STR of datapath is

  signal value_mux_out   : std_logic_vector(width-1 downto 0);
  signal value_shifted   : std_logic_vector(width-1 downto 0);
  signal value_out       : std_logic_vector(width-1 downto 0);
  signal add_sub_mux_out : std_logic_vector(width-1 downto 0);
  signal diff_mux_out    : std_logic_vector(width-1 downto 0);
  signal diff_out        : std_logic_vector(width-1 downto 0);
  signal add_out         : std_logic_vector(width-1 downto 0);
  signal sub_out         : std_logic_vector(width-1 downto 0);
  signal count_mux_out   : std_logic_vector(width-1 downto 0);
  signal count_out       : std_logic_vector(width-1 downto 0);
  signal count_add_out   : std_logic_vector(width-1 downto 0);

  constant C_0       : std_logic_vector(width-1 downto 0) := std_logic_vector(to_unsigned(0, width));
  constant C_1       : std_logic_vector(width-1 downto 0) := std_logic_vector(to_unsigned(1, width));
  constant C_MAX_BIT : std_logic_vector(width-1 downto 0) := std_logic_vector(to_unsigned(width, width));

begin

  U_VALUE_MUX : entity work.mux2x1
    generic map (
      width  => width)
    port map (
      in1    => input,
      in2    => value_shifted,
      sel    => value_sel,
      output => value_mux_out);

  -- The mux could also be done by concurrent assignment:
  -- value_mux_out <= value_shifted when value_sel = '0' else
  --                  input;
  -- or, 
  --
  -- with value_sel select
  --  value_mux_out <=
  --  value_shifted when '0',
  --  input when others;

  -- To be purely structural, the shift right would need to be a separate
  -- entity, but this shows that you can also include behavior in a structural
  -- description when it is more convenient.
  value_shifted <= std_logic_vector(shift_right(unsigned(value_out), 1));

  U_VALUE_REG : entity work.reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => value_ld,
      input  => value_mux_out,
      output => value_out);

  U_ADD_SUB_MUX : entity work.mux2x1
    generic map (
      width  => width)
    port map (
      in1    => add_out,
      in2    => sub_out,
      sel    => value_out(0),
      output => add_sub_mux_out);

  U_DIFF_MUX : entity work.mux2x1
    generic map (
      width  => width)
    port map (
      in1    => C_0,
      in2    => add_sub_mux_out,
      sel    => diff_sel,
      output => diff_mux_out);

  U_DIFF_REG : entity work.reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => diff_ld,
      input  => diff_mux_out,
      output => diff_out);

  U_ADD : entity work.add
    generic map (
      width  => width)
    port map (
      in1    => diff_out,
      in2    => C_1,
      output => add_out);

  -- add could also be done by concurrent assignement:
  -- add_out <= std_logic_vector(signed(diff_out))+1); 

  U_SUB : entity work.sub
    generic map (
      width  => width)
    port map (
      in1    => diff_out,
      in2    => C_1,
      output => sub_out);

  -- sub could also be done by concurrent assignement:
  -- sub_out <= std_logic_vector(signed(sub_out))-1); 

  U_OUTPUT : entity work.reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => output_ld,
      input  => diff_out,
      output => output);

  U_COUNT_MUX : entity work.mux2x1
    generic map (
      width  => width)
    port map (
      in1    => C_0,
      in2    => count_add_out,
      sel    => count_sel,
      output => count_mux_out);

  U_COUNT : entity work.reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => count_ld,
      input  => count_mux_out,
      output => count_out);

  U_COUNT_ADD : entity work.add
    generic map (
      width  => width)
    port map (
      in1    => count_out,
      in2    => C_1,
      output => count_add_out);

  -- add could also be done by concurrent assignement:
  -- count_add_out <= std_logic_vector(signed(count_out))+1); 

  -- instantiate the comparator using the architecture that assumes unsigned
  -- inputs. Note that some of the outputs have the keyword "open". This is an
  -- explicit way of telling the synthesis tool that these outputs should be
  -- disconnected. Currently, ISE will still generate a warning for this, even
  -- though it shouldn't.
  U_COUNT_COMPARE : entity work.comp(UNSIGNED_INPUTS)
    generic map (
      width => width)
    port map (
      in1   => count_out,
      in2   => C_MAX_BIT,
      lt    => open,
      eq    => count_done,
      gt    => open);

  -- I could have also replaced the comparator entity with a single
  -- concurrent statement:
  --  count_done <= '1' when count_out = to_unsigned(16,width) else '0';

end STR;
