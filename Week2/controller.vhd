--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS Controller

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    port (
        clk, rst     : in std_logic;
        PCWriteCond, PCWrite, IorD, IRWrite, JumpAndLink, IsSigned : out std_logic;
        MemRead, MemWrite, ALUSrcA : out std_logic;
        MemToReg, PCSource : out std_logic_vector(1 downto 0);
        ALUOp     : out std_logic_vector(4 downto 0);
        RegWrite, RegDst : out std_logic;
        ALU_LO_HI, ALUSrcB    : out std_logic_vector(1 downto 0);
        LO_en, HI_en : out std_logic;
        IR31downto26, IR5downto0 : in  std_logic_vector(5 downto 0);
        IR20downto16 : in  std_logic_vector(4 downto 0)
    );
end controller;

architecture FSM of controller is

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

    type STATE_TYPE is (FETCH, LOAD, DECODE, R_TYPE, I_TYPE, R_TYPE_COMPLETION, I_TYPE_COMPLETION, MEMORY_ADDRESS, 
						MEMORY_READ, MEMORY_WRITE, LOAD_MEMORY, MEMORY_READ_COMPLETION, BRANCH, WRITE_RETURN_ADDR,
                        JUMP, JUMP_REG, HALT); 
    signal state, next_state : STATE_TYPE;

    signal IR5to0_sign : unsigned(7 downto 0);	--IR5downto0 sign extension
    signal IR31to26_sign : unsigned(7 downto 0);	--IR31downto26 sign extension

begin

    process(clk,rst)	--Reset
    begin
        if (rst = '1') then
            state <= FETCH;
        elsif (rising_edge(clk)) then
            state <= next_state;
        end if;
    end process;

    IR5to0_sign <= resize(unsigned(IR5downto0),8);	--Resize for extension
    IR31to26_sign <= resize(unsigned(IR31downto26),8);

    process(IR31to26_sign, IR5to0_sign, state)
    begin
		--Default reset
        PCWriteCond <= '0';
        PCWrite     <= '0';
        IorD        <= '0';
        MemRead     <= '0';
        MemWrite    <= '0';
        MemToReg    <= "00";
        IRWrite     <= '0';
        JumpAndLink <= '0';
        IsSigned    <= '0';
        PCSource    <= "00";
        ALUOp    	<= (others => '0');
        ALUSrcA     <= '0';
        ALUSrcB     <= "00";
        RegWrite    <= '0';
        RegDst      <= '0';
        ALU_LO_HI   <= "00";
        LO_en       <= '0';
        HI_en       <= '0'; 
        next_state  <= state;

        case state is
            when FETCH =>	--Instruction Fetch
				MemRead <= '1';
				ALUSrcA <= '0';
				IorD 	<= '0';
				IRWrite <= '1';
				ALUSrcB <= "01";
				ALUOp 	<= (others => '0');
				PCWrite <= '1';
				PCSource<= "00";
                next_state <= LOAD;
				
			when LOAD => 	--Load instruction
                IRWrite <= '1';
                next_state <= DECODE;

            when DECODE =>	--Instruction Decode
                ALUSrcA <= '0';
				ALUSrcB <= "11";
                ALUOp 	<= (others => '0');
				IsSigned<= '1';
				--R-type
                if (IR31to26_sign = x"00") then 
					next_state <= R_TYPE;
				--I-type	
                elsif ( IR31to26_sign = x"09" or IR31to26_sign = x"10" or
                        IR31to26_sign = x"0C" or IR31to26_sign = x"0D" or
                        IR31to26_sign = x"0E" or IR31to26_sign = x"0A" or
                        IR31to26_sign = x"0B") then
					next_state <= I_TYPE;
				--Load or Store word
                elsif (IR31to26_sign = x"23" or IR31to26_sign = x"2B") then
					next_state <= MEMORY_ADDRESS;
				--Branch instruction
                elsif (IR31to26_sign = x"04" or IR31to26_sign = x"05" or
                        IR31to26_sign = x"06" or IR31to26_sign = x"07" or
                        IR31to26_sign = x"01") then
					next_state <= BRANCH;
				--Jump instruction
                elsif (IR31to26_sign = x"02") then
					next_state <= JUMP;
				--Jump and link
                elsif (IR31to26_sign = x"03") then
					next_state <= WRITE_RETURN_ADDR;
				--Halt instruction
                elsif (IR31to26_sign = x"3F") then
					next_state <= HALT;
                end if;
				
            when R_TYPE =>	--R-Type Execution
                ALUSrcA <= '1';
                ALUSrcB <= "00";
                next_state <= R_TYPE_COMPLETION;
				--Selection Function
                case IR5to0_sign is
                    when x"21" => 
                        ALUOp <= add;
                    when x"23" => 
                        ALUOp <= sub;
                    when x"18" =>
                        ALUOp <= mul_s;
                        LO_en <= '1';
                        HI_en <= '1'; 
                    when x"19" => 
                        ALUOp <= mul_u;
                        LO_en <= '1';
                        HI_en <= '1';
                    when x"24" => 
                        ALUOp <= and_op;
                    when x"25" => 
                        ALUOp <= or_op;
                    when x"26" => 
                        ALUOp <= xor_op; 
                    when x"02" =>
                        ALUOp <= shr_l; 
                    when x"00" =>
                        ALUOp <= shl_l;
                    when x"03" => 
                        ALUOp <= shr_a;
                    when x"2A" => 
                        ALUOp <= set_s;
                    when x"2B" => 
                        ALUOp <= set_u;
                    when x"10" =>	--mfhi
                        ALU_LO_HI 	<= "10"; 
                        MemToReg 	<= "00";
                        RegDst 		<= '1';
                        RegWrite 	<= '1';
                        next_state 	<= FETCH;	--Return to beginning
                    when x"12" =>	--mflo
                        ALU_LO_HI 	<= "01";
                        MemToReg 	<= "00";
                        RegDst 		<= '1';
                        RegWrite 	<= '1';
                        next_state 	<= FETCH;
                    when x"08" =>	--jump register
                        next_state <= JUMP_REG;
                    when others => report "R-Type instruction is invalid." severity note;
                end case;
				
            when R_TYPE_COMPLETION =>
				RegDst 		<= '1';
				RegWrite 	<= '1';
				MemToReg 	<= "00";
                ALU_LO_HI 	<= "00";
                next_state	<= FETCH;
				
            when I_TYPE =>	--Similar to R-Type
                ALUSrcA <= '1';
                ALUSrcB <= "10";
                next_state <= I_TYPE_COMPLETION;
				--Select OP
                case IR31to26_sign is
                    when x"09" => 
                        IsSigned <= '1';
                        ALUOp <= add;
                    when x"10" => 
                        IsSigned <= '1';
                        ALUOp <= sub;
                    when x"0C" =>
                        IsSigned <= '0';
                        ALUOp <= and_op;
                    when x"0D" =>
                        IsSigned <= '0';
                        ALUOp <= or_op;
                    when x"0E" =>
                        IsSigned <= '0';
                        ALUOp <= xor_op;
                    when x"0A" =>
                        IsSigned <= '1';
                        ALUOp <= set_s;
                    when x"0B" =>
                        IsSigned <= '1';
                        ALUOp <= set_u;
                    when others =>
                        report "I-Type instruction is invalid." severity note;
                        next_state <= FETCH;
                end case;
				
            when I_TYPE_COMPLETION =>
			    RegDst <= '0';
                RegWrite <= '1';
                MemToReg <= "00";
				ALU_LO_HI <= "00";
                next_state <= FETCH;
				
            when MEMORY_ADDRESS => 	--load or store
                ALUSrcA <= '1';
                ALUSrcB <= "10";
                ALUOp <= add;
				IsSigned <= '0';
				
                if (IR31to26_sign = x"23") then 	--Reading
					next_state <= MEMORY_READ;
                elsif (IR31to26_sign = x"2B") then 	--Writing
					next_state <= MEMORY_WRITE;
                else 
                    report "Memory access is invalid." severity note;
                    next_state <= FETCH;
                end if;
				
            when MEMORY_READ =>
				MemRead <= '1';
                IorD <= '1';
                next_state <= LOAD_MEMORY;
				
            when LOAD_MEMORY =>		--Delay cycle
                next_state <= MEMORY_READ_COMPLETION;
				
            when MEMORY_READ_COMPLETION =>
                RegDst <= '0';
                RegWrite <= '1';
				MemToReg <= "01";
                next_state <= FETCH;
				
            when MEMORY_WRITE =>
				MemWrite <= '1';
                IorD <= '1';
                next_state <= FETCH;
				
            when BRANCH => 	--Branch instruction
			    ALUSrcA <= '1';
                ALUSrcB <= "00";
                PCWriteCond <= '1';
                PCSource <= "01";
				next_state <= FETCH;
				--Select branch path
                case IR31to26_sign is
                    when x"04" => 
                        ALUOp <= eq;
                    when x"05" =>
                        ALUOp <= ne;
                    when x"06" => 
                        ALUOp <= lteq;
                    when x"07" =>
                        ALUOp <= gt;
                    when x"01" =>
                        if (IR20downto16 = "00001") then
                            ALUOp <= gteq;
                        elsif(IR20downto16 = "00000") then
                            ALUOp <= lt;
                        else report "???" severity note;
                        end if;
                    when others => report "Branch instruction is invalid." severity note;
                end case;

            when WRITE_RETURN_ADDR =>	--Set address to jump
				RegWrite <= '1';
                MemToReg <= "10";
                JumpAndLink <= '1';
                next_state <= JUMP;
				
            when JUMP =>	--Jump instruction
                PCWrite <= '1';
				PCSource <= "10"; 
                next_state <= FETCH;
				
            when JUMP_REG =>
				PCWrite <= '1';
                PCSource <= "11";
                next_state <= FETCH;
				
            when HALT =>	--Infinite loop
                next_state <= state;
        end case;
    end process;
end FSM;