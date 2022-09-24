Library ieee;
use ieee.std_logic_1164.all;

entity porta_or is

	generic ( nbits : integer );
	-- Declação das entradas e saída
	port(
		  a, b : in std_logic_vector(nbits-1 downto 0);
	      z    :   out std_logic_vector(nbits-1 downto 0)
	
	);
	
end entity;

-- Declação da arquitetura
architecture hard of porta_or is

begin

	z <= a or b;
  
 end hard;