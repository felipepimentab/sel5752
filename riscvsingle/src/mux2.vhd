---------------------------------
-- Título: mux2
-- Descrição: Mux 2x1
-- Autor: Felipe Pimenta Bernardo
-- Data: 05/04/2024
---------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2 is
  port (
    d0, d1 : in bit;
    s      : in bit;
    y      : out bit
  );
end mux2; 

architecture behavior of mux2 is
  begin
    y <= d0 when (s = '0') else
         d1 when (s = '1');
  end;