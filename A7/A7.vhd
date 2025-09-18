library ieee;
use ieee.std_logic_1164.all;

entity A7 is
  generic (
    larguraDados     : natural := 8;
    larguraEnderecos : natural := 9;
    simulacao        : boolean := TRUE
  );
  port (
	 CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
   LEDR  : out std_logic_vector(9 downto 0)
   );
  
end entity;

-- ====================================================================

architecture arquitetura of A7 is

-- Sinais 

	signal CLK: std_logic;

-- CPU
  signal Escrita: std_logic;
  signal Leitura: std_logic;
  signal LeituraDeDados: std_logic_vector(larguraDados-1 dowto 0);
  signal EscritaDeDados: std_logic_vector(larguraDados-1 downto 0);
  signal SaidaDataAddress: std_logic_vector(5 downto 0);
  signal EnderecoROM: std_logic_vector(larguraEnderecos-1 downto 0);

-- ROM 
  signal Instrucao;
	
-- Decoder1
  signal SaidaDec1;
-- Decoder2
  signal SaidaDec2;


-- LEDs
  signal HabilitaLed0;
  signal HabilitaLed1;
  signal HabilitaLed2;
-- ======================================================================

begin

	gravar: if simulacao generate
	  CLK <= KEY(0);
	else generate
	  detectorSub0: work.edgeDetector(bordaSubida)
		 port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
	end generate;


 -- CPU
 CPU : entity work.CPU
	port map(
	 CLOCK	         => CLK,
	 RESET           => '0', 
	 RD              => Escrita,
	 WR              => Leitura,
	 ROM_ADDRESS     => EnderecoROM,
	 INSTRUCTION_IN  => Instrucao,
	 DATA_IN         => LeituraDeDados,
	 DATA_OUT        => EscritaDeDados,
	 DATA_ADDRESS    => SaidaDataAddress
	
);
 
 
  -- ROM (13 bits)
  ROM : entity work.memoriaROM
    generic map (dataWidth => 13, addrWidth => larguraEnderecos)
    port map (
      Endereco => EnderecoROM, 
      Dado => Instrucao
      );

  -- RAM
  RAM : entity work.memoriaRAM
    generic map(
      dataWidth => 8,
      addrWidth => 6
    )
    port map (
      addr     => SaidaDataAddress(5 downto 0),
      we       => Escrita,
      re       => Leitura,
      habilita => SaidaDec1(0),
      clk      => CLK,
      dado_in  => EscritaDeDados,
      dado_out => LeituraDeDados
    );


  -- Decoder RAM
  Dec1 :  entity work.decoder3x8
    port map(
      entrada => SaidaDataAddress(6 downto 8),
      saida => SaidaDec1
    );


  Dec2 : entity work.decoder3x8
    port map(
      entrada => SaidaDataAddress(2 downto 0),
      saida => SaidaDec2
    );

  -- Habilta led --------------------------------------------
  HabilitaLed0 <= SaidaDec1(4) and SaidaDec2(0) and Escrita;
  HabilitaLed0 <= SaidaDec1(4) and SaidaDec2(1) and Escrita;
  HabilitaLed0 <= SaidaDec1(4) and SaidaDec2(2) and Escrita;

  

  RegLed0  : entity work.registradorGenerico
  generic map (larguraDados => larguraDados)
  port map (
    DIN    => EscritaDeDados,
    DOUT   => LEDR(7 downto 0),
    ENABLE => HabilitaLed0,
    CLK    => CLK,
    RST    => '0'
  );

  FlipFlopLed1: entity work.flipflop
    port map(
      DIN    => EscritaDeDados(0),
      DOUT   => LED(8),
      ENABLE => HabilitaLed1,
      CLK    => CLK,
      RST    => '0'
    );

  FlipFlopLed2: entity work.flipflop
    port map(
      DIN    => EscritaDeDados(0),
      DOUT   => LED(9),
      ENABLE => HabilitaLed2,
      CLK    => CLK,
      RST    => '0'
    );


    

end architecture;
