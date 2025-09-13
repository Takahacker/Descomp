library ieee;
use ieee.std_logic_1164.all;

entity Aula5_3 is
  generic (
    larguraDados     : natural := 8;
    larguraEnderecos : natural := 9;
    simulacao        : boolean := TRUE
  );
  port (
    CLOCK_50         : in  std_logic;
    KEY              : in  std_logic_vector(3 downto 0);
    PC_OUT           : out std_logic_vector(larguraEnderecos-1 downto 0);
    Palavra_Controle : out std_logic_vector(5 downto 0);  -- [SelMUX,HabilitaA,Oper(1:0),re,we]
    EntradaB_ULA     : out std_logic_vector(larguraDados-1 downto 0);
    OpULA : out std_logic_vector(1 downto 0);
    Out_RegA : out std_logic_vector(7 downto 0)
  );
end entity;

architecture arquitetura of Aula5_3 is
  -- Dados
  signal REG1_ULA_A   : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_REG1     : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_ULA    : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_RAM    : std_logic_vector(larguraDados-1 downto 0);

  -- Instrução (opcode 12..9 | imm[8..0])
  signal instr        : std_logic_vector(12 downto 0);

  -- Controle: 9 bits = [6]=JMP | [5]=SelMUX | [4]=Habilita_A | [3:2]=Oper | [1]=re | [0]=we
  signal SinaisCtrl9  : std_logic_vector(8 downto 0);
  signal SelMUX       : std_logic;
  signal Habilita_A   : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal habLeituraMEM: std_logic;
  signal habEscritaMEM: std_logic;
  signal JMP          : std_logic;
  signal HabFlag      : std_logic;
  signal JEQ          : std_logic;
  signal SinalZero    : std_logic;
  signal SaidaFlipFlop : std_logic;
  signal SelMuxPC : std_logic;

  -- PC
  signal Endereco     : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC       : std_logic_vector(larguraEnderecos-1 downto 0);
  signal DIN_PC       : std_logic_vector(larguraEnderecos-1 downto 0);

  -- Clock
  signal CLK          : std_logic;


  signal HabFlag      : std_logic;
  signal JEQ          : std_logic;

  -- PC
  signal Endereco     : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC       : std_logic_vector(larguraEnderecos-1 downto 0);
  signal DIN_PC       : std_logic_vector(larguraEnderecos-1 downto 0);

  -- Clock
  signal CLK          : std_logic;
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
      seletor  => Operacao_ULA,
      zero => SinalZero
    );

  -- ROM (13 bits)
  ROM1 : entity work.memoriaROM
    generic map (dataWidth => 13, addrWidth => larguraEnderecos)
    port map (Endereco => Endereco, Dado => instr);

  -- DECODER: gera 7 sinais conforme a tabela (ver abaixo)
  DEC1 : entity work.decoderInstru
    port map (opcode => instr(12 downto 9), saida => SinaisCtrl9);

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

    -- Flag zero da ULA
  FlagIgual: entity work.flipflop
    port map(
      DIN => SinalZero,
      DOUT => ,
      ENABLE => HabFlag,
      CLK => CLK,
      RST => '0'
    );

  -- Logica Desvio
  LogicaDesvio: entity work.logicaDesvio
    port map(
      entradaJMP => JMP,
      entrada_flag => SaidaFlipFlop,
      entrada_JEQ => JEQ,
      saida => SelMuxPC
    );

  -- Descompactação dos sinais de controle
  JMP           <= SinaisCtrl9(8);
  JEQ           <= SinaisCtrl9(7);
  SelMUX        <= SinaisCtrl9(6);
  Habilita_A    <= SinaisCtrl9(5);
  Operacao_ULA  <= SinaisCtrl9(4 downto 3);
  HabFlag       <= SinaisCtrl9(2);
  habLeituraMEM <= SinaisCtrl9(1);
  habEscritaMEM <= SinaisCtrl9(0);

  -- Saídas de debug/observação

  EntradaB_ULA     <= MUX_REG1;
  PC_OUT           <= Endereco;
  Palavra_Controle <= SinaisCtrl9; 
  OpULA <=  Operacao_ULA;
  Out_RegA <= REG1_ULA_A;
  

  end architecture;