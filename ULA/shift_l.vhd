library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_l is
	generic(
		nbits     : integer := 4;
		shift : integer := 1
	);
	-- Declação das entradas e saída
	port(
		a 			 : in std_logic_vector(nbits-1 downto 0);
		a_shifted : out std_logic_vector(nbits-1 downto 0)
	);
end shift_l;
-- Declação da arquitetura
architecture comportamento of shift_l is

begin

	a_shifted <= std_logic_vector(shift_left(unsigned(a), shift));

end comportamento;