library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
    generic (
        larguraDados : natural := 1
    );
    port (
        DIN    : in  std_logic;
        DOUT   : out std_logic;
        ENABLE : in  std_logic;
        CLK, RST : in std_logic
    );
end entity;

architecture comportamento of flipflop is
begin
    process(RST, CLK)
    begin
        if (RST = '1') then
            DOUT <= '0';  
        elsif rising_edge(CLK) then
            if (ENABLE = '1') then
                DOUT <= DIN;
            end if;
        end if;
    end process;
end architecture;
