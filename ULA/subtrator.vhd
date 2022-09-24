library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is 
generic( nbits : natural);

	-- Declação das entradas
	port(
			a,b : in  std_logic_vector(nbits-1 downto 0);
			sub : out std_logic_vector(nbits-1 downto 0)
	);
end subtrator;

-- Declação da arquitetura
architecture hard of subtrator is
	
	signal sub_sig: signed(nbits-1 downto 0);
	
begin

	-- converte a e b para signed e faz a conta
	sub_sig <= signed(a) - signed(b);
	
	-- convete para std_logic
	sub <= std_logic_vector(sub_sig);
	
end hard;