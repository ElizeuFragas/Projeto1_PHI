library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is 

	generic( nbits : integer := 4);
	-- Declação das entradas e saída
	port(
			a, b  : in std_logic_vector(nbits-1 downto 0);
			sel   : in natural range 0 to 8;
			saida	: out std_logic_vector(nbits-1 downto 0)
	);
end entity;
-- Declação da arquitetura
architecture op of ULA is
	
	signal c1, c2, c3, c4, c5, c6, c7, c8, c9 : std_logic_vector(nbits-1 downto 0);
	-------------------------------------------------------------------------
	component multiplex 
	
	generic ( nbits : integer := 4); --numero de bits
	port(
			a, b, c, d, e, f, g, h, i : in std_logic_vector(nbits-1 downto 0);
			sel 		 	      		  : in natural range 0 to 8;
			saida     	        		  : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	---------------------------------------------------------------------------
	component somador is 
	generic ( nbits   : integer := 4);
		
	port(
			a, b : in  std_logic_vector(nbits-1 downto 0);
			soma : out std_logic_vector(nbits-1 downto 0)
	); 	
	end component;
	--------------------------------------------------------------------------
	component subtrator 
		
	generic( nbits : natural := 4);
	port(
		 	a, b : in  std_logic_vector(nbits-1 downto 0);
		 	sub  : out std_logic_vector(nbits-1 downto 0)
	);
    end component;
	-----------------------------------------------------------------------	
	component porta_and 
	
	generic ( nbits : integer := 4);
	port(
			a, b : in std_logic_vector(nbits-1 downto 0);
			z	  : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	------------------------------------------------------------------------
	component porta_or 

	generic ( nbits : integer := 4);
	port(
			a, b : in std_logic_vector(nbits-1 downto 0);
			z	  : out std_logic_vector(nbits-1 downto 0)
	);
	
	end component;
    -------------------------------------------------------------------------
	component porta_not is 
	generic( nbits : natural := 4);
		
	port(
		 	a 		  : in  std_logic_vector(nbits-1 downto 0);
		 	a_barra : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	----------------------------------------------------------------------------
	component shift_r is
		generic(
			nbits : integer := 4;
			shift : integer := 1
		);
		port(
			a 			 : in std_logic_vector(nbits-1 downto 0);
			a_shifted : out std_logic_vector(nbits-1 downto 0)
		);
	end component;
	----------------------------------------------------------------------------
	component shift_l is
		generic(
			nbits     : integer := 4;
			shift : integer := 1
		);
		port(
			a 			 : in std_logic_vector(nbits-1 downto 0);
			a_shifted : out std_logic_vector(nbits-1 downto 0)
		);
	end component;
	----------------------------------------------------------------------------
	component incrementador is 
	generic( nbits : natural := 4 );
			
	port(
			a          : in  std_logic_vector(nbits-1 downto 0);
			incremento : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	----------------------------------------------------------------------------
	component decrementador is 
	generic( nbits : natural := 4 );
	
	port(
			a          : in  std_logic_vector(nbits-1 downto 0);
			decremento : out std_logic_vector(nbits-1 downto 0)
	);
	end component;
	-- Instanciações
	begin
		mux : multiplex
		generic map( nbits => nbits)
		port map(
					a     => c1,
					b     => c2,
					c     => c3,
					d     => c4,
					e     => c5,
					f     => c6,
					g     => c7,
					h     => c8,
					i     => c9,
					saida => saida,
					sel   => sel
		);

		sum : somador
		generic map( nbits => nbits)
		port map(
					a    => a,
					b    => b,
					soma => c1
		);
				
		sub : subtrator
		generic map( nbits => nbits)
		port map(
					a   => a,
					b   => b,
					sub => c2
		);
		
		p_and : porta_and
		generic map( nbits => nbits)
		port map(
					a => a,
					b => b,
					z => c3
		);

		p_or : porta_or
		generic map( nbits => nbits)
		port map(
					a => a,
					b => b,
					z => c4
		);
		
		p_not : porta_not
		generic map( nbits => nbits)
		port map(
					a       => a,
					a_barra => c5
		);
		
		shift1 : shift_r
		generic map( nbits => nbits,
						 shift => 1						
		)
		port map(
					a         => a,
					a_shifted => c6
		);

		shift2 : shift_l
		generic map( nbits => nbits,
						 shift => 1						
		)
		port map(
					a         => a,
					a_shifted => c7
		);

		inc : incrementador
		generic map( nbits => nbits)
		port map(
					a          => a,
					incremento => c8
		);
		
		dec : decrementador
		generic map( nbits => nbits)
		port map(
					a          => a,
					decremento => c9
		);

		
end op;
