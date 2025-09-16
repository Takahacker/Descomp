library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port (
    opcode : in  std_logic_vector(3 downto 0);
    saida  : out std_logic_vector(11 downto 0)  -- 12 sinais de controle
  );
end entity;

architecture comportamento of decoderInstru is
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
begin
  saida <= 
    -- habEscrRet JMP RET JSR JEQ SelMUX HabA Oper(1..0) HabFlag re we
    "000000000000" when opcode = NOP else  -- NOP
    "000000101010" when opcode = LDA else  -- HabA=1, Oper=01, re=1
    "000000101100" when opcode = SOMA else -- HabA=1, Oper=10, re=1
    "000000101110" when opcode = SUB else  -- HabA=1, Oper=11, re=1
    "000001110000" when opcode = LDI else  -- SelMUX=1, HabA=1
    "000000000001" when opcode = STA else  -- we=1=
    "010000000000" when opcode = JMP else  -- JMP=1
    "000010000000" when opcode = JEQ else  -- JEQ=1
    "000000000110" when opcode = CEQ else  -- Oper=10 (SUB), HabFlag=1, re=1
    "100100000000" when opcode = JSR else  -- habEscrRet=1, JSR=1
    "001000000000" when opcode = RET else  -- RET=1
    "000000000000";                        -- default NOP
end architecture;
