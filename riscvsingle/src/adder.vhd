---------------------------------
-- Título: adder
-- Descrição: Somador
-- Autor: Felipe Pimenta Bernardo
-- Data: 07/05/2024
---------------------------------

entity adder is
	generic(
		Width : natural := 32
	);
	port(
		a, b:  in bit_vector(Width-1 downto 0);
		cin:   in bit;
		y:    out bit_vector(Width-1 downto 0);
		cout: out bit
	);
end adder;

architecture behaviour of adder is
component som_1a
port(a, b, ve : in bit;
	     s, vs : out bit);
end component;

signal carry : bit_vector(Width downto 0);

begin adders: for i in 1 to Width-1 generate
	begin inst: som_1a port map(
		a => a(i),
		b => b(i),
		ve => carry(i),
		s => y(i),
		vs => carry(i+1)
	);
	end generate;
	
	cout <= carry(Width);
	carry(0) <= cin;
end behaviour;