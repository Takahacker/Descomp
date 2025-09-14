library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port (
    entrada_JMP: in std_logic;
    entrada_flag : in std_logic;
    entrada_JEQ : in std_logic;
    saida : out std_logic;
  );
end entity;

architecture comportamento of logicaDesvio is
  begin
    saida <= entrada_JMP or (entrada_JEQ and entrada_flag);
end architecture;