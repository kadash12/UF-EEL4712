-- Greg Stitt
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end tb;

architecture BHV of tb is

  constant TEST_WIDTH : positive := 8;
  constant TIMEOUT    : time     := TEST_WIDTH*100 ns;

  signal clk          : std_logic := '0';
  signal rst          : std_logic;
  signal go           : std_logic;
  signal input        : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal output_fsmd1 : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal output_fsmd2 : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal output_fsm_d : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal done_fsmd1   : std_logic;
  signal done_fsmd2   : std_logic;
  signal done_fsm_d   : std_logic;
  signal done         : std_logic := '0';

  function checkOutput (
    signal input : std_logic_vector)
    return signed is

    variable count : integer range -TEST_WIDTH to TEST_WIDTH;
  begin

    count := 0;

    for i in 0 to TEST_WIDTH-1 loop
      if (input(i) = '1') then
        count := count + 1;
      else
        count := count - 1;
      end if;
    end loop;  -- i

    return to_signed(count, TEST_WIDTH);
  end checkOutput;

begin

  U_FSMD_1PROC : entity work.bit_diff(FSMD_1P)
    generic map (
      width  => TEST_WIDTH)
    port map (
      clk    => clk,
      rst    => rst,
      go     => go,
      input  => input,
      output => output_fsmd1,
      done   => done_fsmd1);

  U_FSMD_2PROC : entity work.bit_diff(FSMD_2P)
    generic map (
      width  => TEST_WIDTH)
    port map (
      clk    => clk,
      rst    => rst,
      go     => go,
      input  => input,
      output => output_fsmd2,
      done   => done_fsmd2);


  U_FSM_D : entity work.bit_diff(FSM_D)
    generic map (
      width  => TEST_WIDTH)
    port map (
      clk    => clk,
      rst    => rst,
      go     => go,
      input  => input,
      output => output_fsm_d,
      done   => done_fsm_d);

  clk <= not clk after 10 ns when done = '0' else
         clk;

  process
  begin
    rst   <= '1';
    go    <= '0';
    input <= (others => '0');
    for i in 0 to 5 loop
      wait until clk'event and clk = '1';
    end loop;  -- i

    rst <= '0';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';

    -- exhaustive test: this will take a long time for large widths

    for i in 0 to 2**TEST_WIDTH-1 loop
      input <= std_logic_vector(to_unsigned(i, TEST_WIDTH));
      go    <= '1';
      wait until clk'event and clk = '1';
      go    <= '0';
      wait for TIMEOUT;
    end loop;  -- i

    report "SIMULATION COMPLETE!!!!";
    done <= '1';
    wait;

  end process;

  process
  begin
    wait until go = '1';
    wait until done_fsmd1 = '1' for TIMEOUT;
    assert(done_fsmd1 = '1') report "FSMD_1P never asserts done.";
    assert(signed(output_fsmd1) = checkOutput(input)) report "Output from FSMD_1P is incorrect";
  end process;

  process
  begin
    wait until go = '1';
    wait until done_fsmd2 = '1' for TIMEOUT;
    assert(done_fsmd2 = '1') report "FSMD_2P never asserts done.";
    assert(signed(output_fsmd2) = checkOutput(input)) report "Output from FSMD_2P is incorrect";
  end process;

  process
  begin
    wait until go = '1';
    wait until done_fsm_d = '1' for TIMEOUT;
    assert(done_fsm_d = '1') report "FSM_D never asserts done.";
    assert(signed(output_fsm_d) = checkOutput(input)) report "Output from FSM_D is incorrect";
  end process;

end BHV;
