---------------------------------
-- Título: mux3
-- Descrição: mux 3-to-1
-- Autor: Felipe Pimenta Bernardo
-- Data: 09/04/2024
---------------------------------

entity mux3 is
	port (
		d0, d1, d2 : in bit;
		s : in bit_vector(1 downto 0);
		y : out bit
	);
end mux3;

architecture behavior of mux3 is
	begin
		with s select
			y <= d0 when "00",
              d1 when "01",
              d2 when others;
	end;