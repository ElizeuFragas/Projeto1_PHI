library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity decrementador is 
	generic( nbits : natural );
	
	port(
			   a : in  std_logic_vector(nbits-1 downto 0);
				decremento : out std_logic_vector(nbits-1 downto 0)
	);
end entity;

architecture hard of decrementador is
	
	signal decremento_sig: signed(nbits-1 downto 0);
	
begin

	-- convert para signed e faz a soma
	decremento_sig <= signed(a) - signed(std_logic_vector(to_unsigned(1,3)));
	
	-- convete para std_logic
	decremento <= std_logic_vector(decremento_sig);
	
end architecture;