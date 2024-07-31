entity alu is
	generic(
		Width : natural := 32
	);
	port(
		A, B		  : in  bit_vector(Width-1 downto 0);
		ALUControl : in  bit_vector(2 downto 0);
		ALUResult	  : out bit_vector(Width-1 downto 0);
		Zero		  : out bit
	);
end alu;

architecture behaviour of alu is

constant Result_zero : bit_vector(Width-1 downto 0) := (others => '0');

function "+" (x, y : bit_vector) return bit_vector is
	variable v : bit := '0';
	variable s : bit_vector(x'length-1 downto 0);
begin
	for i in 0 to x'length-1 loop
		s(i) := x(i) xor y(i) xor v;
		v    := (x(i) and y(i)) or (v and (x(i) or y(i)));
	end loop;
	return s;
end "+";

function "-" (x, y : bit_vector) return bit_vector is
	variable r : bit_vector(x'length-1 downto 0);
	variable b : bit := '0';
begin
	for i in 0 to x'length-1 loop
		if (b = '1') then
			r(i) := not x(i) xor y(i);
			b := (x(i) and y(i)) or (not x(i) and b);
		else
			r(i) := x(i) xor y(i);
			b := not x(i) and y(i);
		end if;
	end loop;
	return r;
end "-";

begin
	process(ALUControl, A, B)
	begin
		case ALUControl is
			when "000" => -- soma
				ALUResult <= A + B;
			when "001" => -- subtração
				ALUResult <= A - B;
			when "010" => -- AND
				ALUResult <= A and B;
			when "011" => -- OR
				ALUResult <= A or B;
			when "101" => -- SLT
				if (A < B) then
					ALUResult <= (others => '1');
				else
					ALUResult <= (others => '0');
				end if;
			when others =>
				ALUResult <= (others => '0');
		end case;
		
		if (ALUResult = Result_zero) then
			Zero <= '1';
		else
			Zero <= '0';
		end if;
	end process;
end architecture behaviour;