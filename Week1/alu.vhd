--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS ALU

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	generic (
        WIDTH : positive := 16
    );
	port(
		RegA, RegB : in std_logic_vector(WIDTH-1 downto 0);
        IR, OpSel   : in std_logic_vector(4 downto 0);
        Result, ResultHi : out std_logic_vector(WIDTH-1 downto 0);
        Branch     : out std_logic
		);
end alu;

architecture BHV of alu is 
    constant add  		: std_logic_vector(4 downto 0) := "00000"; -- add unsigned
    constant sub 		: std_logic_vector(4 downto 0) := "00001"; -- sub unsigned
    constant mul_s 		: std_logic_vector(4 downto 0) := "00010"; -- multiply signed
    constant mul_u 		: std_logic_vector(4 downto 0) := "00011"; -- multiply unsigned
    constant and_op    	: std_logic_vector(4 downto 0) := "00100"; -- and
    constant or_op     	: std_logic_vector(4 downto 0) := "00101"; -- or
    constant xor_op    	: std_logic_vector(4 downto 0) := "00110"; -- xor
    constant shr_l  	: std_logic_vector(4 downto 0) := "00111"; -- shift right logical
    constant shl_l  	: std_logic_vector(4 downto 0) := "01000"; -- shift left logical
    constant shr_a  	: std_logic_vector(4 downto 0) := "01001"; -- shift right arithmetic
    constant set_s  	: std_logic_vector(4 downto 0) := "01010"; -- set on < signed
    constant set_u  	: std_logic_vector(4 downto 0) := "01011"; -- set on < unsigned
    constant eq	    	: std_logic_vector(4 downto 0) := "01100"; -- branch =
    constant ne   	 	: std_logic_vector(4 downto 0) := "01101"; -- branch !=
    constant lteq  		: std_logic_vector(4 downto 0) := "01110"; -- branch <=0
    constant gt   		: std_logic_vector(4 downto 0) := "01111"; -- branch >0
    constant lt 		: std_logic_vector(4 downto 0) := "10000"; -- Branch <0
    constant gteq   	: std_logic_vector(4 downto 0) := "10001"; -- Branch >=
	constant jmp		: std_logic_vector(4 downto 0) := "10010"; -- Jump
	 
begin
    process(RegA, RegB, IR, OpSel)
        variable temp_mult : std_logic_vector(width*2-1 downto 0);
		  
    begin
		Result <= (others => '0');
		ResultHi <= (others => '0');
        Branch <= '0';
        case OpSel is
            when add  => --add unsigned
                Result <= std_logic_vector(unsigned(RegA) + unsigned(RegB));
            when sub => --subtract unsigned
                Result <= std_logic_vector(unsigned(RegA) - unsigned(RegB));
            when mul_s => --multiply signed
                temp_mult := std_logic_vector(signed(RegA) * signed(RegB));
                Result <= temp_mult(width-1 downto 0);
                ResultHi <= temp_mult(width*2-1 downto width);
            when mul_u => --multiply unsigned
                temp_mult := std_logic_vector(unsigned(RegA) * unsigned(RegB));
                Result <= temp_mult(width-1 downto 0);
                ResultHi <= temp_mult(width*2-1 downto width);
            when and_op    => --and
                Result <= RegA and RegB;
            when or_op     => --or
                Result <= RegA or RegB;
            when xor_op    => --xor
                Result <= RegA xor RegB;
            when shr_l  => --shift right logical
                Result <= std_logic_vector(SHIFT_RIGHT(unsigned(RegB), to_integer(unsigned(IR))));
                ResultHi <= (others => '0');
                Branch <= '0';
            when shl_l  => --shift left logical
                Result <= std_logic_vector(SHIFT_LEFT(unsigned(RegB), to_integer(unsigned(IR))));
            when shr_a  => --shift right arithmetic
                Result <= std_logic_vector(SHIFT_RIGHT(signed(RegB), to_integer(unsigned(IR))));
            when set_s  => --set less than signed
                if (signed(RegA) < signed(RegB)) then
                    Result <= std_logic_vector(to_unsigned(1, width));
                else
                    Result <= (others => '0');
                end if;
            when set_u  => --set less than unsigned
                if (unsigned(RegA) < unsigned(RegB)) then
                    Result <= std_logic_vector(to_unsigned(1, width));
                else
                    Result <= (others => '0');
                end if;
            when eq    => --branch if equal to
                if (signed(RegA) = signed(RegB)) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
            when ne    => --branch if not equal to
                if (signed(RegA) /= signed(RegB)) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
            when lteq   => --branch if less than or equal to 0
                if (signed(RegA) <= 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
            when gt   => --branch if greater than 0
                if (signed(RegA) > 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
            when lt => --branch if less than 0
                if (signed(RegA) < 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
            when gteq   => --branch if greater than or equal to 0
                if (signed(RegA) >= 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
			when jmp		=> --jump to RegA
				Result <= RegA;
            when others => --invalid operations
                Result <= (others => '0');
                ResultHi <= (others => '0');
                Branch <= '0';
        end case;
    end process;
end BHV;