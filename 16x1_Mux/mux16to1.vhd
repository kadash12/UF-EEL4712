
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Example1 IS
PORT ( 
	w : IN STD_LOGIC_VECTOR(0 TO 15) ;
	s : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	f : OUT STD_LOGIC ) ;

END Example1;

ARCHITECTURE Structure OF Example1 IS

	COMPONENT mux4to1
		PORT ( w0, w1, w2, w3 : IN STD_LOGIC ;
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		f : OUT STD_LOGIC ) ;
	END COMPONENT ;

	SIGNAL m : STD_LOGIC_VECTOR(0 TO 3) ;
BEGIN

	Mux1: mux4to1 PORT MAP ( w(0), w(1), w(2), w(3), s(1 DOWNTO 0), m(0) ) ;
	Mux2: mux4to1 PORT MAP ( w(4), w(5), w(6), w(7), s(1 DOWNTO 0), m(1) ) ;
	Mux3: mux4to1 PORT MAP ( w(8), w(9), w(10), w(11), s(1 DOWNTO 0), m(2) ) ;
	Mux4: mux4to1 PORT MAP ( w(12), w(13), w(14), w(15), s(1 DOWNTO 0), m(3) ) ;
	Mux5: mux4to1 PORT MAP ( m(0), m(1), m(2), m(3), s(3 DOWNTO 2), f ) ;

END Structure;

ARCHITECTURE STR_Generate OF Example1 IS

COMPONENT mux4to1
PORT ( w0, w1, w2, w3 : IN STD_LOGIC ;
s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
f : OUT STD_LOGIC ) ;
         END COMPONENT ;


SIGNAL m : STD_LOGIC_VECTOR(0 TO 3) ;

BEGIN
	G1: FOR i IN 0 TO 3 GENERATE
		Muxes: mux4to1 PORT MAP (
		w(4*i), w(4*i+1), w(4*i+2), w(4*i+3), s(1 DOWNTO 0), m(i) ) ;
	END GENERATE ;

	Mux5: mux4to1 PORT MAP ( m(0), m(1), m(2), m(3), s(3 DOWNTO 2), f ) ;

END STR_Generate;
