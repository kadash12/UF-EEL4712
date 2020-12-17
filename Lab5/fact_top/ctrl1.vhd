library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Johnny Li
-- Lab 5: controller

entity ctrl1 is
  port(
    clk           : in std_logic;
    rst           : in std_logic;
    go            : in std_logic;
    n_ge_1        : in std_logic;
    regN_sel      : out std_logic;
    regN_en       : out std_logic;
    output_en     : out std_logic;
    tempFact_sel  : out std_logic;
    tempFact_en   : out std_logic;
    done          : out std_logic
  );
end ctrl1;

architecture BHV of ctrl1 is
 
	type state_type is (state0, state1, state2, state3, state4);
	signal state, next_state : state_type;

begin

	process(clk, rst)
	begin
		if(rst = '1') then
			state <= state0;
		elsif(rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(go, n_ge_1, state)
	begin
		-- defaults for all signals
		regN_sel     <= '0';
		tempFact_sel <= '0';
		regN_en      <= '0';
		tempFact_en  <= '0';
		output_en <= '0';
		done      <= '0';
		
		-- default for FSM (same state unless specified otherwise)
		next_state <= state;
		
		case state is
			when state0 =>		--Wait
				if (go = '1') then
					next_state <= state1;
				else 
					next_state <= state0;
				end if;
			
			when state1 =>		--Store in regs
				regN_en <= '1';
				tempFact_en <= '1';
				
				next_state <= state2;
				
			when state2 =>		--Factorial
				if(n_ge_1 = '1') then
					regN_sel     <= '1';
					tempFact_sel <= '1';
					regN_en      <= '1';
					tempFact_en  <= '1';
					
					next_state <= state2;
					
				else
					next_state <= state3;
				end if;
				
			when state3 =>		--Output
				output_en <= '1';
				
				next_state <= state4;
				
			when state4 => 	--Done
				done <= '1';
				
				if(go = '1') then
					next_state <= state4;
				else
					next_state <= state0;
				end if;
		end case;
	end process; 
end BHV;
