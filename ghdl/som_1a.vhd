entity som_1a is 
port( a, b, ve : in bit;
		s, vs		: out bit);
end som_1a;

architecture soma of som_1a is
begin
	s <= a xor b xor ve;
	vs <= (a and b) or (a and ve) or (b and ve);
end soma;