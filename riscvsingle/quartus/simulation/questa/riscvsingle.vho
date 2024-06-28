-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/24/2024 13:37:21"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
LIBRARY STD;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	alu IS
    PORT (
	A : IN STD.STANDARD.bit_vector(31 DOWNTO 0);
	B : IN STD.STANDARD.bit_vector(31 DOWNTO 0);
	ALUControl : IN STD.STANDARD.bit_vector(2 DOWNTO 0);
	Result : BUFFER STD.STANDARD.bit_vector(31 DOWNTO 0);
	Zero : OUT STD.STANDARD.bit
	);
END alu;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUControl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \Result[16]~output_o\ : std_logic;
SIGNAL \Result[17]~output_o\ : std_logic;
SIGNAL \Result[18]~output_o\ : std_logic;
SIGNAL \Result[19]~output_o\ : std_logic;
SIGNAL \Result[20]~output_o\ : std_logic;
SIGNAL \Result[21]~output_o\ : std_logic;
SIGNAL \Result[22]~output_o\ : std_logic;
SIGNAL \Result[23]~output_o\ : std_logic;
SIGNAL \Result[24]~output_o\ : std_logic;
SIGNAL \Result[25]~output_o\ : std_logic;
SIGNAL \Result[26]~output_o\ : std_logic;
SIGNAL \Result[27]~output_o\ : std_logic;
SIGNAL \Result[28]~output_o\ : std_logic;
SIGNAL \Result[29]~output_o\ : std_logic;
SIGNAL \Result[30]~output_o\ : std_logic;
SIGNAL \Result[31]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \ALUControl[2]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \v~2_combout\ : std_logic;
SIGNAL \B~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \v~1_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \v~3_combout\ : std_logic;
SIGNAL \B~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \v~5_combout\ : std_logic;
SIGNAL \B~3_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \v~4_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \v~6_combout\ : std_logic;
SIGNAL \B~4_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \B~5_combout\ : std_logic;
SIGNAL \v~8_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \v~7_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \v~9_combout\ : std_logic;
SIGNAL \B~6_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \v~10_combout\ : std_logic;
SIGNAL \B~7_combout\ : std_logic;
SIGNAL \v~11_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \v~12_combout\ : std_logic;
SIGNAL \B~8_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \v~13_combout\ : std_logic;
SIGNAL \v~14_combout\ : std_logic;
SIGNAL \B~9_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \v~15_combout\ : std_logic;
SIGNAL \B~10_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \B~11_combout\ : std_logic;
SIGNAL \v~17_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \v~16_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \v~18_combout\ : std_logic;
SIGNAL \B~12_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \v~19_combout\ : std_logic;
SIGNAL \v~20_combout\ : std_logic;
SIGNAL \B~13_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \v~21_combout\ : std_logic;
SIGNAL \B~14_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \v~22_combout\ : std_logic;
SIGNAL \B~15_combout\ : std_logic;
SIGNAL \v~23_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \v~24_combout\ : std_logic;
SIGNAL \B~16_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \v~25_combout\ : std_logic;
SIGNAL \v~26_combout\ : std_logic;
SIGNAL \B~17_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \v~27_combout\ : std_logic;
SIGNAL \B~18_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \v~28_combout\ : std_logic;
SIGNAL \B~19_combout\ : std_logic;
SIGNAL \v~29_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \B~20_combout\ : std_logic;
SIGNAL \v~30_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \v~31_combout\ : std_logic;
SIGNAL \B~21_combout\ : std_logic;
SIGNAL \v~32_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \v~33_combout\ : std_logic;
SIGNAL \B~22_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \v~34_combout\ : std_logic;
SIGNAL \B~23_combout\ : std_logic;
SIGNAL \v~35_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \v~36_combout\ : std_logic;
SIGNAL \B~24_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \v~37_combout\ : std_logic;
SIGNAL \v~38_combout\ : std_logic;
SIGNAL \B~25_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \v~39_combout\ : std_logic;
SIGNAL \B~26_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \v~40_combout\ : std_logic;
SIGNAL \v~41_combout\ : std_logic;
SIGNAL \B~27_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \v~42_combout\ : std_logic;
SIGNAL \B~28_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(A);
ww_B <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(B);
ww_ALUControl <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(ALUControl);
Result <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_Result);
Zero <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Zero);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y49_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y39_N9
\Result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~2_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~2_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~2_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\Result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~3_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~2_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\Result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~3_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\Result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~3_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\Result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~3_combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\Result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\Result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~3_combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\Result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~3_combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\Result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\Result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~3_combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\Result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => \Result[16]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\Result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~3_combout\,
	devoe => ww_devoe,
	o => \Result[17]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => \Result[18]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\Result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Result[19]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\Result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => \Result[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Result[21]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\Result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \Result[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\Result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Result[23]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\Result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \Result[24]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Result[25]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\Result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \Result[26]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Result[27]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \Result[28]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \Result[29]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\Result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \Result[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\Result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \Result[31]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~12_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOIBUF_X22_Y39_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\ALUControl[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\ALUControl[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: LCCOMB_X45_Y37_N2
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & ((\ALUControl[1]~input_o\))) # (!\B[0]~input_o\ & ((\ALUControl[0]~input_o\) # (!\ALUControl[1]~input_o\))))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X34_Y39_N1
\ALUControl[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(2),
	o => \ALUControl[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N29
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X78_Y34_N1
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X78_Y36_N8
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X78_Y37_N15
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X24_Y39_N1
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X78_Y41_N8
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X78_Y37_N1
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X78_Y36_N1
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X78_Y40_N1
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X78_Y40_N8
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X46_Y38_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X46_Y38_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X46_Y38_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X46_Y38_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X46_Y38_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X46_Y38_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X46_Y38_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X46_Y38_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B[7]~input_o\ & (\A[7]~input_o\ & !\LessThan0~13_cout\)) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X46_Y38_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\LessThan0~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X46_Y38_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\A[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\B[9]~input_o\))) # (!\A[9]~input_o\ & (!\B[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X46_Y38_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\B[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\A[10]~input_o\))) # (!\B[10]~input_o\ & (!\A[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X46_Y38_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\A[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\B[11]~input_o\))) # (!\A[11]~input_o\ & (!\B[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X46_Y38_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X46_Y38_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X46_Y38_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\A[14]~input_o\ & (\B[14]~input_o\ & !\LessThan0~27_cout\)) # (!\A[14]~input_o\ & ((\B[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X46_Y38_N30
\LessThan0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\B[15]~input_o\ & (\A[15]~input_o\ & !\LessThan0~29_cout\)) # (!\B[15]~input_o\ & ((\A[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X46_Y37_N0
\LessThan0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\LessThan0~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X46_Y37_N2
\LessThan0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\A[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X46_Y37_N4
\LessThan0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B[18]~input_o\ & ((!\LessThan0~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X46_Y37_N6
\LessThan0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\B[19]~input_o\ & (\A[19]~input_o\ & !\LessThan0~37_cout\)) # (!\B[19]~input_o\ & ((\A[19]~input_o\) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X46_Y37_N8
\LessThan0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\LessThan0~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X46_Y37_N10
\LessThan0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\A[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\B[21]~input_o\))) # (!\A[21]~input_o\ & (!\B[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X46_Y37_N12
\LessThan0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\A[22]~input_o\ & (\B[22]~input_o\ & !\LessThan0~43_cout\)) # (!\A[22]~input_o\ & ((\B[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X46_Y37_N14
\LessThan0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\A[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X46_Y37_N16
\LessThan0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A[24]~input_o\ & (\B[24]~input_o\ & !\LessThan0~47_cout\)) # (!\A[24]~input_o\ & ((\B[24]~input_o\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X46_Y37_N18
\LessThan0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\B[25]~input_o\ & (\A[25]~input_o\ & !\LessThan0~49_cout\)) # (!\B[25]~input_o\ & ((\A[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X46_Y37_N20
\LessThan0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A[26]~input_o\ & (\B[26]~input_o\ & !\LessThan0~51_cout\)) # (!\A[26]~input_o\ & ((\B[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X46_Y37_N22
\LessThan0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\A[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X46_Y37_N24
\LessThan0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\B[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\A[28]~input_o\))) # (!\B[28]~input_o\ & (!\A[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X46_Y37_N26
\LessThan0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\B[29]~input_o\ & (\A[29]~input_o\ & !\LessThan0~57_cout\)) # (!\B[29]~input_o\ & ((\A[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X46_Y37_N28
\LessThan0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\B[30]~input_o\ & ((!\LessThan0~59_cout\) # (!\A[30]~input_o\))) # (!\B[30]~input_o\ & (!\A[30]~input_o\ & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X46_Y37_N30
\LessThan0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A[31]~input_o\ & (\LessThan0~61_cout\ & \B[31]~input_o\)) # (!\A[31]~input_o\ & ((\LessThan0~61_cout\) # (\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X45_Y37_N0
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\ALUControl[2]~input_o\ & (\ALUControl[0]~input_o\ & (\LessThan0~62_combout\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \LessThan0~62_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X44_Y39_N8
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux31~0_combout\) # ((\Mux31~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X45_Y37_N4
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ $ (\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X45_Y37_N6
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[1]~input_o\ & ((\Mux30~0_combout\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\Mux30~0_combout\ & \A[1]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[1]~input_o\ $ (\Mux30~0_combout\ $ 
-- (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X44_Y39_N2
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux31~0_combout\) # ((\Mux30~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X45_Y37_N18
\v~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \v~0_combout\);

-- Location: LCCOMB_X45_Y37_N24
\B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & !\A[0]~input_o\))) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \B~0_combout\);

-- Location: LCCOMB_X45_Y37_N28
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~0_combout\))) # (!\ALUControl[0]~input_o\ & (\v~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \v~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X45_Y37_N22
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\ALUControl[1]~input_o\ & ((\Mux29~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Mux29~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux29~0_combout\ $ (\A[2]~input_o\ $ 
-- (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux29~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X44_Y39_N20
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux31~0_combout\) # ((\Mux29~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X45_Y37_N12
\v~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~2_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \v~0_combout\,
	combout => \v~2_combout\);

-- Location: LCCOMB_X45_Y37_N10
\B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~1_combout\ = (\B[2]~input_o\ & ((\B~0_combout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & \B~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \B~0_combout\,
	combout => \B~1_combout\);

-- Location: LCCOMB_X45_Y37_N14
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~1_combout\))) # (!\ALUControl[0]~input_o\ & (\v~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~2_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B~1_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X45_Y37_N8
\v~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~1_combout\ = (\A[2]~input_o\ & \v~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \v~0_combout\,
	combout => \v~1_combout\);

-- Location: LCCOMB_X45_Y37_N16
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux28~0_combout\) # ((\v~1_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \v~1_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X45_Y37_N26
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[3]~input_o\ & ((\A[3]~input_o\) # (\Mux28~1_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \Mux28~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\ $ 
-- (\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X44_Y39_N6
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux31~0_combout\) # ((\Mux28~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X45_Y37_N30
\v~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~3_combout\ = (\B[3]~input_o\ & ((\v~2_combout\) # ((\A[3]~input_o\) # (\v~1_combout\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\v~2_combout\) # (\v~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \v~1_combout\,
	combout => \v~3_combout\);

-- Location: LCCOMB_X45_Y37_N20
\B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~2_combout\ = (\B[3]~input_o\ & ((\B~1_combout\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & \B~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B~1_combout\,
	combout => \B~2_combout\);

-- Location: LCCOMB_X45_Y36_N0
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~2_combout\))) # (!\ALUControl[0]~input_o\ & (\v~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~3_combout\,
	datad => \B~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X45_Y36_N2
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[4]~input_o\ & ((\Mux27~0_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\Mux27~0_combout\ & \A[4]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[4]~input_o\ $ (\Mux27~0_combout\ $ 
-- (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Mux27~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X44_Y39_N0
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux31~0_combout\) # ((\Mux27~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X45_Y36_N8
\v~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~5_combout\ = (\B[4]~input_o\ & ((\v~3_combout\) # (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \v~3_combout\,
	datad => \A[4]~input_o\,
	combout => \v~5_combout\);

-- Location: LCCOMB_X45_Y36_N6
\B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~3_combout\ = (\B~2_combout\ & ((\B[4]~input_o\) # (!\A[4]~input_o\))) # (!\B~2_combout\ & (\B[4]~input_o\ & !\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~2_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \B~3_combout\);

-- Location: LCCOMB_X45_Y36_N26
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~3_combout\))) # (!\ALUControl[0]~input_o\ & (\v~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[0]~input_o\,
	datac => \v~5_combout\,
	datad => \B~3_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X45_Y36_N12
\v~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~4_combout\ = (\v~3_combout\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v~3_combout\,
	datad => \A[4]~input_o\,
	combout => \v~4_combout\);

-- Location: LCCOMB_X45_Y36_N4
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux26~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \v~4_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X45_Y36_N30
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\ALUControl[1]~input_o\ & ((\Mux26~1_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\Mux26~1_combout\ & (\B[5]~input_o\ & \A[5]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux26~1_combout\ $ (\B[5]~input_o\ $ 
-- (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux26~1_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X44_Y39_N18
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux31~0_combout\) # ((\Mux26~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X45_Y36_N10
\v~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~6_combout\ = (\B[5]~input_o\ & ((\v~4_combout\) # ((\v~5_combout\) # (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\v~4_combout\) # (\v~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~4_combout\,
	datab => \v~5_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \v~6_combout\);

-- Location: LCCOMB_X45_Y36_N24
\B~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~4_combout\ = (\B~3_combout\ & ((\B[5]~input_o\) # (!\A[5]~input_o\))) # (!\B~3_combout\ & (\B[5]~input_o\ & !\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~3_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \B~4_combout\);

-- Location: LCCOMB_X45_Y36_N20
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\ALUControl[0]~input_o\ & (((\ALUControl[1]~input_o\) # (\B~4_combout\)))) # (!\ALUControl[0]~input_o\ & (\v~6_combout\ & (!\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~6_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \B~4_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X45_Y36_N14
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\ALUControl[1]~input_o\ & ((\Mux25~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # (!\Mux25~0_combout\ & (\A[6]~input_o\ & \B[6]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux25~0_combout\ $ (\A[6]~input_o\ $ 
-- (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux25~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X44_Y39_N28
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux31~0_combout\) # ((\Mux25~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X45_Y36_N18
\B~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~5_combout\ = (\B~4_combout\ & ((\B[6]~input_o\) # (!\A[6]~input_o\))) # (!\B~4_combout\ & (!\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~4_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \B~5_combout\);

-- Location: LCCOMB_X45_Y36_N28
\v~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~8_combout\ = (\B[6]~input_o\ & ((\v~6_combout\) # (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~6_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \v~8_combout\);

-- Location: LCCOMB_X47_Y35_N8
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\ALUControl[0]~input_o\ & (\B~5_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~5_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \v~8_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X45_Y36_N16
\v~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~7_combout\ = (\v~6_combout\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~6_combout\,
	datac => \A[6]~input_o\,
	combout => \v~7_combout\);

-- Location: LCCOMB_X47_Y35_N10
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux24~0_combout\) # ((\v~7_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \v~7_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X47_Y35_N28
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[7]~input_o\ & ((\A[7]~input_o\) # (\Mux24~1_combout\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & \Mux24~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\ $ 
-- (\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X44_Y39_N22
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X47_Y35_N0
\v~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~9_combout\ = (\B[7]~input_o\ & ((\v~7_combout\) # ((\A[7]~input_o\) # (\v~8_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\v~7_combout\) # (\v~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~7_combout\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \v~8_combout\,
	combout => \v~9_combout\);

-- Location: LCCOMB_X47_Y35_N22
\B~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~6_combout\ = (\B~5_combout\ & ((\B[7]~input_o\) # (!\A[7]~input_o\))) # (!\B~5_combout\ & (!\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~5_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \B~6_combout\);

-- Location: LCCOMB_X46_Y39_N16
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~6_combout\))) # (!\ALUControl[0]~input_o\ & (\v~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~9_combout\,
	datad => \B~6_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X46_Y39_N2
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[8]~input_o\ & ((\Mux23~0_combout\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & (\Mux23~0_combout\ & \A[8]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[8]~input_o\ $ (\Mux23~0_combout\ $ 
-- (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X44_Y39_N24
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X46_Y39_N4
\v~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~10_combout\ = (\v~9_combout\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v~9_combout\,
	datad => \A[8]~input_o\,
	combout => \v~10_combout\);

-- Location: LCCOMB_X46_Y39_N6
\B~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~7_combout\ = (\B[8]~input_o\ & ((\B~6_combout\) # (!\A[8]~input_o\))) # (!\B[8]~input_o\ & (\B~6_combout\ & !\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B~6_combout\,
	datad => \A[8]~input_o\,
	combout => \B~7_combout\);

-- Location: LCCOMB_X46_Y39_N0
\v~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~11_combout\ = (\B[8]~input_o\ & ((\v~9_combout\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \v~9_combout\,
	datad => \A[8]~input_o\,
	combout => \v~11_combout\);

-- Location: LCCOMB_X46_Y39_N10
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\ALUControl[0]~input_o\ & (\B~7_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~7_combout\,
	datab => \ALUControl[0]~input_o\,
	datad => \v~11_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X46_Y39_N12
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux22~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~10_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X46_Y39_N30
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\ALUControl[1]~input_o\ & ((\A[9]~input_o\ & ((\B[9]~input_o\) # (\Mux22~1_combout\))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & \Mux22~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\ $ 
-- (\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X44_Y39_N26
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux31~0_combout\) # ((\Mux22~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X46_Y39_N18
\v~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~12_combout\ = (\A[9]~input_o\ & ((\v~10_combout\) # ((\B[9]~input_o\) # (\v~11_combout\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\v~10_combout\) # (\v~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \v~10_combout\,
	datac => \B[9]~input_o\,
	datad => \v~11_combout\,
	combout => \v~12_combout\);

-- Location: LCCOMB_X46_Y39_N24
\B~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~8_combout\ = (\A[9]~input_o\ & (\B[9]~input_o\ & \B~7_combout\)) # (!\A[9]~input_o\ & ((\B[9]~input_o\) # (\B~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \B~7_combout\,
	combout => \B~8_combout\);

-- Location: LCCOMB_X46_Y39_N28
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\ALUControl[0]~input_o\ & (((\ALUControl[1]~input_o\) # (\B~8_combout\)))) # (!\ALUControl[0]~input_o\ & (\v~12_combout\ & (!\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~12_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \B~8_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X46_Y39_N14
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[10]~input_o\ & ((\B[10]~input_o\) # (\Mux21~0_combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & \Mux21~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\ $ 
-- (\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X44_Y39_N12
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux31~0_combout\) # ((\Mux21~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X46_Y39_N8
\v~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~13_combout\ = (\v~12_combout\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v~12_combout\,
	datac => \A[10]~input_o\,
	combout => \v~13_combout\);

-- Location: LCCOMB_X46_Y39_N20
\v~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~14_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # (\v~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \v~12_combout\,
	datac => \B[10]~input_o\,
	combout => \v~14_combout\);

-- Location: LCCOMB_X46_Y39_N26
\B~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~9_combout\ = (\A[10]~input_o\ & (\B~8_combout\ & \B[10]~input_o\)) # (!\A[10]~input_o\ & ((\B~8_combout\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B~8_combout\,
	datac => \B[10]~input_o\,
	combout => \B~9_combout\);

-- Location: LCCOMB_X45_Y38_N8
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~9_combout\))) # (!\ALUControl[0]~input_o\ & (\v~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datac => \v~14_combout\,
	datad => \B~9_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X45_Y38_N26
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux20~0_combout\) # ((\v~13_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \v~13_combout\,
	datac => \Mux20~0_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X45_Y38_N4
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[11]~input_o\ & ((\Mux20~1_combout\) # (\A[11]~input_o\))) # (!\B[11]~input_o\ & (\Mux20~1_combout\ & \A[11]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[11]~input_o\ $ (\Mux20~1_combout\ $ 
-- (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[11]~input_o\,
	datac => \Mux20~1_combout\,
	datad => \A[11]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X44_Y39_N14
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X45_Y38_N0
\v~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~15_combout\ = (\B[11]~input_o\ & ((\v~13_combout\) # ((\v~14_combout\) # (\A[11]~input_o\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\v~13_combout\) # (\v~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \v~13_combout\,
	datac => \v~14_combout\,
	datad => \A[11]~input_o\,
	combout => \v~15_combout\);

-- Location: LCCOMB_X45_Y38_N6
\B~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~10_combout\ = (\B~9_combout\ & ((\B[11]~input_o\) # (!\A[11]~input_o\))) # (!\B~9_combout\ & (\B[11]~input_o\ & !\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~9_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \B~10_combout\);

-- Location: LCCOMB_X45_Y38_N2
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~10_combout\))) # (!\ALUControl[0]~input_o\ & (\v~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \v~15_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B~10_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X45_Y38_N20
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[12]~input_o\ & ((\Mux19~0_combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & (\Mux19~0_combout\ & \A[12]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[12]~input_o\ $ (\Mux19~0_combout\ $ 
-- (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \A[12]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X42_Y37_N8
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X45_Y38_N24
\B~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~11_combout\ = (\B[12]~input_o\ & ((\B~10_combout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & \B~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B~10_combout\,
	combout => \B~11_combout\);

-- Location: LCCOMB_X45_Y38_N10
\v~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~17_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # (\v~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \v~15_combout\,
	datac => \B[12]~input_o\,
	combout => \v~17_combout\);

-- Location: LCCOMB_X45_Y38_N28
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\ALUControl[0]~input_o\ & (\B~11_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B~11_combout\,
	datad => \v~17_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X45_Y38_N22
\v~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~16_combout\ = (\v~15_combout\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v~15_combout\,
	datac => \A[12]~input_o\,
	combout => \v~16_combout\);

-- Location: LCCOMB_X45_Y38_N30
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux18~0_combout\) # ((\v~16_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \v~16_combout\,
	datad => \ALUControl[0]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X45_Y38_N16
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[13]~input_o\ & ((\Mux18~1_combout\) # (\A[13]~input_o\))) # (!\B[13]~input_o\ & (\Mux18~1_combout\ & \A[13]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[13]~input_o\ $ (\Mux18~1_combout\ $ 
-- (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[13]~input_o\,
	datac => \Mux18~1_combout\,
	datad => \A[13]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X42_Y37_N26
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[2]~input_o\,
	datac => \Mux18~2_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X45_Y38_N12
\v~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~18_combout\ = (\B[13]~input_o\ & ((\v~17_combout\) # ((\v~16_combout\) # (\A[13]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\v~17_combout\) # (\v~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~17_combout\,
	datab => \B[13]~input_o\,
	datac => \v~16_combout\,
	datad => \A[13]~input_o\,
	combout => \v~18_combout\);

-- Location: LCCOMB_X45_Y38_N18
\B~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~12_combout\ = (\A[13]~input_o\ & (\B~11_combout\ & \B[13]~input_o\)) # (!\A[13]~input_o\ & ((\B~11_combout\) # (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B~11_combout\,
	datad => \B[13]~input_o\,
	combout => \B~12_combout\);

-- Location: LCCOMB_X44_Y37_N0
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\ALUControl[0]~input_o\ & ((\ALUControl[1]~input_o\) # ((\B~12_combout\)))) # (!\ALUControl[0]~input_o\ & (!\ALUControl[1]~input_o\ & (\v~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \v~18_combout\,
	datad => \B~12_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X44_Y37_N26
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[14]~input_o\ & ((\A[14]~input_o\) # (\Mux17~0_combout\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & \Mux17~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\ $ 
-- (\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X42_Y37_N12
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux31~0_combout\) # ((\Mux17~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X44_Y37_N28
\v~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~19_combout\ = (\v~18_combout\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~18_combout\,
	datac => \A[14]~input_o\,
	combout => \v~19_combout\);

-- Location: LCCOMB_X44_Y37_N24
\v~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~20_combout\ = (\B[14]~input_o\ & ((\v~18_combout\) # (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~18_combout\,
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \v~20_combout\);

-- Location: LCCOMB_X44_Y37_N6
\B~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~13_combout\ = (\B[14]~input_o\ & ((\B~12_combout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & \B~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => \B~12_combout\,
	combout => \B~13_combout\);

-- Location: LCCOMB_X44_Y37_N10
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~13_combout\))) # (!\ALUControl[0]~input_o\ & (\v~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~20_combout\,
	datad => \B~13_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X44_Y37_N12
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux16~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~19_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X44_Y37_N22
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\ALUControl[1]~input_o\ & ((\A[15]~input_o\ & ((\B[15]~input_o\) # (\Mux16~1_combout\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & \Mux16~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\ $ 
-- (\Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \B[15]~input_o\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X42_Y37_N30
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux31~0_combout\) # ((\Mux16~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X44_Y37_N2
\v~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~21_combout\ = (\A[15]~input_o\ & ((\v~19_combout\) # ((\B[15]~input_o\) # (\v~20_combout\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\v~19_combout\) # (\v~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \v~19_combout\,
	datac => \B[15]~input_o\,
	datad => \v~20_combout\,
	combout => \v~21_combout\);

-- Location: LCCOMB_X44_Y37_N16
\B~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~14_combout\ = (\A[15]~input_o\ & (\B[15]~input_o\ & \B~13_combout\)) # (!\A[15]~input_o\ & ((\B[15]~input_o\) # (\B~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B~13_combout\,
	combout => \B~14_combout\);

-- Location: LCCOMB_X43_Y37_N8
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~14_combout\))) # (!\ALUControl[0]~input_o\ & (\v~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~21_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \ALUControl[0]~input_o\,
	datad => \B~14_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X43_Y37_N2
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[16]~input_o\ & ((\Mux15~0_combout\) # (\B[16]~input_o\))) # (!\A[16]~input_o\ & (\Mux15~0_combout\ & \B[16]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[16]~input_o\ $ (\Mux15~0_combout\ $ 
-- (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \Mux15~0_combout\,
	datad => \B[16]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X42_Y37_N24
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux31~0_combout\) # ((\Mux15~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X43_Y37_N4
\v~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~22_combout\ = (\A[16]~input_o\ & \v~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datad => \v~21_combout\,
	combout => \v~22_combout\);

-- Location: LCCOMB_X43_Y37_N22
\B~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~15_combout\ = (\A[16]~input_o\ & (\B~14_combout\ & \B[16]~input_o\)) # (!\A[16]~input_o\ & ((\B~14_combout\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B~14_combout\,
	datad => \B[16]~input_o\,
	combout => \B~15_combout\);

-- Location: LCCOMB_X43_Y37_N0
\v~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~23_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\) # (\v~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => \v~21_combout\,
	combout => \v~23_combout\);

-- Location: LCCOMB_X43_Y37_N10
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ALUControl[0]~input_o\ & (\B~15_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datac => \B~15_combout\,
	datad => \v~23_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X43_Y37_N28
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux14~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \v~22_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X43_Y37_N14
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\ALUControl[1]~input_o\ & ((\A[17]~input_o\ & ((\B[17]~input_o\) # (\Mux14~1_combout\))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & \Mux14~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\ $ 
-- (\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \B[17]~input_o\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X42_Y37_N2
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux31~0_combout\) # ((\Mux14~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X43_Y37_N26
\v~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~24_combout\ = (\A[17]~input_o\ & ((\v~22_combout\) # ((\B[17]~input_o\) # (\v~23_combout\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & ((\v~22_combout\) # (\v~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \v~22_combout\,
	datac => \B[17]~input_o\,
	datad => \v~23_combout\,
	combout => \v~24_combout\);

-- Location: LCCOMB_X43_Y37_N24
\B~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~16_combout\ = (\B~15_combout\ & ((\B[17]~input_o\) # (!\A[17]~input_o\))) # (!\B~15_combout\ & (\B[17]~input_o\ & !\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~15_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \B~16_combout\);

-- Location: LCCOMB_X43_Y37_N12
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\ALUControl[0]~input_o\ & ((\ALUControl[1]~input_o\) # ((\B~16_combout\)))) # (!\ALUControl[0]~input_o\ & (!\ALUControl[1]~input_o\ & (\v~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \v~24_combout\,
	datad => \B~16_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X43_Y37_N6
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\ALUControl[1]~input_o\ & ((\Mux13~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (!\Mux13~0_combout\ & (\A[18]~input_o\ & \B[18]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux13~0_combout\ $ (\A[18]~input_o\ $ 
-- (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \ALUControl[1]~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X42_Y37_N4
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux31~0_combout\) # ((\Mux13~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X43_Y37_N16
\v~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~25_combout\ = (\v~24_combout\ & \A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~24_combout\,
	datac => \A[18]~input_o\,
	combout => \v~25_combout\);

-- Location: LCCOMB_X43_Y37_N20
\v~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~26_combout\ = (\B[18]~input_o\ & ((\v~24_combout\) # (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~24_combout\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \v~26_combout\);

-- Location: LCCOMB_X43_Y37_N18
\B~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~17_combout\ = (\B~16_combout\ & ((\B[18]~input_o\) # (!\A[18]~input_o\))) # (!\B~16_combout\ & (!\A[18]~input_o\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~16_combout\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \B~17_combout\);

-- Location: LCCOMB_X43_Y37_N30
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~17_combout\))) # (!\ALUControl[0]~input_o\ & (\v~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~26_combout\,
	datad => \B~17_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X43_Y36_N8
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux12~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~25_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X43_Y36_N10
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\ALUControl[1]~input_o\ & ((\A[19]~input_o\ & ((\Mux12~1_combout\) # (\B[19]~input_o\))) # (!\A[19]~input_o\ & (\Mux12~1_combout\ & \B[19]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[19]~input_o\ $ (\Mux12~1_combout\ $ 
-- (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \Mux12~1_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X42_Y37_N22
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux31~0_combout\) # ((\Mux12~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X43_Y36_N22
\v~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~27_combout\ = (\A[19]~input_o\ & ((\v~25_combout\) # ((\v~26_combout\) # (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\v~25_combout\) # (\v~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \v~25_combout\,
	datac => \v~26_combout\,
	datad => \B[19]~input_o\,
	combout => \v~27_combout\);

-- Location: LCCOMB_X43_Y36_N4
\B~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~18_combout\ = (\A[19]~input_o\ & (\B~17_combout\ & \B[19]~input_o\)) # (!\A[19]~input_o\ & ((\B~17_combout\) # (\B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B~17_combout\,
	datad => \B[19]~input_o\,
	combout => \B~18_combout\);

-- Location: LCCOMB_X43_Y36_N24
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\ALUControl[0]~input_o\ & (((\B~18_combout\) # (\ALUControl[1]~input_o\)))) # (!\ALUControl[0]~input_o\ & (\v~27_combout\ & ((!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~27_combout\,
	datab => \ALUControl[0]~input_o\,
	datac => \B~18_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X43_Y36_N26
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[20]~input_o\ & ((\B[20]~input_o\) # (\Mux11~0_combout\))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & \Mux11~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\ $ 
-- (\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X42_Y37_N16
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux31~0_combout\) # ((\Mux11~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X43_Y36_N28
\v~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~28_combout\ = (\v~27_combout\ & \A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~27_combout\,
	datac => \A[20]~input_o\,
	combout => \v~28_combout\);

-- Location: LCCOMB_X43_Y36_N14
\B~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~19_combout\ = (\B[20]~input_o\ & ((\B~18_combout\) # (!\A[20]~input_o\))) # (!\B[20]~input_o\ & (\B~18_combout\ & !\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B~18_combout\,
	datac => \A[20]~input_o\,
	combout => \B~19_combout\);

-- Location: LCCOMB_X43_Y36_N0
\v~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~29_combout\ = (\B[20]~input_o\ & ((\v~27_combout\) # (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~27_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	combout => \v~29_combout\);

-- Location: LCCOMB_X43_Y36_N18
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\ALUControl[0]~input_o\ & (\B~19_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[0]~input_o\,
	datac => \B~19_combout\,
	datad => \v~29_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X43_Y36_N12
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux10~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~28_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X43_Y36_N6
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[21]~input_o\ & ((\A[21]~input_o\) # (\Mux10~1_combout\))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & \Mux10~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\ $ 
-- (\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X42_Y37_N18
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux31~0_combout\) # ((\Mux10~2_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~2_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X43_Y36_N16
\B~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~20_combout\ = (\A[21]~input_o\ & (\B~19_combout\ & \B[21]~input_o\)) # (!\A[21]~input_o\ & ((\B~19_combout\) # (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datac => \B~19_combout\,
	datad => \B[21]~input_o\,
	combout => \B~20_combout\);

-- Location: LCCOMB_X43_Y36_N2
\v~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~30_combout\ = (\B[21]~input_o\ & ((\v~29_combout\) # ((\A[21]~input_o\) # (\v~28_combout\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\v~29_combout\) # (\v~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \v~29_combout\,
	datac => \A[21]~input_o\,
	datad => \v~28_combout\,
	combout => \v~30_combout\);

-- Location: LCCOMB_X43_Y36_N20
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~20_combout\) # ((\ALUControl[1]~input_o\)))) # (!\ALUControl[0]~input_o\ & (((!\ALUControl[1]~input_o\ & \v~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B~20_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \v~30_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X43_Y35_N0
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[22]~input_o\ & ((\B[22]~input_o\) # (\Mux9~0_combout\))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & \Mux9~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[22]~input_o\ $ (\B[22]~input_o\ $ 
-- (\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X42_Y37_N20
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux31~0_combout\) # ((\Mux9~1_combout\ & !\ALUControl[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datac => \ALUControl[2]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X43_Y35_N26
\v~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~31_combout\ = (\A[22]~input_o\ & \v~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => \v~30_combout\,
	combout => \v~31_combout\);

-- Location: LCCOMB_X43_Y36_N30
\B~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~21_combout\ = (\B[22]~input_o\ & ((\B~20_combout\) # (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (\B~20_combout\ & !\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \B~20_combout\,
	datad => \A[22]~input_o\,
	combout => \B~21_combout\);

-- Location: LCCOMB_X43_Y35_N20
\v~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~32_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # (\v~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \v~30_combout\,
	combout => \v~32_combout\);

-- Location: LCCOMB_X43_Y35_N6
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ALUControl[0]~input_o\ & (\B~21_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUControl[0]~input_o\,
	datac => \B~21_combout\,
	datad => \v~32_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X43_Y35_N16
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux8~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~31_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X43_Y35_N10
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\ALUControl[1]~input_o\ & ((\A[23]~input_o\ & ((\B[23]~input_o\) # (\Mux8~1_combout\))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & \Mux8~1_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\ $ 
-- (\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X40_Y35_N16
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X43_Y35_N14
\v~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~33_combout\ = (\A[23]~input_o\ & ((\v~31_combout\) # ((\B[23]~input_o\) # (\v~32_combout\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\v~31_combout\) # (\v~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~31_combout\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \v~32_combout\,
	combout => \v~33_combout\);

-- Location: LCCOMB_X43_Y35_N12
\B~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~22_combout\ = (\B~21_combout\ & ((\B[23]~input_o\) # (!\A[23]~input_o\))) # (!\B~21_combout\ & (\B[23]~input_o\ & !\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~21_combout\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \B~22_combout\);

-- Location: LCCOMB_X43_Y35_N24
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~22_combout\))) # (!\ALUControl[0]~input_o\ & (\v~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~33_combout\,
	datad => \B~22_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X43_Y35_N2
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[24]~input_o\ & ((\Mux7~0_combout\) # (\B[24]~input_o\))) # (!\A[24]~input_o\ & (\Mux7~0_combout\ & \B[24]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[24]~input_o\ $ (\Mux7~0_combout\ $ 
-- (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X40_Y35_N26
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datab => \Mux7~1_combout\,
	datac => \Mux31~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X43_Y35_N4
\v~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~34_combout\ = (\v~33_combout\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v~33_combout\,
	datad => \A[24]~input_o\,
	combout => \v~34_combout\);

-- Location: LCCOMB_X43_Y35_N22
\B~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~23_combout\ = (\B~22_combout\ & ((\B[24]~input_o\) # (!\A[24]~input_o\))) # (!\B~22_combout\ & (\B[24]~input_o\ & !\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~22_combout\,
	datab => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \B~23_combout\);

-- Location: LCCOMB_X43_Y35_N8
\v~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~35_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # (\v~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \v~33_combout\,
	datad => \B[24]~input_o\,
	combout => \v~35_combout\);

-- Location: LCCOMB_X43_Y35_N18
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ALUControl[0]~input_o\ & (\B~23_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~23_combout\,
	datab => \v~35_combout\,
	datac => \ALUControl[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X43_Y35_N28
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\Mux6~0_combout\) # ((!\ALUControl[0]~input_o\ & \v~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~34_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X40_Y35_N20
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ALUControl[1]~input_o\ & ((\Mux6~1_combout\ & ((\B[25]~input_o\) # (\A[25]~input_o\))) # (!\Mux6~1_combout\ & (\B[25]~input_o\ & \A[25]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux6~1_combout\ $ (\B[25]~input_o\ $ 
-- (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \B[25]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X40_Y35_N14
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \Mux31~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X43_Y35_N30
\v~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~36_combout\ = (\A[25]~input_o\ & ((\v~34_combout\) # ((\v~35_combout\) # (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\v~34_combout\) # (\v~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \v~34_combout\,
	datac => \v~35_combout\,
	datad => \B[25]~input_o\,
	combout => \v~36_combout\);

-- Location: LCCOMB_X40_Y35_N0
\B~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~24_combout\ = (\A[25]~input_o\ & (\B~23_combout\ & \B[25]~input_o\)) # (!\A[25]~input_o\ & ((\B~23_combout\) # (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B~23_combout\,
	datad => \B[25]~input_o\,
	combout => \B~24_combout\);

-- Location: LCCOMB_X47_Y35_N2
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ALUControl[1]~input_o\ & (\ALUControl[0]~input_o\)) # (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\ & ((\B~24_combout\))) # (!\ALUControl[0]~input_o\ & (\v~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \ALUControl[0]~input_o\,
	datac => \v~36_combout\,
	datad => \B~24_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X47_Y35_N4
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[26]~input_o\ & ((\Mux5~0_combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\Mux5~0_combout\ & \B[26]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[26]~input_o\ $ (\Mux5~0_combout\ $ 
-- (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \ALUControl[1]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X40_Y35_N18
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X47_Y35_N14
\v~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~37_combout\ = (\v~36_combout\ & \A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v~36_combout\,
	datad => \A[26]~input_o\,
	combout => \v~37_combout\);

-- Location: LCCOMB_X47_Y35_N26
\v~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~38_combout\ = (\B[26]~input_o\ & ((\v~36_combout\) # (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datac => \v~36_combout\,
	datad => \A[26]~input_o\,
	combout => \v~38_combout\);

-- Location: LCCOMB_X47_Y35_N16
\B~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~25_combout\ = (\B~24_combout\ & ((\B[26]~input_o\) # (!\A[26]~input_o\))) # (!\B~24_combout\ & (\B[26]~input_o\ & !\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~24_combout\,
	datab => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \B~25_combout\);

-- Location: LCCOMB_X47_Y35_N20
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~25_combout\))) # (!\ALUControl[0]~input_o\ & (\v~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~38_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \B~25_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y35_N6
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux4~0_combout\) # ((\v~37_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[1]~input_o\,
	datab => \v~37_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X47_Y35_N24
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ALUControl[1]~input_o\ & ((\Mux4~1_combout\ & ((\B[27]~input_o\) # (\A[27]~input_o\))) # (!\Mux4~1_combout\ & (\B[27]~input_o\ & \A[27]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\Mux4~1_combout\ $ (\B[27]~input_o\ $ 
-- (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \B[27]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X40_Y35_N4
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X47_Y35_N12
\v~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~39_combout\ = (\B[27]~input_o\ & ((\v~38_combout\) # ((\v~37_combout\) # (\A[27]~input_o\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\v~38_combout\) # (\v~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~38_combout\,
	datab => \v~37_combout\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \v~39_combout\);

-- Location: LCCOMB_X47_Y35_N18
\B~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~26_combout\ = (\B~25_combout\ & ((\B[27]~input_o\) # (!\A[27]~input_o\))) # (!\B~25_combout\ & (\B[27]~input_o\ & !\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~25_combout\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \B~26_combout\);

-- Location: LCCOMB_X46_Y35_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ALUControl[0]~input_o\ & ((\ALUControl[1]~input_o\) # ((\B~26_combout\)))) # (!\ALUControl[0]~input_o\ & (!\ALUControl[1]~input_o\ & (\v~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \v~39_combout\,
	datad => \B~26_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X46_Y35_N26
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ALUControl[1]~input_o\ & ((\A[28]~input_o\ & ((\B[28]~input_o\) # (\Mux3~0_combout\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & \Mux3~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\ $ 
-- (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \ALUControl[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y35_N6
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X46_Y35_N12
\v~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~40_combout\ = (\v~39_combout\ & \A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v~39_combout\,
	datad => \A[28]~input_o\,
	combout => \v~40_combout\);

-- Location: LCCOMB_X46_Y35_N24
\v~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~41_combout\ = (\B[28]~input_o\ & ((\v~39_combout\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \v~39_combout\,
	datad => \A[28]~input_o\,
	combout => \v~41_combout\);

-- Location: LCCOMB_X46_Y35_N30
\B~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~27_combout\ = (\A[28]~input_o\ & (\B[28]~input_o\ & \B~26_combout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (\B~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => \B~26_combout\,
	combout => \B~27_combout\);

-- Location: LCCOMB_X46_Y35_N2
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ALUControl[0]~input_o\ & ((\B~27_combout\))) # (!\ALUControl[0]~input_o\ & (\v~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \v~41_combout\,
	datac => \B~27_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X46_Y35_N4
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)))) # (!\ALUControl[1]~input_o\ & ((\Mux2~0_combout\) # ((\v~40_combout\ & !\ALUControl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~40_combout\,
	datab => \Mux2~0_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X46_Y35_N6
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\ALUControl[1]~input_o\ & ((\B[29]~input_o\ & ((\Mux2~1_combout\) # (\A[29]~input_o\))) # (!\B[29]~input_o\ & (\Mux2~1_combout\ & \A[29]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\B[29]~input_o\ $ (\Mux2~1_combout\ $ 
-- (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \A[29]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X40_Y35_N8
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X46_Y35_N10
\v~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v~42_combout\ = (\B[29]~input_o\ & ((\v~40_combout\) # ((\v~41_combout\) # (\A[29]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\v~40_combout\) # (\v~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~40_combout\,
	datab => \v~41_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \v~42_combout\);

-- Location: LCCOMB_X46_Y35_N16
\B~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B~28_combout\ = (\B~27_combout\ & ((\B[29]~input_o\) # (!\A[29]~input_o\))) # (!\B~27_combout\ & (\B[29]~input_o\ & !\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~27_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \B~28_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ALUControl[0]~input_o\ & (((\B~28_combout\) # (\ALUControl[1]~input_o\)))) # (!\ALUControl[0]~input_o\ & (\v~42_combout\ & ((!\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v~42_combout\,
	datab => \B~28_combout\,
	datac => \ALUControl[0]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X46_Y35_N14
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ALUControl[1]~input_o\ & ((\B[30]~input_o\ & ((\A[30]~input_o\) # (\Mux1~0_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \Mux1~0_combout\)))) # (!\ALUControl[1]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\ $ 
-- (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \ALUControl[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X40_Y35_N2
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X46_Y35_N18
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = \ALUControl[0]~input_o\ $ (((\A[30]~input_o\ & !\ALUControl[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \A[30]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X46_Y35_N8
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ALUControl[0]~input_o\ & (\B~28_combout\)) # (!\ALUControl[0]~input_o\ & ((\v~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[0]~input_o\,
	datab => \B~28_combout\,
	datad => \v~42_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X46_Y35_N20
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\B[30]~input_o\ & ((\Mux0~1_combout\) # ((\Mux0~0_combout\ & !\ALUControl[1]~input_o\)))) # (!\B[30]~input_o\ & (\Mux0~1_combout\ & ((\Mux0~0_combout\) # (\ALUControl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X46_Y35_N22
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\ALUControl[1]~input_o\ & ((\A[31]~input_o\ & ((\Mux0~2_combout\) # (\B[31]~input_o\))) # (!\A[31]~input_o\ & (\Mux0~2_combout\ & \B[31]~input_o\)))) # (!\ALUControl[1]~input_o\ & (\A[31]~input_o\ $ (\Mux0~2_combout\ $ 
-- (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \B[31]~input_o\,
	datad => \ALUControl[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X40_Y35_N28
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux31~0_combout\) # ((!\ALUControl[2]~input_o\ & \Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl[2]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X40_Y35_N24
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Mux5~2_combout\ & (!\Mux4~3_combout\ & !\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~2_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux3~2_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X40_Y35_N10
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~10_combout\ & (!\Mux0~4_combout\ & (!\Mux2~3_combout\ & !\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Mux0~4_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux1~2_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X42_Y37_N6
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux18~3_combout\ & (!\Mux19~2_combout\ & !\Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~3_combout\,
	datac => \Mux19~2_combout\,
	datad => \Mux20~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X42_Y37_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux17~2_combout\ & (!\Mux16~3_combout\ & !\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datac => \Mux16~3_combout\,
	datad => \Mux15~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X42_Y37_N10
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux12~3_combout\ & (!\Mux13~2_combout\ & !\Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datac => \Mux13~2_combout\,
	datad => \Mux14~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X42_Y37_N28
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux11~2_combout\ & (!\Mux10~3_combout\ & !\Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux9~2_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X42_Y37_N14
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X40_Y35_N22
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux6~3_combout\ & (!\Mux7~2_combout\ & !\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~3_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux8~3_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X44_Y39_N16
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux28~3_combout\ & (!\Mux27~2_combout\ & !\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux27~2_combout\,
	datad => \Mux29~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X44_Y39_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux25~2_combout\ & (!\Mux24~3_combout\ & !\Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~2_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux26~3_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X44_Y39_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\Mux23~2_combout\ & (!\Mux22~3_combout\ & !\Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux22~3_combout\,
	datad => \Mux21~2_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X44_Y39_N30
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux31~2_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & !\Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Mux30~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X40_Y35_N12
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\Equal0~11_combout\ & (\Equal0~8_combout\ & (\Equal0~9_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~12_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_Result(16) <= \Result[16]~output_o\;

ww_Result(17) <= \Result[17]~output_o\;

ww_Result(18) <= \Result[18]~output_o\;

ww_Result(19) <= \Result[19]~output_o\;

ww_Result(20) <= \Result[20]~output_o\;

ww_Result(21) <= \Result[21]~output_o\;

ww_Result(22) <= \Result[22]~output_o\;

ww_Result(23) <= \Result[23]~output_o\;

ww_Result(24) <= \Result[24]~output_o\;

ww_Result(25) <= \Result[25]~output_o\;

ww_Result(26) <= \Result[26]~output_o\;

ww_Result(27) <= \Result[27]~output_o\;

ww_Result(28) <= \Result[28]~output_o\;

ww_Result(29) <= \Result[29]~output_o\;

ww_Result(30) <= \Result[30]~output_o\;

ww_Result(31) <= \Result[31]~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


