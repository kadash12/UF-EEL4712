-- Greg Stitt
-- University of Florida

-- The following counter entity shows another basic sequential logic example,
-- but compares the usage of the integer type and unsigned type. For this
-- particular example, unsigned is arguably the better choice.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter4bit is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        up     : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end counter4bit;

-- The first architecture illustrates a common problem with the integer type.

architecture BHV_INT_BAD1 of counter4bit is
    -- use an internal signal to maintain the count. The counter is 4 bits so
    -- we want the range to be from 0 to 15.
    --
    -- IMPORTANT: When using an integer type, you should always constrain the
    -- range of possible values. If you don't, it will synthesize to 32 bits,
    -- which is likely a signficant waste of space.
    signal count : integer range 0 to 15;
    
begin
    -- a counter involves sequential logic, so follow the guidelines for
    -- sequential logic
    process(clk, rst)
    begin
        if (rst = '1') then
            -- initialize the count. Integer literals do not use quotes 
            count <= 0;
            
        elsif (rising_edge(clk)) then

            -- implement the basic counter functionality.
            -- Although this looks like it should work, if you simulate this
            -- code, you will receive an error similar to the following:
            --
            -- Fatal: (vsim-3421) Value 16 for count is out of range 0 to 15.
            --
            -- The problem occurs because the integer type will not rollover
            -- from its maximum value (15) to its minimum value (0) when there
            -- is overflow. Instead, when the simulation adds 1 to count when
            -- count = 15, count will become 16. However, we defined count as
            -- only having values from 0 to 15, so 16 is invalid, which causes
            -- the simulation error. The same problem would occur when
            -- subtracting 1 when count = 0.
            --
            -- This problem demonstrates one of the main annoyances of the
            -- integer type. You have to be 100% sure that the signal will
            -- never have a value outside of the specified range.
            
            if (up = '1') then
                count <= count + 1;
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    -- send the count to the output. Notice that this is done outside of the
    -- process, otherwise there would be an additional register for output,
    -- which we don't want. To convert from integer to std_logic_vector, you
    -- can first convert to unsigned using the to_unsigned function, assuming
    -- you are using numeric_std.
    output <= std_logic_vector(to_unsigned(count, 4));
    
end BHV_INT_BAD1;


-- The following architecture demonstrates another common mistake when using integers.

architecture BHV_INT_BAD2 of counter4bit is
    signal count : integer range 0 to 15;
    
begin
    process(clk, rst)
        -- To avoid the problem with the previous architecture, we are going to
        -- add values using a variable, check the variable for overflow, and
        -- then update the count.
        variable temp : integer range 0 to 15;
    begin
        if (rst = '1') then
            count <= 0;
        elsif (rising_edge(clk)) then
            
            if (up = '1') then

                -- get the new count
                temp := count + 1;

                -- check to see if we exceeded the maximum value
                if (temp = 16) then
                    count <= 0;
                else
                    count <= temp;
                end if;
            else

                -- get the new count
                temp := count - 1;

                -- check to see if we exceeded the minimum value
                if (temp = -1) then
                    count <= 15;
                else
                    count <= temp;
                end if;                
            end if;

            -- When simulting this code, we get a similar error:
            --
            -- Fatal: (vsim-3421) Value 16 for temp is out of range 0 to 15.
            --
            -- This error occurs for a similar reason as before. When we add
            -- one to count when count = 15, temp needs to be able to store 16.
            -- Likewise, when we subtract one from count when it is 0, temp
            -- needs to store -1. However, we declared temp as having a range
            -- from 0 to 15.
            --
            -- We could potentially fix the problem by changing the range of
            -- temp from -1 to 16, but the following architectures shows a more
            -- concise solution.
            --
            -- The key point to remember is that when using an integer, you
            -- have to be sure that the signal/variable will never exceed that
            -- range. Although it might be obvious for this simple counter, for
            -- complex examples using integers, it can be very difficult.
            
        end if;
    end process;

    output <= std_logic_vector(to_unsigned(count, 4));
    
end BHV_INT_BAD2;


-- the following architecture show a correct implementation of the counter when
-- using integers

architecture BHV_INT_GOOD of counter4bit is
    signal count : integer range 0 to 15;
    
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            count <= 0;
        elsif (rising_edge(clk)) then
            if (up = '1') then
                
                -- instead of using a variable to check for overflow, we can
                -- simply check to see if count is already at the max value. If
                -- so, set it to 0 instead of adding 1.
                
                if (count = 15) then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            else

                -- similarly, if we are counting down and count = 0, set the
                -- count to 15 insted of subtacting 1.
                
                if (count = 0) then
                    count <= 15;
                else
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    output <= std_logic_vector(to_unsigned(count, 4));
    
end BHV_INT_GOOD;


-- Allow the previous architecture works, we had to use additional code to make
-- sure that count values wrapped around appropriately. If we use unsigned,
-- signed, or std_logic_vector, the wrapping around is handled automatically by
-- the type.

architecture BHV_UNSIGNED of counter4bit is
    -- use a 4 bit unsigned instead of an integer.
    signal count : unsigned(3 downto 0);
    
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            count <= "0000";
        elsif (rising_edge(clk)) then

            -- notice here that we can just add or subtract 1            
            if (up = '1') then
                count <= count + 1;
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    output <= std_logic_vector(count);
       
end BHV_UNSIGNED;

