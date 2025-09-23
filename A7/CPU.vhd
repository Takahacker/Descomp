library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  generic (
    larguraDados     : natural := 8;
    larguraEnderecos : natural := 9;
    simulacao        : boolean := TRUE
  );
  port (
   CLOCK	         : in  std_logic;
	 RESET            : in  std_logic;
	 RD               : out std_logic;
	 WR               : out std_logic;
	 ROM_ADDRESS      : out std_logic_vector(8 downto 0);
	 INSTRUCTION_IN   : in std_logic_vector(12 downto 0);
	 DATA_IN          : in std_logic_vector(7 downto 0);
	 DATA_OUT         : out std_logic_vector(7 downto 0);
	 DATA_ADDRESS     : out std_logic_vector(8 downto 0)
  );
end entity;

architecture arquitetura of CPU is
  -- Dados
  signal REG1_ULA_A   : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_REG1     : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_ULA    : std_logic_vector(larguraDados-1 downto 0);
  signal Saida_RAM    : std_logic_vector(larguraDados-1 downto 0);

  -- Instrução (4 bits op + 9 bits imediato)
  signal instr        : std_logic_vector(12 downto 0);

  -- Controle (12 bits)
  signal SinaisCtrl12 : std_logic_vector(11 downto 0);

  signal habEscritaRetorno : std_logic;
  signal JMP               : std_logic;
  signal RET               : std_logic;
  signal JSR               : std_logic;
  signal JEQ               : std_logic;

  signal SelMUX        : std_logic;
  signal Habilita_A    : std_logic;
  signal Operacao_ULA  : std_logic_vector(1 downto 0);
  signal HabFlag       : std_logic;

  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;

  -- PC
  signal Endereco     : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC       : std_logic_vector(larguraEnderecos-1 downto 0);
  signal DIN_PC       : std_logic_vector(larguraEnderecos-1 downto 0);

  -- Clock
  signal CLK          : std_logic;

  -- ULA / Flag
  signal SinalZero      : std_logic;
  signal SaidaFlipFlop  : std_logic;

  -- Lógica de desvio (seletor do MUX do PC)
  signal SelMuxPC       : std_logic_vector(1 downto 0);

  -- Registrador de retorno (usar mesma largura do PC) 
  signal EndRetorno_OUT : std_logic_vector(larguraEnderecos-1 downto 0);
  
  

begin
  -- Conecta o clock interno ao clock de entrada
  CLK <= CLOCK;

	instr <= INSTRUCTION_IN;

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

  -- PC
  PC : entity work.registradorGenerico
    generic map (larguraDados => larguraEnderecos)
    port map (
      DIN    => DIN_PC,
      DOUT   => Endereco,
      ENABLE => '1',
      CLK    => CLK,
      RST    => RESET
    );

  incrementaPC : entity work.somaConstante
    generic map (larguraDados => larguraEnderecos, constante => 1)
    port map (entrada => Endereco, saida => proxPC);

  -- MUX do PC: 00=proxPC | 01=imediato | 10=retorno | 11=reservado
  MUX_PC : entity work.muxGenerico4x1
    generic map (larguraDados => larguraEnderecos)
    port map (
      entradaA_MUX => proxPC,
      entradaB_MUX => instr(8 downto 0),
      entradaC_MUX => EndRetorno_OUT,
      entradaD_MUX => EndRetorno_OUT,
      seletor_MUX  => SelMuxPC,
      saida_MUX    => DIN_PC
    );

  -- Registrador de retorno (salva PC+1)
  EndRetorno : entity work.registradorGenerico
    generic map (larguraDados => larguraEnderecos)
    port map (
      DIN    => proxPC,
      DOUT   => EndRetorno_OUT,
      ENABLE => habEscritaRetorno,
      CLK    => CLK,
      RST    => '0'
    );

  -- ULA
  ULA1 : entity work.ULASomaSub
    generic map (larguraDados => larguraDados)
    port map (
      entradaA => REG1_ULA_A,
      entradaB => MUX_REG1,
      saida    => Saida_ULA,
      seletor  => Operacao_ULA,
      zero     => SinalZero
    );

  -- Decoder (12 sinais)
  DEC1 : entity work.decoderInstru
    port map (opcode => instr(12 downto 9), saida => SinaisCtrl12);


  -- Flag zero da ULA
  FlagIgual: entity work.flipflop
    port map(
      DIN    => SinalZero,
      DOUT   => SaidaFlipFlop,
      ENABLE => HabFlag,
      CLK    => CLK,
      RST    => '0'
    );

  -- Lógica de desvio -> seletor do MUX do PC
  LogicaDesvio: entity work.logicaDesvio
    port map(
      entrada_JMP  => JMP,
      entrada_flag => SaidaFlipFlop,
      entrada_JEQ  => JEQ,
      entrada_JSR  => JSR,
      entrada_RET  => RET,
      saida        => SelMuxPC
    );

  -- Descompactação dos sinais de controle
  habEscritaRetorno <= SinaisCtrl12(11);
  JMP               <= SinaisCtrl12(10);
  RET               <= SinaisCtrl12(9);
  JSR               <= SinaisCtrl12(8);
  JEQ               <= SinaisCtrl12(7);
  SelMUX            <= SinaisCtrl12(6);
  Habilita_A        <= SinaisCtrl12(5);
  Operacao_ULA      <= SinaisCtrl12(4 downto 3);
  HabFlag           <= SinaisCtrl12(2);
  habLeituraMEM     <= SinaisCtrl12(1);
  habEscritaMEM     <= SinaisCtrl12(0);

  -- Saídas CPU
	ROM_ADDRESS <= Endereco;
	DATA_OUT <= REG1_ULA_A;
	DATA_ADDRESS <= INSTRUCTION_IN(8 downto 0);
	RD <= habLeituraMEM;
	WR <= habEscritaMEM;
	
	
end architecture;
