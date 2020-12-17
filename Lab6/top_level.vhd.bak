-- The following entity is the top-level entity for lab 5.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0);
        led0     : out std_logic_vector(6 downto 0);
        led0_dp  : out std_logic;
        led1     : out std_logic_vector(6 downto 0);
        led1_dp  : out std_logic;
        led2     : out std_logic_vector(6 downto 0);
        led2_dp  : out std_logic;
        led3     : out std_logic_vector(6 downto 0);
        led3_dp  : out std_logic;
        led4     : out std_logic_vector(6 downto 0);
        led4_dp  : out std_logic;
        led5     : out std_logic_vector(6 downto 0);
        led5_dp  : out std_logic
        );
end top_level;

architecture STR of top_level is

component decoder7seg
	port (
		input  : in  std_logic_vector(3 downto 0);
		output : out std_logic_vector(6 downto 0));
end component;

constant C0 : std_logic_vector(3 downto 0) := (others => '0');

signal v,d : std_logic;
signal temp : std_logic_vector (3 downto 0);
signal temp1 : std_logic_vector (3 downto 0);

begin  -- STR

    U_SIMON_top : entity work.simon_top 
	port map (
		clk	=> clk50MHz,
		rst	=> switch(0),	
		go	=> switch(1),
		valid => v, --denotes output is valid.
		done => d);

    U_LED5 : decoder7seg port map (
        input  => C0,
        output => led5);

    U_LED4 : decoder7seg port map (
        input  => C0,
        output => led4);
    
    U_LED3 : decoder7seg port map (
        input  => C0,
        output => led3);

    U_LED2 : decoder7seg port map (
        input  => C0,
        output => led2);
    
	temp1 <= (0 => v, others => '0');
    U_LED1 : decoder7seg port map (
        input  => temp1,
        output => led1);

	temp <= (0 => d, others => '0');
    U_LED0 : decoder7seg port map (
        input  => temp,
        output => led0);
    

    led5_dp <= '1';
    led4_dp <= '1';
    led3_dp <= '1';
    led2_dp <= '1';
    led1_dp <= '1';
    led0_dp <= '1';

end STR;