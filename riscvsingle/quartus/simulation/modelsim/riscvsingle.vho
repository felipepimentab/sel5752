-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/02/2024 17:23:49"

-- 
-- Device: Altera 10M50DAF256C7G Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_TCK~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_F7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	WriteData : BUFFER STD.STANDARD.bit_vector(31 DOWNTO 0);
	DataAdr : BUFFER STD.STANDARD.bit_vector(31 DOWNTO 0);
	MemWrite : BUFFER STD.STANDARD.bit
	);
END top;

-- Design Ports Information
-- WriteData[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[4]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[15]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[17]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[18]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[19]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[21]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[22]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[24]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[25]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[26]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[29]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[30]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData[31]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[8]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[13]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[16]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[17]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[18]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[19]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[21]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[22]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[23]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[24]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[25]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[27]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[28]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[29]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[30]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataAdr[31]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_WriteData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DataAdr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_MemWrite : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \WriteData[0]~output_o\ : std_logic;
SIGNAL \WriteData[1]~output_o\ : std_logic;
SIGNAL \WriteData[2]~output_o\ : std_logic;
SIGNAL \WriteData[3]~output_o\ : std_logic;
SIGNAL \WriteData[4]~output_o\ : std_logic;
SIGNAL \WriteData[5]~output_o\ : std_logic;
SIGNAL \WriteData[6]~output_o\ : std_logic;
SIGNAL \WriteData[7]~output_o\ : std_logic;
SIGNAL \WriteData[8]~output_o\ : std_logic;
SIGNAL \WriteData[9]~output_o\ : std_logic;
SIGNAL \WriteData[10]~output_o\ : std_logic;
SIGNAL \WriteData[11]~output_o\ : std_logic;
SIGNAL \WriteData[12]~output_o\ : std_logic;
SIGNAL \WriteData[13]~output_o\ : std_logic;
SIGNAL \WriteData[14]~output_o\ : std_logic;
SIGNAL \WriteData[15]~output_o\ : std_logic;
SIGNAL \WriteData[16]~output_o\ : std_logic;
SIGNAL \WriteData[17]~output_o\ : std_logic;
SIGNAL \WriteData[18]~output_o\ : std_logic;
SIGNAL \WriteData[19]~output_o\ : std_logic;
SIGNAL \WriteData[20]~output_o\ : std_logic;
SIGNAL \WriteData[21]~output_o\ : std_logic;
SIGNAL \WriteData[22]~output_o\ : std_logic;
SIGNAL \WriteData[23]~output_o\ : std_logic;
SIGNAL \WriteData[24]~output_o\ : std_logic;
SIGNAL \WriteData[25]~output_o\ : std_logic;
SIGNAL \WriteData[26]~output_o\ : std_logic;
SIGNAL \WriteData[27]~output_o\ : std_logic;
SIGNAL \WriteData[28]~output_o\ : std_logic;
SIGNAL \WriteData[29]~output_o\ : std_logic;
SIGNAL \WriteData[30]~output_o\ : std_logic;
SIGNAL \WriteData[31]~output_o\ : std_logic;
SIGNAL \DataAdr[0]~output_o\ : std_logic;
SIGNAL \DataAdr[1]~output_o\ : std_logic;
SIGNAL \DataAdr[2]~output_o\ : std_logic;
SIGNAL \DataAdr[3]~output_o\ : std_logic;
SIGNAL \DataAdr[4]~output_o\ : std_logic;
SIGNAL \DataAdr[5]~output_o\ : std_logic;
SIGNAL \DataAdr[6]~output_o\ : std_logic;
SIGNAL \DataAdr[7]~output_o\ : std_logic;
SIGNAL \DataAdr[8]~output_o\ : std_logic;
SIGNAL \DataAdr[9]~output_o\ : std_logic;
SIGNAL \DataAdr[10]~output_o\ : std_logic;
SIGNAL \DataAdr[11]~output_o\ : std_logic;
SIGNAL \DataAdr[12]~output_o\ : std_logic;
SIGNAL \DataAdr[13]~output_o\ : std_logic;
SIGNAL \DataAdr[14]~output_o\ : std_logic;
SIGNAL \DataAdr[15]~output_o\ : std_logic;
SIGNAL \DataAdr[16]~output_o\ : std_logic;
SIGNAL \DataAdr[17]~output_o\ : std_logic;
SIGNAL \DataAdr[18]~output_o\ : std_logic;
SIGNAL \DataAdr[19]~output_o\ : std_logic;
SIGNAL \DataAdr[20]~output_o\ : std_logic;
SIGNAL \DataAdr[21]~output_o\ : std_logic;
SIGNAL \DataAdr[22]~output_o\ : std_logic;
SIGNAL \DataAdr[23]~output_o\ : std_logic;
SIGNAL \DataAdr[24]~output_o\ : std_logic;
SIGNAL \DataAdr[25]~output_o\ : std_logic;
SIGNAL \DataAdr[26]~output_o\ : std_logic;
SIGNAL \DataAdr[27]~output_o\ : std_logic;
SIGNAL \DataAdr[28]~output_o\ : std_logic;
SIGNAL \DataAdr[29]~output_o\ : std_logic;
SIGNAL \DataAdr[30]~output_o\ : std_logic;
SIGNAL \DataAdr[31]~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
WriteData <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_WriteData);
DataAdr <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_DataAdr);
MemWrite <= IEEE.STD_LOGIC_1164.TO_BIT(ww_MemWrite);
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

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X26_Y0_N2
\WriteData[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\WriteData[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\WriteData[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\WriteData[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\WriteData[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\WriteData[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[5]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\WriteData[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[6]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\WriteData[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\WriteData[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[8]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\WriteData[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[9]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\WriteData[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[10]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\WriteData[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\WriteData[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[12]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\WriteData[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[13]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\WriteData[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\WriteData[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[15]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\WriteData[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[16]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\WriteData[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[17]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\WriteData[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[18]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\WriteData[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[19]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\WriteData[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[20]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\WriteData[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[21]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\WriteData[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[22]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\WriteData[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[23]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\WriteData[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[24]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\WriteData[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\WriteData[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\WriteData[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[27]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\WriteData[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[28]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\WriteData[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[29]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\WriteData[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[30]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\WriteData[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData[31]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DataAdr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\DataAdr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\DataAdr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\DataAdr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\DataAdr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\DataAdr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\DataAdr[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DataAdr[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[7]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\DataAdr[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[8]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\DataAdr[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DataAdr[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[10]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\DataAdr[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[11]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DataAdr[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[12]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\DataAdr[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[13]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\DataAdr[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\DataAdr[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DataAdr[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[16]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\DataAdr[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[17]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\DataAdr[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[18]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\DataAdr[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[19]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\DataAdr[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[20]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DataAdr[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[21]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\DataAdr[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[22]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DataAdr[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[23]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\DataAdr[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[24]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\DataAdr[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[25]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\DataAdr[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[26]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\DataAdr[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[27]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\DataAdr[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[28]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\DataAdr[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[29]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\DataAdr[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[30]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\DataAdr[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DataAdr[31]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\MemWrite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

-- Location: IOIBUF_X78_Y29_N1
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

ww_WriteData(0) <= \WriteData[0]~output_o\;

ww_WriteData(1) <= \WriteData[1]~output_o\;

ww_WriteData(2) <= \WriteData[2]~output_o\;

ww_WriteData(3) <= \WriteData[3]~output_o\;

ww_WriteData(4) <= \WriteData[4]~output_o\;

ww_WriteData(5) <= \WriteData[5]~output_o\;

ww_WriteData(6) <= \WriteData[6]~output_o\;

ww_WriteData(7) <= \WriteData[7]~output_o\;

ww_WriteData(8) <= \WriteData[8]~output_o\;

ww_WriteData(9) <= \WriteData[9]~output_o\;

ww_WriteData(10) <= \WriteData[10]~output_o\;

ww_WriteData(11) <= \WriteData[11]~output_o\;

ww_WriteData(12) <= \WriteData[12]~output_o\;

ww_WriteData(13) <= \WriteData[13]~output_o\;

ww_WriteData(14) <= \WriteData[14]~output_o\;

ww_WriteData(15) <= \WriteData[15]~output_o\;

ww_WriteData(16) <= \WriteData[16]~output_o\;

ww_WriteData(17) <= \WriteData[17]~output_o\;

ww_WriteData(18) <= \WriteData[18]~output_o\;

ww_WriteData(19) <= \WriteData[19]~output_o\;

ww_WriteData(20) <= \WriteData[20]~output_o\;

ww_WriteData(21) <= \WriteData[21]~output_o\;

ww_WriteData(22) <= \WriteData[22]~output_o\;

ww_WriteData(23) <= \WriteData[23]~output_o\;

ww_WriteData(24) <= \WriteData[24]~output_o\;

ww_WriteData(25) <= \WriteData[25]~output_o\;

ww_WriteData(26) <= \WriteData[26]~output_o\;

ww_WriteData(27) <= \WriteData[27]~output_o\;

ww_WriteData(28) <= \WriteData[28]~output_o\;

ww_WriteData(29) <= \WriteData[29]~output_o\;

ww_WriteData(30) <= \WriteData[30]~output_o\;

ww_WriteData(31) <= \WriteData[31]~output_o\;

ww_DataAdr(0) <= \DataAdr[0]~output_o\;

ww_DataAdr(1) <= \DataAdr[1]~output_o\;

ww_DataAdr(2) <= \DataAdr[2]~output_o\;

ww_DataAdr(3) <= \DataAdr[3]~output_o\;

ww_DataAdr(4) <= \DataAdr[4]~output_o\;

ww_DataAdr(5) <= \DataAdr[5]~output_o\;

ww_DataAdr(6) <= \DataAdr[6]~output_o\;

ww_DataAdr(7) <= \DataAdr[7]~output_o\;

ww_DataAdr(8) <= \DataAdr[8]~output_o\;

ww_DataAdr(9) <= \DataAdr[9]~output_o\;

ww_DataAdr(10) <= \DataAdr[10]~output_o\;

ww_DataAdr(11) <= \DataAdr[11]~output_o\;

ww_DataAdr(12) <= \DataAdr[12]~output_o\;

ww_DataAdr(13) <= \DataAdr[13]~output_o\;

ww_DataAdr(14) <= \DataAdr[14]~output_o\;

ww_DataAdr(15) <= \DataAdr[15]~output_o\;

ww_DataAdr(16) <= \DataAdr[16]~output_o\;

ww_DataAdr(17) <= \DataAdr[17]~output_o\;

ww_DataAdr(18) <= \DataAdr[18]~output_o\;

ww_DataAdr(19) <= \DataAdr[19]~output_o\;

ww_DataAdr(20) <= \DataAdr[20]~output_o\;

ww_DataAdr(21) <= \DataAdr[21]~output_o\;

ww_DataAdr(22) <= \DataAdr[22]~output_o\;

ww_DataAdr(23) <= \DataAdr[23]~output_o\;

ww_DataAdr(24) <= \DataAdr[24]~output_o\;

ww_DataAdr(25) <= \DataAdr[25]~output_o\;

ww_DataAdr(26) <= \DataAdr[26]~output_o\;

ww_DataAdr(27) <= \DataAdr[27]~output_o\;

ww_DataAdr(28) <= \DataAdr[28]~output_o\;

ww_DataAdr(29) <= \DataAdr[29]~output_o\;

ww_DataAdr(30) <= \DataAdr[30]~output_o\;

ww_DataAdr(31) <= \DataAdr[31]~output_o\;

ww_MemWrite <= \MemWrite~output_o\;
END structure;


