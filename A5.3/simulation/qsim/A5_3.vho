-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "09/13/2025 22:36:47"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	A5_3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(11 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(7 DOWNTO 0);
	OpULA : OUT std_logic_vector(1 DOWNTO 0);
	Out_RegA : OUT std_logic_vector(7 DOWNTO 0)
	);
END A5_3;

ARCHITECTURE structure OF A5_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OpULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Out_RegA : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[0]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[1]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[2]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[3]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[4]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[5]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[6]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[7]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[8]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[9]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[10]~output_o\ : std_logic;
SIGNAL \Palavra_Controle[11]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[0]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[1]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[2]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[3]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[4]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[5]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[6]~output_o\ : std_logic;
SIGNAL \EntradaB_ULA[7]~output_o\ : std_logic;
SIGNAL \OpULA[0]~output_o\ : std_logic;
SIGNAL \OpULA[1]~output_o\ : std_logic;
SIGNAL \Out_RegA[0]~output_o\ : std_logic;
SIGNAL \Out_RegA[1]~output_o\ : std_logic;
SIGNAL \Out_RegA[2]~output_o\ : std_logic;
SIGNAL \Out_RegA[3]~output_o\ : std_logic;
SIGNAL \Out_RegA[4]~output_o\ : std_logic;
SIGNAL \Out_RegA[5]~output_o\ : std_logic;
SIGNAL \Out_RegA[6]~output_o\ : std_logic;
SIGNAL \Out_RegA[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DEC1|Equal4~0_combout\ : std_logic;
SIGNAL \DEC1|Equal6~0_combout\ : std_logic;
SIGNAL \DEC1|Equal10~0_combout\ : std_logic;
SIGNAL \DEC1|saida[1]~2_combout\ : std_logic;
SIGNAL \DEC1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \DEC1|saida[5]~4_combout\ : std_logic;
SIGNAL \DEC1|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \DEC1|saida[2]~1_combout\ : std_logic;
SIGNAL \FlagIgual|DOUT~1_combout\ : std_logic;
SIGNAL \FlagIgual|DOUT~2_combout\ : std_logic;
SIGNAL \FlagIgual|DOUT~3_combout\ : std_logic;
SIGNAL \FlagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \FlagIgual|DOUT~q\ : std_logic;
SIGNAL \DEC1|saida~6_combout\ : std_logic;
SIGNAL \MUX_PC|Equal1~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \DEC1|saida~5_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DEC1|Equal0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \DEC1|saida[1]~0_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX_B_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \EndRetorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_saida[2]~1_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \FlagIgual|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \FlagIgual|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FlagIgual|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \EndRetorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX_PC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \FlagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MUX_B_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
Palavra_Controle <= ww_Palavra_Controle;
EntradaB_ULA <= ww_EntradaB_ULA;
OpULA <= ww_OpULA;
Out_RegA <= ww_Out_RegA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\DEC1|ALT_INV_Equal4~0_combout\ <= NOT \DEC1|Equal4~0_combout\;
\DEC1|ALT_INV_Equal0~0_combout\ <= NOT \DEC1|Equal0~0_combout\;
\DEC1|ALT_INV_saida~6_combout\ <= NOT \DEC1|saida~6_combout\;
\DEC1|ALT_INV_saida~5_combout\ <= NOT \DEC1|saida~5_combout\;
\DEC1|ALT_INV_Equal6~0_combout\ <= NOT \DEC1|Equal6~0_combout\;
\DEC1|ALT_INV_saida[3]~3_combout\ <= NOT \DEC1|saida[3]~3_combout\;
\DEC1|ALT_INV_saida[1]~2_combout\ <= NOT \DEC1|saida[1]~2_combout\;
\DEC1|ALT_INV_Equal10~0_combout\ <= NOT \DEC1|Equal10~0_combout\;
\DEC1|ALT_INV_saida[2]~1_combout\ <= NOT \DEC1|saida[2]~1_combout\;
\DEC1|ALT_INV_Equal5~0_combout\ <= NOT \DEC1|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\FlagIgual|ALT_INV_DOUT~3_combout\ <= NOT \FlagIgual|DOUT~3_combout\;
\FlagIgual|ALT_INV_DOUT~2_combout\ <= NOT \FlagIgual|DOUT~2_combout\;
\FlagIgual|ALT_INV_DOUT~1_combout\ <= NOT \FlagIgual|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\EndRetorno|ALT_INV_DOUT\(8) <= NOT \EndRetorno|DOUT\(8);
\EndRetorno|ALT_INV_DOUT\(7) <= NOT \EndRetorno|DOUT\(7);
\EndRetorno|ALT_INV_DOUT\(6) <= NOT \EndRetorno|DOUT\(6);
\EndRetorno|ALT_INV_DOUT\(5) <= NOT \EndRetorno|DOUT\(5);
\EndRetorno|ALT_INV_DOUT\(4) <= NOT \EndRetorno|DOUT\(4);
\EndRetorno|ALT_INV_DOUT\(3) <= NOT \EndRetorno|DOUT\(3);
\EndRetorno|ALT_INV_DOUT\(2) <= NOT \EndRetorno|DOUT\(2);
\EndRetorno|ALT_INV_DOUT\(1) <= NOT \EndRetorno|DOUT\(1);
\EndRetorno|ALT_INV_DOUT\(0) <= NOT \EndRetorno|DOUT\(0);
\MUX_PC|ALT_INV_Equal1~0_combout\ <= NOT \MUX_PC|Equal1~0_combout\;
\MUX_PC|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX_PC|saida_MUX[7]~0_combout\;
\FlagIgual|ALT_INV_DOUT~q\ <= NOT \FlagIgual|DOUT~q\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\MUX_B_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_B_ULA|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal5~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[0]~output_o\);

\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[1]~output_o\);

\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida[2]~1_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[2]~output_o\);

\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[3]~output_o\);

\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[4]~output_o\);

\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida[5]~4_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[5]~output_o\);

\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[6]~output_o\);

\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida~5_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[7]~output_o\);

\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida~6_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[8]~output_o\);

\Palavra_Controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[9]~output_o\);

\Palavra_Controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[10]~output_o\);

\Palavra_Controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida~6_combout\,
	devoe => ww_devoe,
	o => \Palavra_Controle[11]~output_o\);

\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[0]~output_o\);

\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[1]~output_o\);

\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[2]~output_o\);

\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[3]~output_o\);

\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[4]~output_o\);

\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[5]~output_o\);

\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[6]~output_o\);

\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_B_ULA|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \EntradaB_ULA[7]~output_o\);

\OpULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \OpULA[0]~output_o\);

\OpULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \OpULA[1]~output_o\);

\Out_RegA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => \Out_RegA[0]~output_o\);

\Out_RegA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => \Out_RegA[1]~output_o\);

\Out_RegA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => \Out_RegA[2]~output_o\);

\Out_RegA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => \Out_RegA[3]~output_o\);

\Out_RegA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => \Out_RegA[4]~output_o\);

\Out_RegA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => \Out_RegA[5]~output_o\);

\Out_RegA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => \Out_RegA[6]~output_o\);

\Out_RegA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \Out_RegA[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & ((!\PC|DOUT\(1) $ (!\PC|DOUT\(3))) # (\PC|DOUT\(2)))) # (\PC|DOUT\(0) & (((!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(1)))) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001110111101101111111111111111110011101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\DEC1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal4~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|Equal4~0_combout\);

\DEC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal6~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|Equal6~0_combout\);

\DEC1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal10~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|Equal10~0_combout\);

\DEC1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[1]~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~1_combout\) # 
-- ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111011001100110011101110110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida[1]~2_combout\);

\DEC1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[3]~3_combout\ = (\DEC1|Equal10~0_combout\ & \DEC1|saida[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal10~0_combout\,
	datab => \DEC1|ALT_INV_saida[1]~2_combout\,
	combout => \DEC1|saida[3]~3_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\DEC1|Equal6~0_combout\ & \ULA1|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\DEC1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[5]~4_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & 
-- (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000001000100000000000010010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida[5]~4_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\DEC1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal5~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|Equal5~0_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110001000000000000000000000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|process_0~0_combout\);

\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \ROM1|memROM~8_combout\ & ( \RAM1|process_0~0_combout\ & ( (\DEC1|Equal5~0_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~173_combout\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~168_combout\);

\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \ROM1|memROM~8_combout\ & ( \RAM1|process_0~0_combout\ & ( (\DEC1|Equal5~0_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~174_combout\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~48_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~169_combout\);

\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \ROM1|memROM~8_combout\ & ( \RAM1|process_0~0_combout\ & ( (\DEC1|Equal5~0_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~175_combout\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~170_combout\);

\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \ROM1|memROM~8_combout\ & ( \RAM1|process_0~0_combout\ & ( (\DEC1|Equal5~0_combout\ & (\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~176_combout\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(7),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~171_combout\);

\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~171_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~170_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \RAM1|ram~169_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~168_combout\,
	datab => \RAM1|ALT_INV_ram~169_combout\,
	datac => \RAM1|ALT_INV_ram~170_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~172_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( ((!\DEC1|Equal10~0_combout\) # (!\DEC1|saida[1]~2_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal10~0_combout\,
	datad => \DEC1|ALT_INV_saida[1]~2_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX_B_ULA|saida_MUX[0]~0_combout\ $ (((!\DEC1|Equal6~0_combout\ & \DEC1|saida[3]~3_combout\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX_B_ULA|saida_MUX[0]~0_combout\ $ (((!\DEC1|Equal6~0_combout\ & \DEC1|saida[3]~3_combout\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_saida[3]~3_combout\,
	datad => \MUX_B_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\DEC1|Equal6~0_combout\ & ((\ULA1|Add0~1_sumout\))) # (\DEC1|Equal6~0_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(0),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~17_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~33_q\,
	datab => \RAM1|ALT_INV_ram~41_q\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~146_combout\);

\MUX_B_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[0]~0_combout\ = (!\DEC1|Equal6~0_combout\ & ((\RAM1|ram~146_combout\))) # (\DEC1|Equal6~0_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX_B_ULA|saida_MUX[0]~0_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~151_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~151_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\DEC1|Equal6~0_combout\ & ((\ULA1|Add0~5_sumout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~147_combout\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~148_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~149_combout\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(1),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~150_combout\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~150_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~149_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \RAM1|ram~148_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_combout\,
	datab => \RAM1|ALT_INV_ram~148_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~151_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~153_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~153_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~7_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\DEC1|Equal6~0_combout\ & ((\ULA1|Add0~9_sumout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(2),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~19_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datab => \RAM1|ALT_INV_ram~43_q\,
	datac => \RAM1|ALT_INV_ram~19_q\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~152_combout\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~152_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~153_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~158_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\DEC1|Equal6~0_combout\ & (!\DEC1|saida[3]~3_combout\ $ (((\RAM1|ram~158_combout\))))) # (\DEC1|Equal6~0_combout\ & (((\ROM1|memROM~8_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\DEC1|Equal6~0_combout\ & ((\ULA1|Add0~13_sumout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~154_combout\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~156_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(3),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~157_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~156_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \RAM1|ram~155_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~154_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~158_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~160_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~160_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DEC1|Equal6~0_combout\ & \ULA1|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(4),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~21_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM1|ram~45_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~37_q\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~160_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~165_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~165_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datad => \RAM1|ALT_INV_ram~165_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DEC1|Equal6~0_combout\ & \ULA1|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~161_combout\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~162_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~163_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(5),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~164_combout\);

\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~164_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~163_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( 
-- !\ROM1|memROM~6_combout\ & ( \RAM1|ram~162_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~161_combout\,
	datab => \RAM1|ALT_INV_ram~162_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~165_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~167_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~167_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datad => \RAM1|ALT_INV_ram~167_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\DEC1|Equal6~0_combout\ & \ULA1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \DEC1|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \REGA|DOUT\(6),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM1|ram~23_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM1|ram~47_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~39_q\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \RAM1|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~166_combout\);

\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM1|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~167_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\DEC1|saida[3]~3_combout\ $ (\RAM1|ram~172_combout\)) # (\DEC1|Equal6~0_combout\) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \DEC1|ALT_INV_saida[3]~3_combout\,
	datad => \RAM1|ALT_INV_ram~172_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\DEC1|saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[2]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\)) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001000100000000000000000001000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida[2]~1_combout\);

\FlagIgual|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgual|DOUT~1_combout\ = ( \DEC1|saida[2]~1_combout\ & ( \FlagIgual|DOUT~q\ & ( (\DEC1|Equal6~0_combout\ & ((!\ROM1|memROM~8_combout\) # ((!\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\)))) ) ) ) # ( \DEC1|saida[2]~1_combout\ & ( 
-- !\FlagIgual|DOUT~q\ & ( (\DEC1|Equal6~0_combout\ & ((!\ROM1|memROM~8_combout\) # ((!\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\)))) ) ) ) # ( !\DEC1|saida[2]~1_combout\ & ( !\FlagIgual|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010100010100000000000000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \DEC1|ALT_INV_saida[2]~1_combout\,
	dataf => \FlagIgual|ALT_INV_DOUT~q\,
	combout => \FlagIgual|DOUT~1_combout\);

\FlagIgual|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgual|DOUT~2_combout\ = ( \DEC1|saida[2]~1_combout\ & ( !\FlagIgual|DOUT~1_combout\ & ( (!\DEC1|Equal6~0_combout\ & (((!\ULA1|Add0~1_sumout\ & !\ULA1|Add0~5_sumout\)))) # (\DEC1|Equal6~0_combout\ & (\ROM1|memROM~7_combout\)) ) ) ) # ( 
-- !\DEC1|saida[2]~1_combout\ & ( !\FlagIgual|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \DEC1|ALT_INV_saida[2]~1_combout\,
	dataf => \FlagIgual|ALT_INV_DOUT~1_combout\,
	combout => \FlagIgual|DOUT~2_combout\);

\FlagIgual|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgual|DOUT~3_combout\ = (!\ULA1|Add0~25_sumout\ & (!\ULA1|Add0~9_sumout\ & (!\ULA1|Add0~13_sumout\ & !\ULA1|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~25_sumout\,
	datab => \ULA1|ALT_INV_Add0~9_sumout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \FlagIgual|DOUT~3_combout\);

\FlagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagIgual|DOUT~0_combout\ = ( \FlagIgual|DOUT~2_combout\ & ( \FlagIgual|DOUT~3_combout\ & ( ((!\DEC1|saida[2]~1_combout\) # ((!\ULA1|Add0~29_sumout\ & !\ULA1|Add0~21_sumout\))) # (\DEC1|Equal6~0_combout\) ) ) ) # ( \FlagIgual|DOUT~2_combout\ & ( 
-- !\FlagIgual|DOUT~3_combout\ & ( (!\DEC1|saida[2]~1_combout\) # (\DEC1|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	datad => \DEC1|ALT_INV_saida[2]~1_combout\,
	datae => \FlagIgual|ALT_INV_DOUT~2_combout\,
	dataf => \FlagIgual|ALT_INV_DOUT~3_combout\,
	combout => \FlagIgual|DOUT~0_combout\);

\FlagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \FlagIgual|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlagIgual|DOUT~q\);

\DEC1|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida~6_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida~6_combout\);

\MUX_PC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|Equal1~0_combout\ = ( \DEC1|saida~6_combout\ & ( !\DEC1|Equal0~0_combout\ ) ) # ( !\DEC1|saida~6_combout\ & ( (!\DEC1|Equal0~0_combout\ & (((\DEC1|saida~5_combout\ & \FlagIgual|DOUT~q\)) # (\DEC1|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000000111111110000000000110111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida~5_combout\,
	datab => \DEC1|ALT_INV_Equal4~0_combout\,
	datac => \FlagIgual|ALT_INV_DOUT~q\,
	datad => \DEC1|ALT_INV_Equal0~0_combout\,
	datae => \DEC1|ALT_INV_saida~6_combout\,
	combout => \MUX_PC|Equal1~0_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\EndRetorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(2));

\MUX_PC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[2]~3_combout\ = ( \EndRetorno|DOUT\(2) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & ((!\ROM1|memROM~7_combout\) # ((!\MUX_PC|Equal1~0_combout\)))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) ) ) # ( 
-- !\EndRetorno|DOUT\(2) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (!\ROM1|memROM~7_combout\ & (\MUX_PC|Equal1~0_combout\))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \MUX_PC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \EndRetorno|ALT_INV_DOUT\(2),
	combout => \MUX_PC|saida_MUX[2]~3_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & (((\PC|DOUT\(3)) # (\PC|DOUT\(2))))) # (\PC|DOUT\(0) & (((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))) # (\PC|DOUT\(1)))) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111111111101111111111111111110101111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\EndRetorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(3));

\MUX_PC|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[3]~4_combout\ = ( \EndRetorno|DOUT\(3) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & ((!\ROM1|memROM~8_combout\) # ((!\MUX_PC|Equal1~0_combout\)))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) ) ) # ( 
-- !\EndRetorno|DOUT\(3) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (!\ROM1|memROM~8_combout\ & (\MUX_PC|Equal1~0_combout\))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \MUX_PC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \EndRetorno|ALT_INV_DOUT\(3),
	combout => \MUX_PC|saida_MUX[3]~4_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\EndRetorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(6));

\MUX_PC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[6]~7_combout\ = (!\DEC1|Equal0~0_combout\ & (\MUX_PC|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~25_sumout\)))) # (\DEC1|Equal0~0_combout\ & (((\MUX_PC|saida_MUX[7]~0_combout\ & \incrementaPC|Add0~25_sumout\)) # 
-- (\EndRetorno|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \EndRetorno|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX_PC|saida_MUX[6]~7_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\EndRetorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(7));

\MUX_PC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[7]~8_combout\ = (!\DEC1|Equal0~0_combout\ & (\MUX_PC|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~29_sumout\)))) # (\DEC1|Equal0~0_combout\ & (((\MUX_PC|saida_MUX[7]~0_combout\ & \incrementaPC|Add0~29_sumout\)) # 
-- (\EndRetorno|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \EndRetorno|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX_PC|saida_MUX[7]~8_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

\EndRetorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(8));

\MUX_PC|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[8]~9_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (((\EndRetorno|DOUT\(8))) # (\MUX_PC|Equal1~0_combout\))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~33_sumout\)))) ) ) # ( 
-- !\RAM1|process_0~0_combout\ & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (!\MUX_PC|Equal1~0_combout\ & ((\EndRetorno|DOUT\(8))))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~33_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \MUX_PC|ALT_INV_Equal1~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \EndRetorno|ALT_INV_DOUT\(8),
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \MUX_PC|saida_MUX[8]~9_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\DEC1|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida~5_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida~5_combout\);

\MUX_PC|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[7]~0_combout\ = ( !\DEC1|saida~6_combout\ & ( (!\DEC1|Equal4~0_combout\ & (!\DEC1|Equal0~0_combout\ & ((!\DEC1|saida~5_combout\) # (!\FlagIgual|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000000000000000000011001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_saida~5_combout\,
	datab => \DEC1|ALT_INV_Equal4~0_combout\,
	datac => \FlagIgual|ALT_INV_DOUT~q\,
	datad => \DEC1|ALT_INV_Equal0~0_combout\,
	datae => \DEC1|ALT_INV_saida~6_combout\,
	combout => \MUX_PC|saida_MUX[7]~0_combout\);

\EndRetorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(5));

\MUX_PC|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[5]~6_combout\ = (!\DEC1|Equal0~0_combout\ & (\MUX_PC|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~21_sumout\)))) # (\DEC1|Equal0~0_combout\ & (((\MUX_PC|saida_MUX[7]~0_combout\ & \incrementaPC|Add0~21_sumout\)) # 
-- (\EndRetorno|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \EndRetorno|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUX_PC|saida_MUX[5]~6_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT\(8) & ( \ROM1|memROM~10_combout\ ) ) # ( !\PC|DOUT\(8) & ( \ROM1|memROM~10_combout\ & ( (((\PC|DOUT\(7)) # (\PC|DOUT\(6))) # (\PC|DOUT\(5))) # (\PC|DOUT\(4)) ) ) ) # ( \PC|DOUT\(8) & ( !\ROM1|memROM~10_combout\ ) ) # ( 
-- !\PC|DOUT\(8) & ( !\ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~6_combout\);

\EndRetorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(1));

\MUX_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[1]~2_combout\ = ( \EndRetorno|DOUT\(1) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & ((!\ROM1|memROM~6_combout\) # ((!\MUX_PC|Equal1~0_combout\)))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) ) ) # ( 
-- !\EndRetorno|DOUT\(1) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (!\ROM1|memROM~6_combout\ & (\MUX_PC|Equal1~0_combout\))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \MUX_PC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \EndRetorno|ALT_INV_DOUT\(1),
	combout => \MUX_PC|saida_MUX[1]~2_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\DEC1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal0~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|Equal0~0_combout\);

\EndRetorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(4));

\MUX_PC|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[4]~5_combout\ = (!\DEC1|Equal0~0_combout\ & (\MUX_PC|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~17_sumout\)))) # (\DEC1|Equal0~0_combout\ & (((\MUX_PC|saida_MUX[7]~0_combout\ & \incrementaPC|Add0~17_sumout\)) # 
-- (\EndRetorno|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \EndRetorno|ALT_INV_DOUT\(4),
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX_PC|saida_MUX[4]~5_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (\PC|DOUT\(1) & !\PC|DOUT\(2))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & (\PC|DOUT\(2) & ((!\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001101011001000000110101100100000011010110010000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~9_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~5_combout\);

\EndRetorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DEC1|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EndRetorno|DOUT\(0));

\MUX_PC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[0]~1_combout\ = ( \EndRetorno|DOUT\(0) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (((!\MUX_PC|Equal1~0_combout\)) # (\ROM1|memROM~5_combout\))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) ) ) # ( 
-- !\EndRetorno|DOUT\(0) & ( (!\MUX_PC|saida_MUX[7]~0_combout\ & (\ROM1|memROM~5_combout\ & ((\MUX_PC|Equal1~0_combout\)))) # (\MUX_PC|saida_MUX[7]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \MUX_PC|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \MUX_PC|ALT_INV_Equal1~0_combout\,
	datae => \EndRetorno|ALT_INV_DOUT\(0),
	combout => \MUX_PC|saida_MUX[0]~1_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\DEC1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida[1]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100000000000000010001000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC1|saida[1]~0_combout\);

\MUX_B_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[1]~1_combout\ = (!\DEC1|Equal6~0_combout\ & ((\RAM1|ram~151_combout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	combout => \MUX_B_ULA|saida_MUX[1]~1_combout\);

\MUX_B_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[2]~2_combout\ = (!\DEC1|Equal6~0_combout\ & ((\RAM1|ram~153_combout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	combout => \MUX_B_ULA|saida_MUX[2]~2_combout\);

\MUX_B_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[3]~3_combout\ = (!\DEC1|Equal6~0_combout\ & ((\RAM1|ram~158_combout\))) # (\DEC1|Equal6~0_combout\ & (!\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX_B_ULA|saida_MUX[3]~3_combout\);

\MUX_B_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[4]~4_combout\ = (!\DEC1|Equal6~0_combout\ & \RAM1|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX_B_ULA|saida_MUX[4]~4_combout\);

\MUX_B_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[5]~5_combout\ = (!\DEC1|Equal6~0_combout\ & \RAM1|ram~165_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \RAM1|ALT_INV_ram~165_combout\,
	combout => \MUX_B_ULA|saida_MUX[5]~5_combout\);

\MUX_B_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[6]~6_combout\ = (!\DEC1|Equal6~0_combout\ & \RAM1|ram~167_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \RAM1|ALT_INV_ram~167_combout\,
	combout => \MUX_B_ULA|saida_MUX[6]~6_combout\);

\MUX_B_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_B_ULA|saida_MUX[7]~7_combout\ = (!\DEC1|Equal6~0_combout\ & \RAM1|ram~172_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~0_combout\,
	datab => \RAM1|ALT_INV_ram~172_combout\,
	combout => \MUX_B_ULA|saida_MUX[7]~7_combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_Palavra_Controle(0) <= \Palavra_Controle[0]~output_o\;

ww_Palavra_Controle(1) <= \Palavra_Controle[1]~output_o\;

ww_Palavra_Controle(2) <= \Palavra_Controle[2]~output_o\;

ww_Palavra_Controle(3) <= \Palavra_Controle[3]~output_o\;

ww_Palavra_Controle(4) <= \Palavra_Controle[4]~output_o\;

ww_Palavra_Controle(5) <= \Palavra_Controle[5]~output_o\;

ww_Palavra_Controle(6) <= \Palavra_Controle[6]~output_o\;

ww_Palavra_Controle(7) <= \Palavra_Controle[7]~output_o\;

ww_Palavra_Controle(8) <= \Palavra_Controle[8]~output_o\;

ww_Palavra_Controle(9) <= \Palavra_Controle[9]~output_o\;

ww_Palavra_Controle(10) <= \Palavra_Controle[10]~output_o\;

ww_Palavra_Controle(11) <= \Palavra_Controle[11]~output_o\;

ww_EntradaB_ULA(0) <= \EntradaB_ULA[0]~output_o\;

ww_EntradaB_ULA(1) <= \EntradaB_ULA[1]~output_o\;

ww_EntradaB_ULA(2) <= \EntradaB_ULA[2]~output_o\;

ww_EntradaB_ULA(3) <= \EntradaB_ULA[3]~output_o\;

ww_EntradaB_ULA(4) <= \EntradaB_ULA[4]~output_o\;

ww_EntradaB_ULA(5) <= \EntradaB_ULA[5]~output_o\;

ww_EntradaB_ULA(6) <= \EntradaB_ULA[6]~output_o\;

ww_EntradaB_ULA(7) <= \EntradaB_ULA[7]~output_o\;

ww_OpULA(0) <= \OpULA[0]~output_o\;

ww_OpULA(1) <= \OpULA[1]~output_o\;

ww_Out_RegA(0) <= \Out_RegA[0]~output_o\;

ww_Out_RegA(1) <= \Out_RegA[1]~output_o\;

ww_Out_RegA(2) <= \Out_RegA[2]~output_o\;

ww_Out_RegA(3) <= \Out_RegA[3]~output_o\;

ww_Out_RegA(4) <= \Out_RegA[4]~output_o\;

ww_Out_RegA(5) <= \Out_RegA[5]~output_o\;

ww_Out_RegA(6) <= \Out_RegA[6]~output_o\;

ww_Out_RegA(7) <= \Out_RegA[7]~output_o\;
END structure;


