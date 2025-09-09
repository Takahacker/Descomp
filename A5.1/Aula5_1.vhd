library ieee;
use ieee.std_logic_1164.all;

entity Aula5_1 is
  generic (
    larguraDados     : natural := 8;
    larguraEnderecos : natural := 9;
    simulacao        : boolean := TRUE
  );
  port (
    CLOCK_50         : in  std_logic;
    KEY              : in  std_logic_vector(3 downto 0);
    PC_OUT           : out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR             : out std_logic_vector(9 downto 0);
    Palavra_Controle : out std_logic_vector(5 downto 0);  -- [SelMUX,HabilitaA,Oper(1:0),re,we]
    EntradaB_ULA     : out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;

architecture arquitetura of Aula5_1 is
  -- Dados
  signal REG1_ULA_A   : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_REG1     : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_ULA    : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_RAM    : std_logic_vector(larguraDados-1 downto 0);

  -- Instrução (opcode 12..9 | imm[8..0])
  signal instr        : std_logic_vector(12 downto 0);

  -- Controle: 7 bits = [6]=JMP | [5]=SelMUX | [4]=Habilita_A | [3:2]=Oper | [1]=re | [0]=we
  signal SinaisCtrl7  : std_logic_vector(6 downto 0);
  signal SelMUX       : std_logic;
  signal Habilita_A   : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal habLeituraMEM: std_logic;
  signal habEscritaMEM: std_logic;
  signal JMP          : std_logic;

  -- PC
  signal Endereco     : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC       : std_logic_vector(larguraEnderecos-1 downto 0);
  signal DIN_PC       : std_logic_vector(larguraEnderecos-1 downto 0);

  -- Clock
  signal CLK          : std_logic;
begin
  -- Clock: simulação sem detector; placa com detector
  gravar: if simulacao generate
    CLK <= KEY(0);
  else generate
    detectorSub0: entity work.edgeDetector(bordaSubida)
      port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
  end generate gravar;

  -- MUX: entrada B da ULA (RAM vs imediato instr[7..0])
  MUX_B_ULA : entity work.muxGenerico2x1
    generic map (larguraDados => larguraDados)
    port map (
      entradaA_MUX => Saida_RAM,
      entradaB_MUX => instr(larguraDados-1 downto 0),
      seletor_MUX  => SelMUX,
      saida_MUX    => MUX_REG1
    );

  -- Acumulador A
  REGA : entity work.registradorGenerico
    generic map (larguraDados => larguraDados)
    port map (
      DIN    => Saida_ULA,
      DOUT   => REG1_ULA_A,
      ENABLE => Habilita_A,
      CLK    => CLK,
      RST    => '0'
    );

  -- PC e incremento
  PC : entity work.registradorGenerico
    generic map (larguraDados => larguraEnderecos)
    port map (
      DIN    => DIN_PC,
      DOUT   => Endereco,
      ENABLE => '1',
      CLK    => CLK,
      RST    => '0'
    );

  incrementaPC : entity work.somaConstante
    generic map (larguraDados => larguraEnderecos, constante => 1)
    port map (entrada => Endereco, saida => proxPC);

  -- MUX do PC: proxPC vs destino de salto instr[8..0]
  MUX_PC_JMP : entity work.muxGenerico2x1
    generic map (larguraDados => larguraEnderecos)
    port map (
      entradaA_MUX => proxPC,
      entradaB_MUX => instr(8 downto 0),
      seletor_MUX  => JMP,
      saida_MUX    => DIN_PC
    );

  -- ULA
  ULA1 : entity work.ULASomaSub
    generic map (larguraDados => larguraDados)
    port map (
      entradaA => REG1_ULA_A,
      entradaB => MUX_REG1,
      saida    => Saida_ULA,
      seletor  => Operacao_ULA
    );

  -- ROM (13 bits)
  ROM1 : entity work.memoriaROM
    generic map (dataWidth => 13, addrWidth => larguraEnderecos)
    port map (Endereco => Endereco, Dado => instr);

  -- DECODER: gera 7 sinais conforme a tabela (ver abaixo)
  DEC1 : entity work.decoderInstru
    port map (opcode => instr(12 downto 9), saida => SinaisCtrl7);

  -- RAM (endereçada por instr[7..0], habilita = instr(8))
  RAM1 : entity work.memoriaRAM
    port map (
      addr     => instr(7 downto 0),
      we       => habEscritaMEM,
      re       => habLeituraMEM,
      habilita => instr(8),
      clk      => CLK,
      dado_in  => REG1_ULA_A,
      dado_out => Saida_RAM
    );

  -- Descompactação dos sinais de controle
  JMP           <= SinaisCtrl7(6);
  SelMUX        <= SinaisCtrl7(5);
  Habilita_A    <= SinaisCtrl7(4);
  Operacao_ULA  <= SinaisCtrl7(3 downto 2);
  habLeituraMEM <= SinaisCtrl7(1);
  habEscritaMEM <= SinaisCtrl7(0);

  -- Saídas de debug/observação
  LEDR(9 downto 8) <= Operacao_ULA;
  LEDR(7 downto 0) <= REG1_ULA_A;
  EntradaB_ULA     <= MUX_REG1;
  PC_OUT           <= Endereco;
  Palavra_Controle <= SinaisCtrl7(5 downto 0);  -- sem o JMP (para manter 6 bits)
end architecture;