library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity somador is 
	generic( nbits : natural );
	-- Declação das entradas e saída
	port(
			   a,b : in  std_logic_vector(nbits-1 downto 0);
				soma : out std_logic_vector(nbits-1 downto 0)
	);
end entity;
-- Declação da arquitetura
architecture hard of somador is
	
	signal soma_sig: signed(nbits-1 downto 0);
	
begin

	-- convert para signed e faz a conta
	soma_sig <= signed(a) + signed(b);
	
	-- convete para std_logic
	soma <= std_logic_vector(soma_sig);
	
end hard;