--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mips is
	port(
		clk, rst 		  	: in std_logic;
		InPort				: in std_logic_vector(31 downto 0);
		OutPort				: out std_logic_vector(31 downto 0);
		Inport0_en, Inport1_en : in std_logic
		);
end mips;

architecture BHV of mips is
	signal PCWriteCond, PCWrite, IorD, IRWrite, JumpAndLink, IsSigned, ALUSrcA, RegWrite, RegDst, LO_en, HI_en, MemRead, MemWrite : std_logic;
	signal MemToReg,  PCSource, ALUSrcB, ALU_LO_HI : std_logic_vector(1 downto 0); 
	signal IR31downto26, IR5downto0 : std_logic_vector(5 downto 0);
	signal IR20downto16, ALUOp : std_logic_vector(4 downto 0);
	
begin
	U_DATAPATH : entity work.datapath
		port map(
		clk			=> clk,
		rst			=> rst,
		MemRead		=> MemRead,
		MemWrite	=> MemWrite,
		InPort0_en 	=> Inport0_en,
		InPort1_en	=> Inport1_en,
        InPort      => InPort,
		OutPort     => OutPort,
        PCWriteCond	=> PCWriteCond,
		PCWrite		=> PCWrite,
		IorD		=> IorD,
		IRWrite		=> IRWrite,
		JumpAndLink	=> JumpAndLink,
		IsSigned	=> IsSigned,
		ALUSrcA		=> ALUSrcA,
		RegWrite	=> RegWrite,
		RegDst 		=> RegDst,
        MemToReg	=> MemToReg,
		PCSource	=> PCSource,
		ALUSrcB 	=> ALUSrcB,
        ALUOp       => ALUOp,
        ALU_LO_HI   => ALU_LO_HI,
        LO_en		=> LO_en,
		HI_en		=> HI_en , 
        IR31downto26=> IR31downto26,
		IR20downto16=> IR20downto16,
		IR5downto0  => IR5downto0
		);
	
	U_CTRL : entity work.controller
		port map(
		clk			=> clk,
		rst			=> rst,
		MemRead		=> MemRead,
		MemWrite	=> MemWrite,
        PCWriteCond	=> PCWriteCond,
		PCWrite		=> PCWrite,
		IorD		=> IorD,
		IRWrite		=> IRWrite,
		JumpAndLink	=> JumpAndLink,
		IsSigned	=> IsSigned,
		ALUSrcA		=> ALUSrcA,
		RegWrite	=> RegWrite,
		RegDst 		=> RegDst,
        MemToReg	=> MemToReg,
		PCSource	=> PCSource,
		ALUSrcB 	=> ALUSrcB,
        ALUOp       => ALUOp,
        ALU_LO_HI   => ALU_LO_HI,
        LO_en		=> LO_en ,
		HI_en		=> HI_en , 
        IR31downto26=> IR31downto26,
		IR20downto16=> IR20downto16,
		IR5downto0  => IR5downto0
		);
		
end BHV;