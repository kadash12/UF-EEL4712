library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Johnny Li
-- Lab 5: top_level_quiz

entity top_level is
	generic (
		WIDTH : positive := 16
	);
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

    component seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0));
    end component;
	 
	constant C0              : std_logic_vector(3 downto 0) := (others => '0');

	signal done : std_logic;
	signal output : std_logic_vector (Width-1 downto 0);
	signal seg0, seg1, seg2, seg3 : std_logic_vector (6 downto 0);
	signal temp : std_logic_vector (3 downto 0);
	signal temp2 : std_logic_vector (15 downto 0) := "0000000000000000";
	signal temp3 : std_logic_vector (15 downto 0);
	
begin  -- STR

	  temp2 <= (0 => switch(0), 1 => switch(1), 2 => switch(2), 3 => switch(3), others => '0');
	temp3 <= std_logic_vector(unsigned(temp2) mod 7);

    U_FACT : entity work.factorial(FSM_D1)
        generic map (
            WIDTH => 16
            )
			port map(				
				 clk     => clk50MHz,
				 rst     => switch(8),
				 n       => temp3,
				 go      => switch(9),
				 done    => done,
				 output  => output
			);
			
	U_SEG_CONTL : entity work.segment_crtl
		port map(
			factorial => output,
			seg0 => seg0,
			seg1 => seg1,
			seg2 => seg2,
			seg3 => seg3
		);

    U_LED5 : seg port map (
        input  => c0,
        output => led5);
		  
		  led4 <= seg3;
		  led3 <= seg2;
		  led2 <= seg1;
		  led1 <= seg0;

		  temp <= (0 => done, others=>'0');
    U_LED0 : seg port map (
        input  => temp,
        output => led0);
    

    led5_dp <= '1';
    led4_dp <= '1';
    led3_dp <= '1';
    led2_dp <= '1';
    led1_dp <= '1';
    led0_dp <= '1';

end STR;