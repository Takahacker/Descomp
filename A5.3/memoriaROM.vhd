library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0):= "0101";
  constant JMP : std_logic_vector(3 downto 0):= "0110";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  
  
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
    tmp(0)  := JSR & "000001110";   -- JSR @14
    tmp(1)  := JMP & "000000101";   -- JMP @5
    tmp(2)  := JEQ & "000001001";   -- JEQ @9
    tmp(3)  := NOP & "000000000";   -- NOP
    tmp(4)  := NOP & "000000000";   -- NOP
    tmp(5)  := LDI & "000000101";   -- LDI $5
    tmp(6)  := STA & "100000000";   -- STA @256
    tmp(7)  := CEQ & "100000000";   -- CEQ @256
    tmp(8)  := JMP & "000000010";   -- JMP @2
    tmp(9)  := NOP & "000000000";   -- NOP
    tmp(10) := LDI & "000000100";   -- LDI $4
    tmp(11) := CEQ & "100000000";   -- CEQ @256
    tmp(12) := JEQ & "000000011";   -- JEQ @3
    tmp(13) := JMP & "000001101";   -- JMP @13
    tmp(14) := NOP & "000000000";   -- NOP
    tmp(15) := RET & "000000001";   -- RET @1

    return tmp;	

    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;