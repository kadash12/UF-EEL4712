--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS ALU standard testbench

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is
	constant WIDTH  : positive := 32;
	signal RegA, RegB   : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
	signal IR, OpSel 	: std_logic_vector(4 downto 0) := (others=>'0');
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
    constant eq   	 	: std_logic_vector(4 downto 0) := "01100"; -- branch =
    constant ne   		: std_logic_vector(4 downto 0) := "01101"; -- branch !=
    constant lteq  		: std_logic_vector(4 downto 0) := "01110"; -- branch <=0
    constant gt    		: std_logic_vector(4 downto 0) := "01111"; -- branch >0
    constant lt    		: std_logic_vector(4 downto 0) := "10000"; -- Branch <0
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

	OpSel <= add;
	RegA <= std_logic_vector(to_unsigned(10, WIDTH));
	RegB <= std_logic_vector(to_unsigned(15, WIDTH));
	wait for 10 ns;
	assert(Result = std_logic_vector(to_unsigned(25, WIDTH))) report "add Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "add ResultHi incorrect" severity failure;
	assert(Branch = '0') report "add Branch incorrect" severity failure;

	OpSel <= sub;
	RegA <= std_logic_vector(to_unsigned(25, WIDTH));
	RegB <= std_logic_vector(to_unsigned(10, WIDTH));
	wait for 10 ns;
	assert(Result = std_logic_vector(to_unsigned(15, WIDTH))) report "sub Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "sub ResultHi incorrect" severity failure;
	assert(Branch = '0') report "sub Branch incorrect" severity failure;

	OpSel <= mul_s;
	RegA <= std_logic_vector(to_signed(10, WIDTH));
	RegB <= std_logic_vector(to_signed(-4, WIDTH));
	wait for 10 ns;
	assert(ResultHi&Result = std_logic_vector(to_signed(-40, WIDTH*2))) report "mul_s Result&ResultHi incorrect" severity failure;
	assert(Branch = '0') report "mul_s Branch incorrect" severity failure;

	OpSel <= mul_u;
	RegA <= std_logic_vector(to_unsigned(65536, WIDTH));
	RegB <= std_logic_vector(to_unsigned(131072, WIDTH));
	wait for 10 ns;
	--assert(ResultHi&Result = std_logic_vector(to_unsigned(8589934592, WIDTH*2))) report "mul_u Result&ResultHi incorrect" severity failure;
	--equavient to ResultHi=0x00000002 && Result=0x00000000
	assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "mul_u Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(2, WIDTH))) report "mul_u ResultHi incorrect" severity failure;
	assert(Branch = '0') report "mul_u Branch incorrect" severity failure;

	OpSel <= and_op;
	RegA <= x"0000FFFF";
	RegB <= x"FFFF1234";
	wait for 10 ns;
	assert(Result = (x"00001234" and x"FFFF1234")) report "and_op Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "and_op ResultHi incorrect" severity failure;
	assert(Branch = '0') report "and_op Branch incorrect" severity failure;

	OpSel <= shr_l;
	IR <= std_logic_vector(to_unsigned(4,5));
	RegB <= x"0000000F";
	wait for 10 ns;
	assert(Result = std_logic_vector(SHIFT_RIGHT(to_unsigned(15, WIDTH),4))) report "shr_l Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shr_l ResultHi incorrect" severity failure;
	assert(Branch = '0') report "shr_l Branch incorrect" severity failure;

	OpSel <= shr_a;
	IR <= std_logic_vector(to_unsigned(1,5));
	RegB <= x"F0000008";
	wait for 10 ns;
	assert(Result = x"F8000004") report "shr_a Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shr_a ResultHi incorrect" severity failure;
	assert(Branch = '0') report "shr_a Branch incorrect" severity failure;
	
	OpSel <= shr_a;
	IR <= std_logic_vector(to_unsigned(1,5));
	RegB <= x"00000008";
	wait for 10 ns;
	assert(Result = std_logic_vector(SHIFT_RIGHT(to_signed(8, WIDTH), 1))) report "shr_a Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "shr_a ResultHi incorrect" severity failure;
	assert(Branch = '0') report "shr_a Branch incorrect" severity failure;

	OpSel <= set_s;
	RegA <= std_logic_vector(to_unsigned(15, WIDTH));
	RegB <= std_logic_vector(to_unsigned(10, WIDTH));
	wait for 10 ns;
	assert(Result = std_logic_vector(to_signed(0, WIDTH))) report "set_s Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_signed(0, WIDTH))) report "set_s ResultHi incorrect" severity failure;
	assert(Branch = '0') report "set_s Branch incorrect" severity failure;
	
	OpSel <= set_s;
	RegA <= std_logic_vector(to_unsigned(10, WIDTH));
	RegB <= std_logic_vector(to_unsigned(15, WIDTH));
	wait for 10 ns;
	assert(Result = std_logic_vector(to_signed(1, WIDTH))) report "set_s Result incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_signed(0, WIDTH))) report "set_s ResultHi incorrect" severity failure;
	assert(Branch = '0') report "set_s Branch incorrect" severity failure;

	OpSel <= lteq;
	RegA <= std_logic_vector(to_unsigned(5, WIDTH));
	wait for 10 ns;
	assert(Branch = '0') report "lteq Branch incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "lteq ResultHi incorrect" severity failure;
	assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "lteq Result incorrect" severity failure;

	OpSel <= gt;
	RegA <= std_logic_vector(to_unsigned(5, WIDTH));
	wait for 10 ns;
	assert(Branch = '1') report "gt Branch incorrect" severity failure;
	assert(ResultHi = std_logic_vector(to_unsigned(0, WIDTH))) report "gt ResultHi incorrect" severity failure;
	assert(Result = std_logic_vector(to_unsigned(0, WIDTH))) report "gt Result incorrect" severity failure;
	
	wait for 10 ns;
	
	report "Simulation Finished";
	wait;
	end process;

end TB;
