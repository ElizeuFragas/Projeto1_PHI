Library ieee;
use ieee.std_logic_1164.all;

entity multiplex is 
	generic ( nbits : natural );
	-- Declação das entradas e saída
	port(
			a, b, c, d, e, f, g, h, i: in std_logic_vector(nbits-1 downto 0);
			sel 		 	             : in std_logic_vector(nbits-1 downto 0);	
			saida     	             : out std_logic_vector(nbits-1 downto 0)
	);
end entity;

architecture hard of multiplex is 
-- Declação da arquitetura
begin
	saida  <=  a when sel="0000" else
			   b when sel="0001" else
			   c when sel="0010" else
			   d when sel="0011" else
			   e when sel="0100" else
			   f when sel="0101" else
			   g when sel="0110" else
			   h when sel="0111" else
			   i;
end hard;
				