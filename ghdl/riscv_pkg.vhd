library work;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

package riscv_pkg is
	constant RISCV_Data_Width : natural := 32;
	
	function to_integer(input : bit_vector) return integer;
	
	function "+" (x, y : bit_vector) return bit_vector;

	function "-" (x, y : bit_vector) return bit_vector;
	
	component mux2 is
		generic(
			Width : natural := RISCV_Data_Width
		);
		port(
			d0, d1 : in bit_vector(Width-1 downto 0);
			s		 : in bit;
			y		 : out bit_vector(Width-1 downto 0)
		);
	end component mux2;
		
	component mux3 is
		generic(
			Width : natural := RISCV_Data_Width
		);
		port(
			d0, d1, d2 : in bit_vector(Width-1 downto 0);
			s : in bit_vector(1 downto 0);
			y : out bit_vector(Width-1 downto 0)
		);
	end component mux3;
	
	component flopr is
		generic(
			Width : natural := 32
		);
		port (
			clk, reset : in bit;
			d : in bit_vector(Width-1 downto 0);
			q: out bit_vector(Width-1 downto 0)
		);
	end component flopr;
	
	component adder is
		generic(
			Width : natural := 32
		);
		port(
			a, b:  in bit_vector(Width-1 downto 0);
			cin:   in bit;
			y:    out bit_vector(Width-1 downto 0);
			cout: out bit
		);
	end component adder;
	
	component extend is
		generic (
			Width : natural := 32
		);

		port (
			instr:  in  bit_vector(Width-1 downto 7);
			immsrc: in  bit_vector(1 downto 0);
			immext: out bit_vector(Width-1 downto 0)
    );
	end component extend;

end package riscv_pkg;

package body riscv_pkg is

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
	
	function to_integer(input : bit_vector) return integer is 
		variable output : integer := 0;
	begin 
		for i in 0 to input'length-1 loop
			if input(i) = '1' then
				output := output + 2**i;
			end if;
		end loop;
		return output;
	end to_integer; 

end package body riscv_pkg;