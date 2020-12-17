library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is

    component alu_top
        generic (
            WIDTH : positive := 8
            );
        port (
             in1    : in  std_logic_vector(width-1 downto 0);
    	     in2    : in  std_logic_vector(width-1 downto 0);
    	     sel    : in  std_logic_vector(1 downto 0);
             neg    : out std_logic;
             pos    : out std_logic;
             zero   : out std_logic;
             output : out std_logic_vector(width-1 downto 0)
            );
    end component;

    constant WIDTH  : positive                           := 6;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(1 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal neg, pos, zero : std_logic;

begin  -- TB

    UUT : alu_top
        generic map (WIDTH => WIDTH)
        port map (
            in1   => input1,
            in2   => input2,
            sel      => sel,
            output   => output,
            neg => neg,
	    pos => pos,
	    zero => zero);

    process
    begin

        -- test 2+6 (no overflow)
        sel    <= "00";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(pos = '1') report "Error                                   : overflow incorrect for 2+8" severity warning;

        -- test 250+50 (with overflow)
        sel    <= "01";
        input1 <= conv_std_logic_vector(12, input1'length);
        input2 <= conv_std_logic_vector(12, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 12-12 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(zero = '1') report "Error                                     : zero incorrect for 12-12" severity warning;

        -- test 5*6
        sel    <= "00";
        input1 <= conv_std_logic_vector(-8, input1'length);
        input2 <= conv_std_logic_vector(2, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(-6, output'length)) report "Error : -8+2 = " & integer'image(conv_integer(output)) & " instead of -6" severity warning;
        assert(neg = '1') report "Error                                    : nagative sign incorrect for -8+2" severity warning;

        -- test 50*60
        sel    <= "10";
        input1 <= conv_std_logic_vector(1, input1'length);
        input2 <= conv_std_logic_vector(3, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error : 1 and 3 = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(zero = '0') report "Error                                      : zero incorrect for 1 and 3" severity warning;

        -- add many more tests

        wait;

    end process;



end TB;

