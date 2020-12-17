-- Greg Stitt
-- University of Florida

-- The previous structural example showed a straightforward way of translating
-- a schematic into a VHDL structural architecture. Unfortunately, such an
-- approach has several disadvantages. First, it is often tedious to describe
-- the entire structure of a circuit. Second, it is not possible to handle
-- generics when manually specifying the entire structure.

-- This example shows how to use a "for generate" construct to represent
-- patterns in structural descriptions. The "for generate" should be used any
-- time you identify a pattern to a structure, or when you would like to make a
-- structural description generic.

-- The example shows a structural architecture for a ripple-carry
-- implementation of an adder with generic width. See ripple_carry.pdf for an
-- illustration of the structure that this archtiectures describes.

library ieee;
use ieee.std_logic_1164.all;

entity adder is
  generic (
    width :     positive := 8);
  port (
    x, y  : in  std_logic_vector(width-1 downto 0);
    cin   : in  std_logic;
    s     : out std_logic_vector(width-1 downto 0);
    cout  : out std_logic);
end adder;

architecture RIPPLE_CARRY of adder is

  -- the structural description of the ripple-carry adder will have will
  -- require width+1 signals, so we use an internal vector of width+1 elements.
  -- Note that this should *not* be width-1 downto 0.
  
  signal carry : std_logic_vector(width downto 0);

begin  -- RIPPLE_CARRY
  
  -- the following for generate loop will be unrolled width times during the
  -- elaboration step of synthesis, instantiating "width" full adders, which
  -- is exactly what we need for the ripple-carry adder.
  
  U_ADD : for i in 0 to width-1 generate

  -- If you look at the ripple_carry.pdf file, you will notice an obvious
  -- pattern. Each bit of the sum is computed using a full adder (fa). We can
  -- generalize the structure by representing the connections as a function of
  -- the current bit. In general, the full adder for bit i has an x input that
  -- connects to x(i) of the adder entity, a y input that connects to y(i) of
  -- the adder entity, and a s bit that connects to the s(i) bit of the adder
  -- entity. In addition, the carry in of each full adder is connected to
  -- the carry out of the previous full adder.  If we assume that the carry in
  -- for full adder i is represented by carry(i), then entire structure can be
  -- described as follows:
    
    U_FA : entity work.fa port map (
      x    => x(i),
      y    => y(i),
      cin  => carry(i),
      s    => s(i),
      cout => carry(i+1));

  end generate U_ADD;

  -- Note that the carry signal is not connected to any of the adder I/O.
  -- Therefore, we need to connected that actual carry in to carry(0) and the
  -- actual carry out to carry(width). 
  
  carry(0) <= cin;
  cout     <= carry(width);
  
end RIPPLE_CARRY;
