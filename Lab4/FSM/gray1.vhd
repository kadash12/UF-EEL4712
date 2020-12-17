--Johnny Li
--Lab4 4-bit Course Number Counter
--Counter using a finite state machine which outputs the course number.
--0,1,3,2,6,7,5,4,c,d,f,e,a,b,9,8
--After “1000” the counter should go back to the beginning and output “0000”.
--Use the 1-process FSM model.

library ieee;
use ieee.std_logic_1164.all;

entity gray1 is

    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in std_logic;
        output : out std_logic_vector(3 downto 0));
end gray1;

architecture bhv of gray1 is

  type STATE_TYPE is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
  signal state : STATE_TYPE;

begin 
  
  process(clk, rst)
  
  begin
    if (rst = '1') then
      output <= "0000";
      state <= s0;
		
    elsif(rising_edge(clk)) then
      case state is
        when s0 =>
				output  <= "0000";	--0
				if (go = '1') then	--Next state on go
					state <= s1;
				end if;
          
        when s1 =>
          output  <= "0001";	--1
			 if (go = '1') then
				state <= s2;   
			end if;

        when s2 =>
          output  <= "0011";	--3
			 if (go = '1') then
				state <= s3;
			end if;

        when s3 =>
          output  <= "0010";	--2
			 if (go = '1') then
				state <= s4;
			end if;
			 
			when s4 =>
				output <= "0110";	--6
				if (go = '1') then
					state <= s5;
				end if;
			
			when s5 =>
				output  <= "0111";	--7
				if (go = '1') then
					state <= s6;
				end if;
          
        when s6 =>
          output  <= "0101";	--5
			 if (go = '1') then
				state <= s7;    
			end if;

        when s7 =>
          output  <= "0100";	--4
			 if (go = '1') then
				state <= s8;
			end if;

        when s8 =>
          output  <= "1100";	--c
			 if (go = '1') then
				state <= s9;
			end if;
			 
			when s9 =>
				output <= "1101";	--d
				if (go = '1') then
					state <= s10;
				end if;
				
			when s10 =>
          output  <= "1111";	--f
			if (go = '1') then
				state <= s11;    
			end if;

        when s11 =>
          output  <= "1110";	--e
			 if (go = '1') then
				state <= s12;
			end if;

			when s12 =>
				output <= "1010";	--a
				if (go = '1') then
					state <= s13;
				end if;
			
			when s13 =>
				output <= "1011";	--b
				if (go = '1') then
					state <= s14;
				end if;
				
			when s14 =>
				output <= "1001";	--9
				if (go = '1') then
					state <= s15;
				end if;
				
			when s15 =>
				output <= "1000";	--8
				if (go = '1') then
					state <= s0;
				end if;
				
			when others => null;
		end case;
	 end if;
  end process;

end bhv;