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
  );
  
end entity;

-- ====================================================================

architecture arquitetura of A7 is

-- Sinais 

	signal CLK: std_logic;
	
  	
	
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
	 CLOCK	        <= ;
	 RESET           <= ; 
	 RD              <= ;
	 WR              <= ;
	 ROM_ADDRESS     <= ;
	 INSTRUCTION_IN  <= ;
	 DATA_IN         <= ;
	 DATA_OUT        <= ;
	 DATA_ADDRESS    <= 
	
);
 
 
  -- ROM (13 bits)
  ROM : entity work.memoriaROM
    generic map (dataWidth => 13, addrWidth => larguraEnderecos)
    port map (Endereco => Endereco, Dado => instr);


  -- RAM
  RAM : entity work.memoriaRAM
    port map (
      addr     => instr(7 downto 0),
      we       => habEscritaMEM,
      re       => habLeituraMEM,
      habilita => instr(8),
      clk      => CLK,
      dado_in  => REG1_ULA_A,
      dado_out => Saida_RAM
    );


end architecture;
