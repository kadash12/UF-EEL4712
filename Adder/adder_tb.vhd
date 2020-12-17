-- Greg Stitt
-- University of Florida

-- Exhaustive testbench for the adder. Be aware that increasing the TEST_WIDTH
-- constant could make the simulation take a very long time.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_tb is
end adder_tb;

architecture TB of adder_tb is

  constant TEST_WIDTH : positive := 8;

  signal x    : std_logic_vector(TEST_WIDTH-1 downto 0) := (others => '0');
  signal y    : std_logic_vector(TEST_WIDTH-1 downto 0) := (others => '0');
  signal s    : std_logic_vector(TEST_WIDTH-1 downto 0) := (others => '0');
  signal cin  : std_logic := '0';
  signal cout : std_logic;

begin  -- TB

  UUT : entity work.adder
    generic map (
      width => TEST_WIDTH)
    port map (
      x     => x,
      y     => y,
      s     => s,
      cin   => cin,
      cout  => cout);

  process
    variable temp         : std_logic_vector(TEST_WIDTH downto 0);
    variable correct_sum  : std_logic_vector(TEST_WIDTH-1 downto 0);
    variable correct_cout : std_logic;
    
  begin

    -- test all input combinations
    for i in 0 to 2**TEST_WIDTH-1 loop
      for j in 0 to 2**TEST_WIDTH-1 loop
        for k in 0 to 1 loop

          x   <= std_logic_vector(to_unsigned(i, 8));
          y   <= std_logic_vector(to_unsigned(j, 8));
          cin <= std_logic(to_unsigned(k, 1)(0));
          wait for 10 ns;

          -- check for correct outputs
          temp         := std_logic_vector(to_unsigned(i, TEST_WIDTH+1)+to_unsigned(j, TEST_WIDTH+1)+to_unsigned(k, 1));
          correct_sum  := temp(TEST_WIDTH-1 downto 0);
          correct_cout := temp(TEST_WIDTH);
          assert(s = correct_sum) report "Sum incorrect";
          assert(cout = correct_cout) report "Carry out incorrect";

        end loop;  -- k
      end loop;  -- j
    end loop;  -- i

    report "SIMULATION DONE!";
    wait;

  end process;

end TB;
