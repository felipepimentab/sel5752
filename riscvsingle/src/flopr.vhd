---------------------------------
-- Título: flopr
-- Descrição: Flop Reset
-- Autor: Felipe Pimenta Bernardo
-- Data: 16/04/2024
---------------------------------

entity flopr is
	generic(
		Width : natural := 32
	);
	port (
		clk, reset : in bit;
		d : in bit_vector(Width-1 downto 0);
		q: out bit_vector(Width-1 downto 0)
	);
end flopr;

architecture behaviour of flopr is
	begin
		process (clk, reset)
		begin
			if reset = '1' then
				q <= (others => '0');
			elsif (clk'event and clk = '1') then
				q <= d;
			end if;
		end process;
	end;