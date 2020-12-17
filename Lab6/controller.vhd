--Jonathan Cruz
--University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity controller is
    port(
	clk	: in std_logic;
	rst	: in std_logic;
	go	: in std_logic;
	round_count : out std_logic_vector(4 downto 0); --round count signal
	done	: out std_logic;
	mux_x_sel : out std_logic_vector(1 downto 0);
	mux_y_sel : out std_logic_vector(1 downto 0);
	ff_key_en : out std_logic;
	ff_x_en   : out std_logic;
	ff_y_en   : out std_logic;
	addr_in	: in std_logic_vector(4 downto 0); --address from input or output RAM
	valid	  : out std_logic;  -- data valid signal
	out_ram_wren : out std_logic	); --output RAM write enable

end controller;

architecture FSM2P of controller is
----------- your signals here -----------
	type state_type is (state0, state1, state2, state3, statec, stated, state4, state5);
	signal state, next_state : state_type;
	signal round, next_round : std_logic_vector(4 downto 0);

begin
----------- your code for 2 Process FSM -----------
process(clk, rst)
	begin
		if(rst = '1') then
			state <= state0;
			round <= (others => '0');	--Initialize round
		elsif(rising_edge(clk)) then
			state <= next_state;
			round <= next_round;	--Initialize round
		end if;
	end process;
	
process(go, state, round)
	begin		
		-- defaults for all signals
		mux_x_sel <= (others => '0');
		mux_y_sel <= (others => '0');
		ff_key_en <= '0';
		ff_x_en   <= '0';
		ff_y_en   <= '0';
		valid     <= '0';
		out_ram_wren <= '0';
		done      <= '0';
		-- default for FSM (same state unless specified otherwise)
		next_state <= state;
		next_round <= round;
		
		case state is
			when state0 =>		--Wait			
				if (go = '1') then
					next_state <= state1;
				end if;
			
			when state1 =>		--Store in regs
				ff_key_en <= '1';	--Enable key dff
				next_round <= (others => '0');	--Initialize round
				next_state <= state2;
				
			when state2 =>	--Initial round
				ff_key_en <= '0';	--Disable key dff
				mux_x_sel <= "11";
				mux_y_sel <= "10";
				ff_x_en  <= '1';
				ff_y_en  <= '1';
				
				next_state <= state3;
			
			when state3 =>	--Encrypt other rounds
				if(round = "01100") then	--Final round end
					next_state <= stated;
					next_round <= (others => '0'); --Reset

				else	--Round runs
					mux_x_sel <= "01";
					mux_y_sel <= "00";
					ff_x_en  <= '1';
					ff_y_en  <= '1';
					
					next_round <= std_logic_vector(unsigned(round)+1);	--Increment
					next_state <= statec;
				end if;
			
			when statec =>	--delay count
				next_state <= state3;
			
			when stated =>	--delay data
				out_ram_wren <= '1';
				next_state <= state4;
			
			when state4 =>	-- RAM output
				valid <= '1';
				--Check address if it reach end
				if(unsigned(addr_in) = 31) then
					next_state <= state5;
				else --Restart
					next_state <= state0;
				end if;

			when state5 => 	--Done
				done <= '1';
		end case;
		round_count <= round;
	end process; 
end FSM2P;