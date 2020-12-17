LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux4to1 IS
GENERIC(
	width  :     positive := 16);
PORT ( 
w0, w1, w2, w3 : IN STD_LOGIC_VECTOR(WIDTH-1 downto 0);
s : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
f : OUT STD_LOGIC_VECTOR(WIDTH-1 downto 0) 
) ;
END mux4to1;

ARCHITECTURE Dataflow OF mux4to1 IS
BEGIN
	WITH s SELECT
	f <= 	w0 WHEN "00",
		w1 WHEN "01",
		w2 WHEN "10",
		w3 WHEN OTHERS ;
END Dataflow ;

