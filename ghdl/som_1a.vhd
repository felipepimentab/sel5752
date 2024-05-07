ENTITY som_1a IS
  PORT   (a, b, ve  : IN  BIT;
          s, vs     : OUT BIT); 
END som_1a;

ARCHITECTURE teste OF som_1a IS
BEGIN
  s  <=  a XOR b  XOR ve;                      -- soma
  vs <= (a AND b) OR (a AND ve) OR (b AND ve); -- vai um
END teste;