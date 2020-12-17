library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all;

--Johnny Li
--Lab2 Part 3
--9/19/2020

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity alu_sla is 
	generic ( 
		WIDTH : positive := 16 
	);
	
	port ( 
		input1 : in std_logic_vector(WIDTH-1 downto 0); 
		input2 : in std_logic_vector(WIDTH-1 downto 0); 
		sel : in std_logic_vector(3 downto 0); 
		output : out std_logic_vector(WIDTH-1 downto 0); 
		overflow : out std_logic 
	);
end alu_sla;

architecture Behavioral of alu_sla is

signal sr : std_logic_vector(WIDTH-2 downto 0);

begin

	process(input1, input2, sel)
	
	variable temp : std_logic_vector(WIDTH downto 0);
	variable mul_temp : std_logic_vector(2*WIDTH-1 downto 0);
	
	begin
	
		overflow <= '0';		--Inital value
		
	case sel is
		--ALU function mapping
		when "0000" =>		--Case 0 add
			temp := std_logic_vector(unsigned(("0" & input1)+("0" & input2)));
			overflow <= temp(WIDTH);		--Overflow to 1
			output <= temp(WIDTH-1 downto 0);
		
		when "0001" =>		--Case 1 substract
			output <=  std_logic_vector(unsigned(input1-input2));

		when "0010" =>		--Case 2 multiple
			mul_temp := std_logic_vector(unsigned(input1*input2));
			
			if(unsigned(mul_temp(2*WIDTH-1 downto WIDTH)) > 0) 	--Greater half
				then overflow <= '1';	--Overflow to 1
			end if;
			
			output <= std_logic_vector(mul_temp(width-1 downto 0));
			
		when "0011" =>		--Case 3 AND
			output <= input1 AND input2;
			
		when "0100" =>		--Case 4 OR
			output <= input1 OR input2;
			
		when "0101" =>		--Case 5 XOR
			output <= input1 XOR input2;
			
		when "0110" =>		--Case 6 NOR
			output <= input1 NOR input2;
			
		when "0111" =>		--Case 7 NOT
			output <= NOT(input1);
			
		when "1000" =>		--Case 8 Shift input1 left by 1 bit
			overflow <= input1(WIDTH-1);		--Overflow to 1
			temp := input1 & '0';
			output <= std_logic_vector(unsigned(temp(WIDTH-1 downto 0)));
			
		when "1001" =>		--Case 9 Shift input1 right by 2 bits
			temp := '0' & input1;
			temp := '0' & temp(WIDTH downto 1);
			output <= temp(WIDTH downto 1);
			
		When "1010" =>		--Case 10/A Swap the high-half bits of input2 with the low-half bits of input2
			temp(WIDTH-1 downto 0) := input2(WIDTH/2-1 downto 0) & input2(WIDTH-1 downto width/2);
			output <= temp(WIDTH-1 downto 0);
			
		when "1011" =>		--Case 11/B Reverse the bits in input2
			
			for x in (WIDTH-1) downto 0 loop	-- Loop value in reverse
				temp((WIDTH-1)-x) := input2(x);
			end loop;
			
			output <= temp(WIDTH-1 downto 0);
		
		when "1100" =>		--Case 12/C Display odd/even flag in width amount of bits for input2
			if (input2(0 downto 0) = 1)
				then for x in (WIDTH-1) downto 0 loop		--loop 1 in 
						temp((WIDTH-1)-x) := '1';
					end loop;
					output <= std_logic_vector(temp(WIDTH-1 downto 0));
			else output <= (others => '0');
			end if;
				
		when "1101" =>		--Output the 2’s complementof input2
			temp(WIDTH-1 downto 0) := NOT input2+1;
			output <=  std_logic_vector(temp(WIDTH-1 downto 0));
		
			
		when others =>		--Other cases
			output <= (others => '0');
	end case;
	end process;
end Behavioral;