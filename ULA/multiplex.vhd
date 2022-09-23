Library ieee;
use ieee.std_logic_1164.all;

entity multiplex is 
	generic ( nbits : integer );
	
	port(
			a, b, c, d, e, f, g, h, i: in std_logic_vector(nbits-1 downto 0);
			sel 		 	             : in natural range 0 to 5;
			saida     	                 : out std_logic_vector(nbits-1 downto 0)
	);
end entity;

architecture hard of multiplex is 

begin
	saida  <=  a when sel=0 else
			   b when sel=1 else
			   c when sel=2 else
			   d when sel=3 else
			   e when sel=4 else
			   f when sel=5 else
			   g when sel=6 else
			   h when sel=7 else
			   i;
end hard;
				