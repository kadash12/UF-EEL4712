--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS Datapath

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
    port(
        clk, rst, MemRead, MemWrite, InPort0_en, InPort1_en : in std_logic;
        InPort       : in  std_logic_vector(31 downto 0); 
		OutPort      : out std_logic_vector(31 downto 0);
		
        PCWriteCond, PCWrite, IorD, IRWrite, JumpAndLink, IsSigned, ALUSrcA, RegWrite, RegDst : in  std_logic;
        MemToReg,  PCSource, ALUSrcB : in  std_logic_vector(1 downto 0); 
        ALUOp        : in  std_logic_vector(4 downto 0);
		
        ALU_LO_HI    : in  std_logic_vector(1 downto 0); 
        LO_en, HI_en : in  std_logic; 
        IR31downto26, IR5downto0  : out std_logic_vector(5 downto 0); 
        IR20downto16 : out std_logic_vector(4 downto 0)
    );
end datapath;

architecture STR of datapath is
    signal PC             : std_logic_vector(31 downto 0);
    signal PC_en          : std_logic;	
    signal ALUOut         : std_logic_vector(31 downto 0); 
    signal ALUReg         : std_logic_vector(31 downto 0);
    signal address        : std_logic_vector(31 downto 0); 
    signal IR             : std_logic_vector(31 downto 0);
    signal WriteData      : std_logic_vector(31 downto 0);
    signal WriteReg 	  : std_logic_vector(4 downto 0); 	
    signal MemData        : std_logic_vector(31 downto 0);
    signal MemDataReg     : std_logic_vector(31 downto 0);
    signal ALUSel 		  : std_logic_vector(31 downto 0);
    signal RegAIn         : std_logic_vector(31 downto 0); 
    signal RegBIn         : std_logic_vector(31 downto 0);
    signal RegAOut        : std_logic_vector(31 downto 0); 
    signal RegBOut        : std_logic_vector(31 downto 0);
    signal ALU_A    	  : std_logic_vector(31 downto 0);
    signal ALU_B    	  : std_logic_vector(31 downto 0);
    signal PCIn     	  : std_logic_vector(31 downto 0); 
    signal HI             : std_logic_vector(31 downto 0); 
    signal HIReg          : std_logic_vector(31 downto 0);
    signal LO             : std_logic_vector(31 downto 0); 
    signal LOReg          : std_logic_vector(31 downto 0);
    signal Branch         : std_logic; 
    signal Mux4A2     	  : std_logic_vector(31 downto 0); 
    signal Mux4A3         : std_logic_vector(31 downto 0); 
    signal Mux4B2         : std_logic_vector(31 downto 0); 
	 
begin
	IR31downto26 <= IR(31 downto 26);
    IR20downto16 <= IR(20 downto 16);
	IR5downto0 <= IR(5 downto 0);
	
	PC_en <= ((Branch and PCWriteCond) or PCWrite);
	
	Mux4A3 <= std_logic_vector(SHIFT_LEFT(unsigned(Mux4A2), 2));
	Mux4B2 <= PC(31 downto 28) & IR(25 downto 0) & "00";

    U_MEMORY: entity work.memory
        port map (
            clk        => clk,
            rst        => rst,
            PC         => address,
            data       => MemData,
            MemRead    => MemRead,
            MemWrite   => MemWrite,
            InPort1_en => InPort1_en,
            InPort0_en => InPort0_en,
            InPort     => InPort,
            OutPort    => OutPort,
            RegB       => RegBOut
        );
	
	U_MEM_REG: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => '1',
            input  => MemData,
            output => MemDataReg
        );
		
	U_ALU: entity work.alu
        generic map (
            WIDTH => 32
        )
        port map(
            RegA   => ALU_A,
            RegB   => ALU_B,
            IR     => IR(10 downto 6),
            OpSel  => ALUOp,
            Result   => ALUOut,
            ResultHi => HI,
            Branch   => Branch
        );

    U_ALU_REG: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => '1',
            input  => ALUOut,
            output => ALUReg
        );
	
	U_PC: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => PC_en,
            input  => PCIn,
            output => PC
        );

    U_IR: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => IRWrite,
            input  => MemData,
            output => IR
        );

    U_MUX_2x1_1: entity work.mux2x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => IorD,
            in1    => PC,
            in2    => ALUReg,
            output => address
        );

    U_MUX_2x1_2: entity work.mux2x1
        generic map (
            WIDTH => 5
        )
        port map(
            sel    => RegDst,
            in1    => IR(20 downto 16),
            in2    => IR(15 downto 11),
            output => WriteReg
        );
		
	U_MUX_2x1_3: entity work.mux2x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => ALUSrcA,
            in1    => PC,
            in2    => RegAOut,
            output => ALU_A
        );

	U_MUX_4x1_1: entity work.mux4to1
        generic map (
            WIDTH => 32
        )
        port map(
            s     => ALUSrcB,
            w0    => RegBOut,
            w1    => std_logic_vector(to_unsigned(4, 32)),
            w2    => Mux4A2,
            w3    => Mux4A3,
            f     => ALU_B
        );
		
	U_MUX_4x1_2: entity work.mux4to1
        generic map (
            WIDTH => 32
        )
        port map(
            s    => PCSource,
            w0   => ALUOut,
            w1   => ALUReg,
            w2   => Mux4B2,
            w3   => RegAOut,
            f    => PCIn
        );

    U_MUX_4x1_3: entity work.mux4to1
        generic map (
            WIDTH => 32
        )
        port map(
            s     => ALU_LO_HI,
            w0    => ALUReg,
            w1    => LOReg,
            w2    => HIReg,
            w3    => std_logic_vector(to_unsigned(0, 32)),
            f 	  => ALUSel
        );
		
    U_MUX_4x1_4: entity work.mux4to1
        generic map (
            WIDTH => 32
        )
        port map(
            s     => MemToReg,
            w0    => ALUSel,
            w1    => MemDataReg,
            w2    => PC,
            w3    => std_logic_vector(to_unsigned(0,32)),
            f     => WriteData
        );

    U_REGISTERS_FILE: entity work.registers_file
        port map (
            clk           => clk,
            rst           => rst,
            Read1    	  => IR(25 downto 21),
            Read2     	  => IR(20 downto 16),
            ReadData1     => RegAIn,
            ReadData2     => RegBIn,
            WriteReg	  => WriteReg,
            WriteData     => WriteData,
            RegWrite      => RegWrite,
            JumpAndLink   => JumpAndLink
        );

	U_SIGN_EXTEND: entity work.signextender
        generic map (
            WIDTH => 16
        )
        port map (
            sign	 => IsSigned,
            input    => IR(15 downto 0),
            output   => Mux4A2
        );

    U_REGA: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load     => '1',
            input  => RegAIn,
            output => RegAOut
        );

    U_REGB: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => '1',
            input  => RegBIn,
            output => RegBOut
        );

    U_LO_REG: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => LO_en,
            input  => ALUOut,
            output => LOReg
        );

    U_HI_REG: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            load   => HI_en,
            input  => HI,
            output => HIReg
        );
end STR;