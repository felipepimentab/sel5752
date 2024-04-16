---------------------------------
-- Titulo: mux2
-- Descricao: mux 2-to-1
-- Autor: Felipe Pimenta Bernardo
-- Data: 09/04/2024
---------------------------------

entity mux2 is
	port (
		d0, d1 : in bit_vector(31 downto 0);
		s		 : in bit;
		y		 : out bit_vector(31 downto 0)
	);
end mux2;

architecture behavior of mux2 is
	begin
		y <= d0 when (s = '0') else
			  d1 when (s = '1');
	end;