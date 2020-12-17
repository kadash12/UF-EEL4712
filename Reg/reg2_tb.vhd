

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg2_tb is
end reg2_tb;


architecture TB of reg2_tb is

  component reg2
    generic (
      width  :     positive := 8);
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      load   : in  std_logic;
      clear  : in  std_logic;
      input  : in  std_logic_vector(width-1 downto 0);
      output : out std_logic_vector(width-1 downto 0));
  end component;

  constant TEST_WIDTH : positive := 16;

  signal clk        : std_logic := '0';
  signal rst        : std_logic;
  signal clear      : std_logic;
  signal load       : std_logic;
  signal input      : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal output     : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal output_bad : std_logic_vector(TEST_WIDTH-1 downto 0);

begin  -- TB

  U_REG : entity work.reg2(BHV)
    generic map (
      width  => TEST_WIDTH)
    port map (
      clk    => clk,
      rst    => rst,
      clear  => clear,
      load   => load,
      input  => input,
      output => output);

  U_REG_BAD : entity work.reg2(BAD)
    generic map (
      width  => TEST_WIDTH)
    port map (
      clk    => clk,
      rst    => rst,
      clear  => clear,
      load   => load,
      input  => input,
      output => output_bad);

  clk <= not clk after 10 ns;

  process
  begin

    rst   <= '1';
    clear <= '0';
    load  <= '0';
    input <= (others => '0');
    wait for 100 ns;
    rst   <= '0';
    wait until clk'event and clk = '1';
    wait until clk'event and clk = '1';

    -- test some inputs
    for i in 0 to 2**(TEST_WIDTH-1) loop

      input <= std_logic_vector(to_unsigned(i, TEST_WIDTH));

      for j in 0 to 3 loop
        clear <= '0';
        load  <= '1';
        wait until clk'event and clk = '1';
      end loop;  -- j

      for j in 0 to 3 loop
        load <= '0';
        wait until clk'event and clk = '1';
      end loop;  -- j

      for j in 0 to 3 loop
        clear <= '1';
        wait until clk'event and clk = '1';
      end loop;  -- j

    end loop;  -- i

    wait;

  end process;

end TB;
