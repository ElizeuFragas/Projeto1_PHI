library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity ULA_tb is
end ULA_tb;

architecture test of ULA_tb is
	component ULA is
	
	generic( nbits : natural := 4);
	port(
		a, b : in std_logic_vector(nbits-1 downto 0);
		sel : in std_logic_vector(nbits-1 downto 0);
		saida : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	
	constant mux_val     : std_logic_vector(0 to 39) := x"0123456789";
	
	signal input_a, input_b, saida : std_logic_vector(3 downto 0);
	signal sel_mux : std_logic_vector(3 downto 0) := "0000";
	signal clock : std_logic := '0';
	
begin
	dut: ULA
	port map(
		a => input_a,
		b => input_b, 
		sel => sel_mux,
		saida => saida
	);
	
	process(clock)
		variable ptr_mux : integer := 0;
	begin
		if rising_edge(clock) then
			sel_mux <= mux_val(ptr_mux to ptr_mux+3);
			ptr_mux := ptr_mux + 4;
			if ptr_mux = 40 then
				ptr_mux	 := 0;
			end if;
		end if;
	end process;
	
	process(clock)
		file F: TEXT open READ_MODE is "C:\Users\Enf\Documents\QuartusProjects\Projeto1PHI\ULA\entradas.txt";
		variable L: LINE;
		variable entrada : integer;
	begin
		if rising_edge(clock) then
			if not endfile(F) then
				READLINE(F, L);
				READ(L, entrada);
				input_a <= std_logic_vector(to_unsigned(entrada, 4));
				
				READLINE(F, L);
				READ (L, entrada);
				input_b <= std_logic_vector(to_unsigned(entrada, 4));
				
			end if;
		end if;
	end process;
	
	process(clock)
		file F: TEXT open WRITE_MODE is "C:\Users\Enf\Documents\QuartusProjects\Projeto1PHI\ULA\out.txt";
		variable L: LINE;
	begin
		if falling_edge(clock) then
			WRITE (L, to_integer(signed(input_a)));
			WRITE (L, ' ');
			WRITE (L, ' ');
			WRITE (L, to_integer(signed(input_b)));
			WRITE (L, ' ');
			WRITE (L, ' ');
			WRITE (L, to_integer(signed(saida)));
			WRITE (L, ' ');
			WRITE (L, ' ');
			WRITE (L, to_integer(unsigned(sel_mux)));
			WRITELINE (F, L);		
		end if;
	end process;
	
	clock <= not clock after 5 ns;
end test;