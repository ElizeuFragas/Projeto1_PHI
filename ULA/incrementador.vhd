library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity incrementador is 
	generic( nbits : natural );
	
	port(
			   a : in  std_logic_vector(nbits-1 downto 0);
				incremento : out std_logic_vector(nbits-1 downto 0)
	);
end entity;

architecture hard of incrementador is
	
	signal incremento_sig: signed(nbits-1 downto 0);
	
begin

	-- convert para signed e faz a soma
	incremento_sig <= signed(a) + signed(std_logic_vector(to_unsigned(1,3)));
	
	-- convete para std_logic
	incremento <= std_logic_vector(incremento_sig);
	
end architecture;