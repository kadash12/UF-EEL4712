library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CounterE is 
   port( 
	 Clk: in  std_logic;
	 Enable: in std_logic;
 	 Reset: in std_logic;
 	 Output: out std_logic_vector(0 to 4));
end CounterE;
 
architecture Behavioral of CounterE is
   signal temp: std_logic_vector(0 to 4);
   
begin   

process(Clk,Enable)
   begin
      if Reset='1' then
         temp <= (others => '0');
      elsif (rising_edge(clk)) then
		if (Enable = '1') then
			if (temp = "11111") then
				temp <= (others => '0');
			else
				temp <= temp + 1;
			end if;
		end if;
      end if;
   end process;
   
   Output <= temp;
end Behavioral;
