--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS Memory

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
    port (
        clk, rst, MemRead, MemWrite, InPort0_en, InPort1_en : in std_logic;
        PC, RegB, InPort : in std_logic_vector(31 downto 0);
        data, OutPort : out std_logic_vector(31 downto 0)
    );
end memory;

architecture BHV of memory is
    signal Out_en, Ram_en : std_logic;
    signal InPort0, InPort1, DataOut : std_logic_vector(31 downto 0);
	signal OutSel : std_logic_vector(1 downto 0);

begin

	process (clk,rst)	--Read memory based on PC
	begin
		if (rst = '1') then		--Reset
			OutSel <= "11";
		elsif (rising_edge(clk)) then 
			if (MemRead = '1') then		--Read
				if (PC = x"0000FFF8") then	--InPort0 address
					OutSel <= "00";
				elsif (PC = x"0000FFFC") then	--InPort0 address
					OutSel <= "01";
				else 
					OutSel <= "10";
				end if;
			end if;
		end if;
	end process;
	
	process(PC, MemWrite)	--Write to memory based on PC
	begin
		Out_en <= '0';
		Ram_en <= '0';
		if (MemWrite = '1') then	--Write
			if (PC = x"0000FFFC") then 	--Outport address
				Out_en <= '1';	--Enable write to outport
			else
				Ram_en <= '1';	--Enable ram to store
			end if; 
	   end if;
	end process;

	OUT_MUX: entity work.mux4to1	--OUT_MUX
		generic map (WIDTH => 32)
		port map (
			s	=> OutSel,
			w0	=> InPort0,
			w1 	=> InPort1,
			w2	=> DataOut,
			w3	=> (others => '0'),
			f => data
		);

	IN_PORT_0: entity work.reg	--InPort0
		generic map (WIDTH => 32)
		port map (
			clk    => clk,
			rst    => '0',
			load   => InPort0_en,
			input  => InPort,
			output => InPort0
		);

	IN_PORT_1: entity work.reg	--InPort1
		generic map (WIDTH => 32)
		port map (
			clk    => clk,
			rst    => '0',
			load   => InPort1_en,
			input  => InPort,
			output => InPort1
		);

	OUT_PORT: entity work.reg	--OutPort
		generic map (WIDTH => 32)
		port map (
			clk    => clk,
			rst    => rst,
			load   => Out_en,
			input  => RegB,
			output => OutPort
		);
		
	RAM: entity work.ram	--Ram
		port map (
			address	=> PC(9 downto 2),
			clock   => clk,
			data	=> RegB,
			wren	=> Ram_en,
			q		=> DataOut
		);
end BHV;