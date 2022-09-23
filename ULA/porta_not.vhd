library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity porta_not is 
	generic( nbits : natural );
	
	port(
			   a 		  : in  std_logic_vector(nbits-1 downto 0);
				a_barra : out std_logic_vector(nbits-1 downto 0)
	);
end porta_not;

architecture hard of porta_not is
	
	signal sub_sig: std_logic_vector(nbits-1 downto 0);
	
begin
	-- convert para signed e faz a conta
	a_barra <= not(a);
	
end hard;