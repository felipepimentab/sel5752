library work; 
use work.riscv_pkg.all;

entity regfile is
	generic(
		Width : natural := 32
	);
	port(
		A1, A2, A3 : in bit_vector(4 downto 0);
		WE3: in bit;
		WD3: in bit_vector(Width-1 downto 0);
		clk: in bit;
		RD1, RD2: out bit_vector(Width-1 downto 0)
	);
end regfile;

architecture behavior of regfile is
	type memtype is array(0 to 31) of bit_vector(Width-1 downto 0);
	signal mem: memtype;

begin
	-- Write 3
	process(clk) begin
		if(clk'event and clk='1') then
			if we3 = '1' then
				mem(to_integer(A3)) <= WD3;
			end if;
		end if;
	end process;
	process(A1, A2, mem) begin
		-- Read 1
		if(to_integer(A1) = 0) then
			RD1 <= (others => '0');
		else
			RD1 <= mem(to_integer(A1));
		end if;
		-- Read 2
		if(to_integer(A2) = 0) then
			RD2 <= (others => '0');
		else
			RD2 <= mem(to_integer(A2));
		end if;
	end process;
end;