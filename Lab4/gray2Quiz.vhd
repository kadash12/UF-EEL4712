--Johnny Li
--Lab4 4-bit Course Number Counter Quiz
--Counter using a finite state machine which outputs the course number.
--A,B,0,C,0,D, goes back to A 
--Use the 2-process FSM model.

library ieee;
use ieee.std_logic_1164.all;

entity gray2 is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in std_logic;
        output : out std_logic_vector(3 downto 0));
end gray2;

architecture bhv of gray2 is

	type STATE_TYPE is (sA, sB, s0, sC, s00, sD);
	signal state, next_state : STATE_TYPE;

begin

  process(clk, rst)
  begin
    if (rst = '1') then
      state <= sA;      
		
    elsif(clk'event and clk = '1') then
      state <= next_state;
    end if;
  end process;
		
	process(go, state)
	begin
		next_state <= state;
	
		case state is
        when sA =>
				output  <= "1010";	--A
				if (go = '1') then	--Next state on go
					next_state <= sB;
				end if;
          
        when sB =>
          output  <= "1011";	--B
			 if (go = '1') then
				next_state <=s0;   
			end if;

        when s0 =>
          output  <= "0000";	--0
			 if (go = '1') then
				next_state <=sC;
			end if;

        when sC =>
          output  <= "1100";	--C
			 if (go = '1') then
				next_state <=s00;
			end if;
			 
			when s00 =>
				output <= "0000";	--00
				if (go = '1') then
					next_state <=sD;
				end if;
			
			when sD =>
				output  <= "1101";	--D
				if (go = '1') then
					next_state <=sA;
				end if;
				
			when others => null;
		end case;
	end process;
end bhv;