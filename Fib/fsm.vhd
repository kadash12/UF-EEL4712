-- Greg Stitt
-- University of Florida
--
-- The FSM used by the FSM plus D (FSM_D) model.

library ieee;
use ieee.std_logic_1164.all;

entity fsm is
  generic (
    width :     positive := 16);
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;
    go    : in  std_logic;
    done  : out std_logic;

    -- control signals to/from datapath
    value_ld   : out std_logic;
    value_sel  : out std_logic;
    count_ld   : out std_logic;
    count_sel  : out std_logic;
    count_done : in  std_logic;
    diff_ld    : out std_logic;
    diff_sel   : out std_logic;
    output_ld  : out std_logic
    );
end fsm;

architecture FSM_2P of fsm is

  type STATE_TYPE is (S_INIT, S_CHECK_BIT, S_DONE);
  signal state, next_state : STATE_TYPE;

begin  -- FSM_2P

  process(clk, rst)
  begin
    if (rst = '1') then
      state <= S_INIT;
    elsif (clk'event and clk = '1') then
      state <= next_state;
    end if;
  end process;

  process(go, count_done, state)
  begin

    -- this process defines combinational logic, so assign default values to
    -- all signals and outputs to avoid latches. 
    value_ld  <= '0';
    value_sel <= '0';
    count_ld  <= '0';
    count_sel <= '0';
    diff_ld   <= '0';
    diff_sel  <= '0';
    output_ld <= '0';
    done      <= '0';

    -- assume the FSM stays in the same state unless we specify otherwise later
    next_state <= state;

    -- The following case statement implements the states and operations shown
    -- in FSMD.pdf. However, instead of implementing those operations with
    -- operations inside of the FSM (i.e. the FSMD model), in the FSM+D model
    -- we use control signals to configure the datapath to do the
    -- corresponding operations.
    
    case state is
      when S_INIT =>

        -- the following signals configure the datapath to do count = 0
        count_ld  <= '1';
        count_sel <= '1';

        -- the following signals configure the datapath to do diff = 0
        diff_ld  <= '1';
        diff_sel <= '1';

        -- the following signals configure the datapath to store the input into
        -- the value internal datapath register
        value_ld  <= '1';
        value_sel <= '1';

        if (go = '1') then
          next_state <= S_CHECK_BIT;
        end if;

      when S_CHECK_BIT =>

        -- configure the datapath to store the new diff that is determined by
        -- the value of the lowest bit

        -- the selects are already specified by the default values, so these
        -- are just reminders for readability.      
        diff_ld  <= '1';
        diff_sel <= '0';

        -- configure the datapath to store the value shifted right by 1
        value_ld  <= '1';
        value_sel <= '0';

        -- configure the datapath to do count = count + 1
        count_ld  <= '1';
        count_sel <= '0';

        -- see if the datapath is showing that the counter is done
        -- (i.e., all bits have been checked)
        if (count_done = '1') then
          -- store the output and assert done
          output_ld  <= '1';
          next_state <= S_DONE;
        end if;

      when S_DONE =>
        done       <= '1';
        next_state <= S_INIT;

      when others => null;
    end case;
  end process;
end FSM_2P;
