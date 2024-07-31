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
	
	component alu is
		generic(
			Width : natural := 32
		);
		port(
			A, B		  : in  bit_vector(Width-1 downto 0);
			ALUControl : in  bit_vector(2 downto 0);
			ALUResult	  : out bit_vector(Width-1 downto 0);
			Zero		  : out bit
		);
	end component alu;
	
	component regfile is
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
	end component regfile;
	
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
	
	component aludec is
    port (
        ALUOp      : in  bit_vector(1 downto 0);
        funct3     : in  bit_vector(2 downto 0);
        opb5       : in  bit;
        funct7b5   : in  bit;
        ALUControl : out bit_vector(2 downto 0)
    );
	end component aludec;
	
	component controller is
		generic(
			Width : natural := 32
		);
		port(op: in BIT_VECTOR(6 downto 0);
			funct3: in BIT_VECTOR(2 downto 0);
			funct7b5, Zero: in BIT;
			ResultSrc: out BIT_VECTOR(1 downto 0);
			MemWrite: out BIT;
			PCSrc, ALUSrc: out BIT;
			RegWrite: out BIT;
			Jump: buffer BIT;
			ImmSrc: out BIT_VECTOR(1 downto 0);
			ALUControl: out BIT_VECTOR(2 downto 0));
	end component controller;
	
	component datapath is
		generic(
			Width : natural := 32
		);
		port(clk, reset: in BIT;
			ResultSrc: in BIT_VECTOR(1 downto 0);
			PCSrc, ALUSrc: in BIT;
			RegWrite: in BIT;
			ImmSrc: in BIT_VECTOR(1 downto 0);
			ALUControl: in BIT_VECTOR(2 downto 0);
			Zero: out BIT;
			PC: buffer BIT_VECTOR(Width-1 downto 0);
			Instr: in BIT_VECTOR(Width-1 downto 0);
			ALUResult, WriteData: buffer BIT_VECTOR(Width-1 downto 0);
			ReadData: in BIT_VECTOR(Width-1 downto 0));
	end component datapath;
	
	component dmem is
		generic(
			Width : natural := 32
		);
		port(clk, we: in BIT;
			a, wd: in BIT_VECTOR(Width-1 downto 0);
			rd: out BIT_VECTOR(Width-1 downto 0));
	end component dmem;
	
	component imem is
		generic(
			Width : natural := 32
		);
		port(a: in BIT_VECTOR(Width-1 downto 0);
			rd: out BIT_VECTOR(Width-1 downto 0));
	end component imem;
	
	component maindec is
		generic(
			Width : natural := 32
		);
		port(op: in BIT_VECTOR(6 downto 0);
			ResultSrc: out BIT_VECTOR(1 downto 0);
			MemWrite: out BIT;
			Branch, ALUSrc: out BIT;
			RegWrite, Jump: out BIT;
			ImmSrc: out BIT_VECTOR(1 downto 0);
			ALUOp: out BIT_VECTOR(1 downto 0));
	end component maindec;
	
	component riscvsingle is
		generic(
			Width : natural := 32
		);
		port(clk, reset: in BIT;
			PC: out BIT_VECTOR(Width-1 downto 0);
			Instr: in BIT_VECTOR(Width-1 downto 0);
			MemWrite: out BIT;
			ALUResult, WriteData: out BIT_VECTOR(Width-1 downto 0);
			ReadData: in BIT_VECTOR(Width-1 downto 0));
	end component riscvsingle;
	
	component testbench is
		generic(
			Width : natural := 32
		);
	end component testbench;
	
	component top is
		generic(
			Width : natural := 32
		);
		port(clk, reset: in BIT;
			WriteData, DataAdr: buffer BIT_VECTOR(Width-1 downto 0);
			MemWrite: buffer BIT);
	end component top;


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
		for i in 2 to input'length-1 loop
			if input(i) = '1' then
				output := output + 2**i;
			end if;
		end loop;
		return output;
	end to_integer; 

end package body riscv_pkg;