---------------------------------
-- Título: regfile
-- Descrição: Banco de registradores
-- Autor: Felipe Pimenta Bernardo
-- Data: 14/05/2024
---------------------------------

entity regfile is
	generic(
        Width : natural := 32
    );

	port(
		clk: 				in 			bit;
		we3: 				in 			bit;
		a1, a2, a3: 		in 		bit_vector(4 downto 0);
		wd3: 				in 			bit_vector(Width-1 downto 0);
		rd1, rd2: 			out 		bit_vector(Width-1 downto 0)
	);
end regfile;

architecture behave of regfile is
	type ramtype is array (Width-1 downto 0) of bit_vector(Width-1 downto 0);
	signal mem: ramtype;
begin
	process(clk) begin
		if (clk'event and clk='1') then
			if we3 = '1' then mem(to_uinteger(a3)) <= wd3;
			end if;
		end if;
	end process;
	process(a1, a2, mem) begin
		if (to_uinteger(a1) = 0) then rd1 <= (others => '0');
		else rd1 <= mem(to_uinteger(a1));
		end if;
		if (to_uinteger(a2) = 0) then rd2 <= (others => '0');
		else rd2 <= mem(to_uinteger(a2));
		end if;
	end process;
end;