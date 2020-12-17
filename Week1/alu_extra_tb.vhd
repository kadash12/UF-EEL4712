--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS ALU exhaustive testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_extra_tb is
end alu_extra_tb;

architecture TB of alu_extra_tb is
	constant WIDTH  : positive := 8;
	signal RegA, RegB   : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
	signal IR, OpSel	: std_logic_vector(4 downto 0) := (others=>'0');
	signal Result, ResultHi		: std_logic_vector(WIDTH-1 downto 0);
	signal Branch   : std_logic := '0';
	
	constant add  		: std_logic_vector(4 downto 0) := "00000"; -- add unsigned
    constant sub  		: std_logic_vector(4 downto 0) := "00001"; -- sub unsigned
    constant mul_s 		: std_logic_vector(4 downto 0) := "00010"; -- multiply signed
    constant mul_u 		: std_logic_vector(4 downto 0) := "00011"; -- multiply unsigned
    constant and_op    	: std_logic_vector(4 downto 0) := "00100"; -- and
    constant or_op     	: std_logic_vector(4 downto 0) := "00101"; -- or
    constant xor_op    	: std_logic_vector(4 downto 0) := "00110"; -- xor
    constant shr_l  	: std_logic_vector(4 downto 0) := "00111"; -- shift right logical
    constant shl_l  	: std_logic_vector(4 downto 0) := "01000"; -- shift left logical
    constant shr_a  	: std_logic_vector(4 downto 0) := "01001"; -- shift right arithmetic
    constant set_s  	: std_logic_vector(4 downto 0) := "01010"; -- set on < signed
    constant set_u 		: std_logic_vector(4 downto 0) := "01011"; -- set on < unsigned
    constant eq    		: std_logic_vector(4 downto 0) := "01100"; -- branch =
    constant ne    		: std_logic_vector(4 downto 0) := "01101"; -- branch !=
    constant lteq  		: std_logic_vector(4 downto 0) := "01110"; -- branch <=0
    constant gt    		: std_logic_vector(4 downto 0) := "01111"; -- branch >0
    constant lt   	 	: std_logic_vector(4 downto 0) := "10000"; -- Branch <0
    constant gteq   	: std_logic_vector(4 downto 0) := "10001"; -- Branch >=
	constant jmp		: std_logic_vector(4 downto 0) := "10010"; -- Jump
	 
begin
UUT: entity work.alu
	generic map ( WIDTH => WIDTH )
	port map (
		RegA   => RegA,
		RegB   => RegB,
		IR	   => IR,
		OpSel  => OpSel,
		Result   => Result,
		ResultHi => ResultHi,
		Branch   => Branch
	);
		
	process
	begin 
	--Loop through all possiblity
	for i in 0 to 2**(WIDTH)-1 loop
		for j in 0 to 2**(WIDTH)-1 loop
			RegA <= std_logic_vector(to_unsigned(i, WIDTH));	--RegA hold outer loop
			RegB <= std_logic_vector(to_unsigned(j, WIDTH));	--RegB hold inner loop
			--Copy and paste from original testbench, logical expressions
			OpSel<= add;	
			wait for 10 ns;
			assert(Result = std_logic_vector(to_unsigned(i, WIDTH)+to_unsigned(j, WIDTH))) report "add Result incorrect" severity failure;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "add ResultHi incorrect" severity failure;
			assert(Branch = '0') report "add Branch incorrect" severity failure;

			OpSel<= sub;
			wait for 10 ns;
			assert(Result = std_logic_vector(to_unsigned(i, WIDTH)-to_unsigned(j, WIDTH))) report "sub Result incorrect" severity failure;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "sub ResultHi incorrect" severity failure;
			assert(Branch = '0') report "sub Branch incorrect" severity failure;

			OpSel<= mul_s;
			wait for 10 ns;
			assert(ResultHi&Result = std_logic_vector(to_signed(i, WIDTH)*to_signed(j, WIDTH))) report "mul_s Result&ResultHi incorrect" severity failure;
			assert(Branch = '0') report "mul_s Branch incorrect" severity failure;

			OpSel<= mul_u;
			wait for 10 ns;
			assert(ResultHi&Result = std_logic_vector(to_unsigned(i, WIDTH)*to_unsigned(j, WIDTH))) report "mul_u Result&ResultHi incorrect" severity failure;
			assert(Branch = '0') report "mul_u Branch incorrect" severity failure;

			OpSel<= and_op;
			wait for 10 ns;
			assert(Result = std_logic_vector(to_unsigned(i, WIDTH) and to_unsigned(j, WIDTH))) report "and_op Result incorrect" severity failure;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "and_op ResultHi incorrect" severity failure;
			assert(Branch = '0') report "and_op Branch incorrect" severity failure;

			OpSel<= or_op;
			wait for 10 ns;
			assert(Result = std_logic_vector(to_unsigned(i, WIDTH) or to_unsigned(j, WIDTH))) report "or_op Result incorrect" severity failure;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "or_op ResultHi incorrect" severity failure;
			assert(Branch = '0') report "or_op Branch incorrect" severity failure;

			OpSel<= xor_op;
			wait for 10 ns;
			assert(Result = std_logic_vector(to_unsigned(i, WIDTH) xor to_unsigned(j, WIDTH))) report "xor_op Result incorrect" severity failure;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "xor_op ResultHi incorrect" severity failure;
			assert(Branch = '0') report "xor_op Branch incorrect" severity failure;
			
			--Shift loop 8 bits 
			for k in 0 to 8 loop
				--Shift through all bits
				IR <= std_logic_vector(to_unsigned(k,5));
				wait for 10 ns;

				OpSel<= shr_l;
				wait for 10 ns;
				assert(Result = std_logic_vector(SHIFT_RIGHT(to_unsigned(j, WIDTH), k))) report "shr_l Result incorrect" severity failure;
				assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shr_l ResultHi incorrect" severity failure;
				assert(Branch = '0') report "shr_l Branch incorrect" severity failure;

				OpSel<= shl_l;
				wait for 10 ns;
				assert(Result = std_logic_vector(SHIFT_LEFT(to_unsigned(j, WIDTH), k))) report "shl_l Result incorrect" severity failure;
				assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shl_l ResultHi incorrect" severity failure;
				assert(Branch = '0') report "shl_l Branch incorrect" severity failure;

				OpSel<= shr_a;
				wait for 10 ns;
				assert(Result = std_logic_vector(SHIFT_RIGHT(to_signed(j, WIDTH), k))) report "shr_a Result incorrect" severity failure;
				assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shr_a ResultHi incorrect" severity failure;
				assert(Branch = '0') report "shr_a Branch incorrect" severity failure;
			end loop; 
			
			--Equality check
			OpSel<= set_s;
			wait for 10 ns;
			if (to_signed(i, WIDTH) < to_signed(j, WIDTH)) then
			  assert(Result = std_logic_vector(to_unsigned(1,WIDTH))) report "set_s Result incorrect" severity failure;
			else
			  assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "set_s Result incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "set_s ResultHi incorrect" severity failure;
			assert(Branch = '0') report "set_s Branch incorrect" severity failure;

			OpSel<= set_u;
			wait for 10 ns;
			if (to_unsigned(i, WIDTH) < to_unsigned(j, WIDTH)) then
			  assert(Result = std_logic_vector(to_unsigned(1,WIDTH))) report "set_uResult incorrect" severity failure;
			else
			  assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "set_uResult incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "set_uResultHi incorrect" severity failure;
			assert(Branch = '0') report "set_uBranch incorrect" severity failure;
			
			--Branch check
			OpSel<= eq;
			wait for 10 ns;
			if (to_signed(i, WIDTH) = to_signed(j, WIDTH)) then
			  assert(Branch = '1') report "eq Branch incorrect" severity failure;
			else
			  assert(Branch = '0') report "eq Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "eq ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "eq Result incorrect" severity failure;

			OpSel<= ne;
			wait for 10 ns;
			if (to_signed(i, WIDTH) = to_signed(j, WIDTH)) then
			  assert(Branch = '0') report "ne Branch incorrect" severity failure;
			else
			  assert(Branch = '1') report "ne Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "ne ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "ne Result incorrect" severity failure;

			OpSel<= lteq;
			wait for 10 ns;
			if (to_signed(i, WIDTH) <= to_signed(0, WIDTH)) then
			  assert(Branch = '1') report "lteq Branch incorrect" severity failure;
			else
			  assert(Branch = '0') report "lteq Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "lteq ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "lteq Result incorrect" severity failure;

			OpSel<= gt;
			wait for 10 ns;
			if (to_signed(i, WIDTH) > to_signed(0, WIDTH)) then
			  assert(Branch = '1') report "gt Branch incorrect" severity failure;
			else
			  assert(Branch = '0') report "gt Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "gt ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "gt Result incorrect" severity failure;

			OpSel<= lt;
			wait for 10 ns;
			if (to_signed(i, WIDTH) < to_signed(0, WIDTH)) then
			  assert(Branch = '1') report "lt Branch incorrect" severity failure;
			else
			  assert(Branch = '0') report "lt Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "lt ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "lt Result incorrect" severity failure;

			OpSel<= gteq;
			wait for 10 ns;
			if (to_signed(i, WIDTH) >= to_signed(0, WIDTH)) then
			  assert(Branch = '1') report "gteq Branch incorrect" severity failure;
			else
			  assert(Branch = '0') report "gteq Branch incorrect" severity failure;
			end if;
			assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "gteq ResultHi incorrect" severity failure;
			assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "gteq Result incorrect" severity failure;

		end loop;
	end loop;
	report "Simulation Finished";
	wait;
end process;
end TB;