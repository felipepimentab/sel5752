library IEEE;
use IEEE.NUMERIC_BIT.all;		-- Used for rising_edge function
library work;
use WORK.RISCV_PKG.all;

entity dmem is
	generic(
		Width : natural := 32
	);
	port(clk, we: in BIT;
		a, wd: in BIT_VECTOR(Width-1 downto 0);
		rd: out BIT_VECTOR(Width-1 downto 0));
end;

architecture behave of dmem is
begin
	process (clk, a) is
		type ramtype is array (63 downto 0) of
		BIT_VECTOR(Width-1 downto 0);
		variable mem: ramtype;
	begin
		-- read or write memory
		-- loop
		if rising_edge(clk) then
			if (we = '1') then mem(to_integer(a(7 downto 2))) := wd;
			end if;
		end if;
		rd <= mem(to_integer(a(7 downto 2)));
		-- wait on clk, a;
		-- end loop;
	end process;
end;