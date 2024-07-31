library work;
use WORK.RISCV_PKG.all;

library IEEE;
use ieee.std_logic_textio.all;

use STD.TEXTIO.all;

entity imem is
	generic(
		Width : natural := 32
	);
	port(a: in BIT_VECTOR(Width-1 downto 0);
		rd: out BIT_VECTOR(Width-1 downto 0));
end;

architecture behave of imem is
	type ramtype is array (63 downto 0) of
				BIT_VECTOR(Width-1 downto 0);
	-- initialize memory from file
	impure function init_ram_hex return ramtype is
		file text_file : text open read_mode is "../src/riscvtest.txt";
		variable text_line : line;
		variable ram_content : ramtype;
		variable i : integer := 0;
		begin
		for i in 0 to 63 loop -- set all contents low
			ram_content(i) := (others => '0');
		end loop;
		while not endfile(text_file) loop -- set contents from file
			readline(text_file, text_line);
			hread(text_line, ram_content(i));		-- Function do pacote TEXTIO da versao 2008 do VHDL -- Leitura de valores em hexadecimal
			i := i + 1;
			exit when i=63;
		end loop;
		
		return ram_content;
	end function;
	
	signal mem : ramtype := init_ram_hex;
	begin
	-- read memory
	process(a) begin
		rd <= mem(to_integer(a(Width-1 downto 2)));
	end process;
end;