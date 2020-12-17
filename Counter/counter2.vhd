
-- Greg Stitt
-- University of Florida

-- This examples shows how to extend the previous counter entity with a custom
-- package that includes a function for computing the number of bits, which
-- makes the code much more concise. Make sure to also look at counter_pkg.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

-- include a custom package that defines a function for computing the number of
-- bits in signal
use work.counter_pkg.all;

entity counter2 is
    generic(max_value : positive := 15);
    port (
        clk : in std_logic;
        rst : in std_logic;
        up  : in std_logic;

 
        -- In this version, we replace the ugly computation:
        --
        -- integer(ceil(log2(real(max_value+1))))
        --
        -- with a clog2 function that we added to counter_pkg.
        output : out std_logic_vector(clog2(max_value+1)-1 downto 0));
end counter2;


architecture BHV_INT of counter2 is

    signal count : integer range 0 to max_value;

    -- we can also use the clog2 function here
    constant NUM_BITS : positive := clog2(max_value+1);
    
begin
    
    process(clk, rst)
    begin
        if (rst = '1') then
            count <= 0;
        elsif (rising_edge(clk)) then
            if (up = '1') then
                if (count = max_value) then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            else
                
                if (count = 0) then
                    count <= max_value;
                else
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    output <= std_logic_vector(to_unsigned(count, NUM_BITS));
    
end BHV_INT;


architecture BHV_UNSIGNED of counter2 is

    -- we can also use the clog2 function here
    constant NUM_BITS : positive := clog2(max_value+1);
    
    signal count : unsigned(NUM_BITS-1 downto 0);
    
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            count <= (others => '0');
            
        elsif (rising_edge(clk)) then

            if (up = '1') then
                if (count = max_value) then
                    count <= to_unsigned(0, NUM_BITS);
                else
                    count <= count + 1;
                end if;
            else
                if (count = 0) then
                    count <= to_unsigned(max_value, NUM_BITS);
                else
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    output <= std_logic_vector(count);
    
end BHV_UNSIGNED;

