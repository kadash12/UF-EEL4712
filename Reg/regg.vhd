

library ieee;
use ieee.std_logic_1164.all;

entity regg is
  generic (
    width : positive := 8);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    input  : in  std_logic_vector(width-1 downto 0);
    output : out std_logic_vector(width-1 downto 0));
end regg;

architecture ASYNC_RST of regg is
begin  -- ASYNC_RST

  -- SYNTHESIS GUIDELINE 1 FOR SEQUENTIAL LOGIC: The sensitivity list should
  -- only have clock and reset (if there is a reset).
  --
  -- It will likely not hurt if you include other signals, but don't do it.
  -- Some synthesis tools are picky.
  
  process(clk,rst)
  begin

    -- SYNTHESIS GUIDELINE 2 FOR SEQUENTIAL LOGIC: All sequential logic with
    -- async reset should be described using the following basic structure:
    --
    -- if reset
    --   handle reset appropriately
    -- elsif rising clock edge
    --   specify all non-reset functionality
    -- end if
    --
    -- Do not try to come up with another way of specifying equivalent
    -- behavior. Synthesis tools often require this template. 
    
    if (rst = '1') then
      -- assign a default output value on reset
      -- The others statement is a convenient way of assigning all bits a
      -- particular value.
      output <= (others => '0');      
    elsif (clk'event and clk='1') then

      -- IMPORTANT: Any time a signal/output is assigned on a rising clock
      -- edge, the synthesis tool will allocate a register. Therefore, output
      -- is synthesized into a register. 
      
      output <= input;      
    end if;    
  end process;

end ASYNC_RST;


architecture SYNC_RST of regg is
begin  -- SYNC_RST

  -- Here, we actually don't need reset in the sensitivity list
  -- because there is no asynchronous reset, but just to
  -- keep things consistent, I will leave it.
  
  process(clk,rst)
  begin
    -- when not using an asynch reset, everything should be inside of a "if
    -- rising clock edge" statement
    
    if (clk'event and clk='1') then
      -- reset not synchronous because it only happens on a rising clock edge
      -- Notice in the provided testbench that this output is uninitialized
      -- until the first rising clock edge
      if (rst = '1') then
        output <= (others => '0');
      else
        output <= input;              
      end if;     
    end if;    
  end process;
end SYNC_RST;