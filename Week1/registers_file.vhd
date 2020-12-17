--Johnny Li
--EEL4712 Digital Design
--Lab 7: MIPS Registers File

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registers_file is 
    port (
        clk, rst, JumpAndLink, RegWrite : in std_logic;

        Read1, Read2, WriteReg : in std_logic_vector(4 downto 0);
        ReadData1, ReadData2 : out std_logic_vector(31 downto 0);
		
        WriteData : in std_logic_vector(31 downto 0)
    );
end registers_file;

architecture BHV of registers_file is
    type reg_arr is array(0 to 31) of std_logic_vector(31 downto 0);
    signal regs : reg_arr; 
begin 
    process (clk, rst) is
    begin 
        if (rst = '1') then		--Reset
            for i in regs'range loop
                regs(i) <= (others => '0');
            end loop;
        elsif (rising_edge(clk)) then
            if (RegWrite = '1') then	--Write to register
                if (JumpAndLink = '1') then		--Jump to register
                    regs(31) <= WriteData;	--Store Data
                else	
                    regs(to_integer(unsigned(WriteReg))) <= WriteData;
                end if;
            end if;
        end if;
    end process;
    ReadData1 <= regs(to_integer(unsigned(Read1)));	--Transfer to output
    ReadData2 <= regs(to_integer(unsigned(Read2)));
end BHV;