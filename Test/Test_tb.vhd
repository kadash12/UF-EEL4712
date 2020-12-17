library ieee;
use ieee.std_logic_1164.all;

entity Test_tb is
end Test_tb;

architecture TB of Test_tb is

    component ADD

     	port (     
	input1, input2 : in  std_logic_vector(15 downto 0);     
	output         : out std_logic_vector(15 downto 0);     
	overflow       : out std_logic); 
		end component; 

begin  -- TB

    UUT : add
        port map (
            input1   => input1,
            input2   => input2,
            output   => output,
            overflow => overflow);

    process
    begin

        -- test 2+6 (no overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(100, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(150, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 2+8" severity warning;

        -- test 250+50 (with overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(150, input1'length);
        input2 <= conv_std_logic_vector(25, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(175, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
        assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;

        -- test 5*6
        sel    <= "0010";
        input1 <= conv_std_logic_vector(30, input1'length);
        input2 <= conv_std_logic_vector(60, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(90, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;


	report "SIMULATION FINISHED!";		--FINISHED
        wait;
    end process;
end TB;
