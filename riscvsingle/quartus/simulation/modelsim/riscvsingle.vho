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

-- DATE "04/16/2024 17:07:19"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flopr IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	d : IN std_logic_vector(31 DOWNTO 0);
	q : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END flopr;

-- Design Ports Information
-- q[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[15]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[16]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[17]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[18]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[19]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[20]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[21]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[23]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[24]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[26]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[27]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[28]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[29]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[30]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[31]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flopr IS
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
SIGNAL ww_d : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \q[1]~reg0feeder_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \q[4]~reg0feeder_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \q[5]~reg0feeder_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \q[8]~reg0feeder_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \q[9]~reg0feeder_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \q[11]~reg0feeder_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \q[12]~reg0feeder_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \q[13]~reg0feeder_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \q[14]~reg0feeder_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \q[15]~reg0feeder_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL \d[16]~input_o\ : std_logic;
SIGNAL \q[16]~reg0_q\ : std_logic;
SIGNAL \d[17]~input_o\ : std_logic;
SIGNAL \q[17]~reg0_q\ : std_logic;
SIGNAL \d[18]~input_o\ : std_logic;
SIGNAL \q[18]~reg0feeder_combout\ : std_logic;
SIGNAL \q[18]~reg0_q\ : std_logic;
SIGNAL \d[19]~input_o\ : std_logic;
SIGNAL \q[19]~reg0feeder_combout\ : std_logic;
SIGNAL \q[19]~reg0_q\ : std_logic;
SIGNAL \d[20]~input_o\ : std_logic;
SIGNAL \q[20]~reg0_q\ : std_logic;
SIGNAL \d[21]~input_o\ : std_logic;
SIGNAL \q[21]~reg0feeder_combout\ : std_logic;
SIGNAL \q[21]~reg0_q\ : std_logic;
SIGNAL \d[22]~input_o\ : std_logic;
SIGNAL \q[22]~reg0_q\ : std_logic;
SIGNAL \d[23]~input_o\ : std_logic;
SIGNAL \q[23]~reg0feeder_combout\ : std_logic;
SIGNAL \q[23]~reg0_q\ : std_logic;
SIGNAL \d[24]~input_o\ : std_logic;
SIGNAL \q[24]~reg0feeder_combout\ : std_logic;
SIGNAL \q[24]~reg0_q\ : std_logic;
SIGNAL \d[25]~input_o\ : std_logic;
SIGNAL \q[25]~reg0_q\ : std_logic;
SIGNAL \d[26]~input_o\ : std_logic;
SIGNAL \q[26]~reg0_q\ : std_logic;
SIGNAL \d[27]~input_o\ : std_logic;
SIGNAL \q[27]~reg0_q\ : std_logic;
SIGNAL \d[28]~input_o\ : std_logic;
SIGNAL \q[28]~reg0_q\ : std_logic;
SIGNAL \d[29]~input_o\ : std_logic;
SIGNAL \q[29]~reg0feeder_combout\ : std_logic;
SIGNAL \q[29]~reg0_q\ : std_logic;
SIGNAL \d[30]~input_o\ : std_logic;
SIGNAL \q[30]~reg0_q\ : std_logic;
SIGNAL \d[31]~input_o\ : std_logic;
SIGNAL \q[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_d <= d;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
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

-- Location: IOOBUF_X58_Y54_N16
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\q[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[16]~reg0_q\,
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\q[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[17]~reg0_q\,
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\q[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[18]~reg0_q\,
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\q[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[19]~reg0_q\,
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\q[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[20]~reg0_q\,
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\q[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[21]~reg0_q\,
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\q[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[22]~reg0_q\,
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\q[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[23]~reg0_q\,
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\q[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[24]~reg0_q\,
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\q[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[25]~reg0_q\,
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\q[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[26]~reg0_q\,
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\q[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[27]~reg0_q\,
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\q[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[28]~reg0_q\,
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\q[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[29]~reg0_q\,
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\q[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[30]~reg0_q\,
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\q[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[31]~reg0_q\,
	devoe => ww_devoe,
	o => \q[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N29
\d[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X59_Y53_N9
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X0_Y26_N1
\d[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\q[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[1]~reg0feeder_combout\ = \d[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1]~input_o\,
	combout => \q[1]~reg0feeder_combout\);

-- Location: FF_X1_Y26_N17
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N1
\d[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: FF_X49_Y1_N1
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N29
\d[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: FF_X30_Y1_N1
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X49_Y54_N15
\d[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: LCCOMB_X49_Y53_N0
\q[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[4]~reg0feeder_combout\ = \d[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[4]~input_o\,
	combout => \q[4]~reg0feeder_combout\);

-- Location: FF_X49_Y53_N1
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N15
\d[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: LCCOMB_X24_Y1_N0
\q[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[5]~reg0feeder_combout\ = \d[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[5]~input_o\,
	combout => \q[5]~reg0feeder_combout\);

-- Location: FF_X24_Y1_N1
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N8
\d[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: FF_X25_Y38_N9
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X78_Y43_N8
\d[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: FF_X76_Y42_N9
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N15
\d[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: LCCOMB_X1_Y12_N16
\q[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[8]~reg0feeder_combout\ = \d[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[8]~input_o\,
	combout => \q[8]~reg0feeder_combout\);

-- Location: FF_X1_Y12_N17
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[8]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X78_Y18_N8
\d[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: LCCOMB_X77_Y18_N16
\q[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[9]~reg0feeder_combout\ = \d[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[9]~input_o\,
	combout => \q[9]~reg0feeder_combout\);

-- Location: FF_X77_Y18_N17
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[9]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N29
\d[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: FF_X24_Y38_N9
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X56_Y54_N29
\d[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: LCCOMB_X56_Y53_N24
\q[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[11]~reg0feeder_combout\ = \d[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[11]~input_o\,
	combout => \q[11]~reg0feeder_combout\);

-- Location: FF_X56_Y53_N25
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[11]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X51_Y54_N1
\d[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: LCCOMB_X50_Y53_N24
\q[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[12]~reg0feeder_combout\ = \d[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[12]~input_o\,
	combout => \q[12]~reg0feeder_combout\);

-- Location: FF_X50_Y53_N25
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[12]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X56_Y54_N8
\d[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\q[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[13]~reg0feeder_combout\ = \d[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[13]~input_o\,
	combout => \q[13]~reg0feeder_combout\);

-- Location: FF_X55_Y53_N25
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[13]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X20_Y0_N15
\d[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

-- Location: LCCOMB_X20_Y1_N0
\q[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[14]~reg0feeder_combout\ = \d[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[14]~input_o\,
	combout => \q[14]~reg0feeder_combout\);

-- Location: FF_X20_Y1_N1
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[14]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X78_Y31_N22
\d[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

-- Location: LCCOMB_X77_Y31_N16
\q[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[15]~reg0feeder_combout\ = \d[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[15]~input_o\,
	combout => \q[15]~reg0feeder_combout\);

-- Location: FF_X77_Y31_N17
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[15]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: IOIBUF_X58_Y54_N8
\d[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(16),
	o => \d[16]~input_o\);

-- Location: FF_X59_Y53_N27
\q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[16]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[16]~reg0_q\);

-- Location: IOIBUF_X0_Y26_N15
\d[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(17),
	o => \d[17]~input_o\);

-- Location: FF_X2_Y26_N17
\q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[17]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[17]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N29
\d[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(18),
	o => \d[18]~input_o\);

-- Location: LCCOMB_X19_Y1_N0
\q[18]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[18]~reg0feeder_combout\ = \d[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[18]~input_o\,
	combout => \q[18]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N1
\q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[18]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[18]~reg0_q\);

-- Location: IOIBUF_X69_Y54_N1
\d[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(19),
	o => \d[19]~input_o\);

-- Location: LCCOMB_X70_Y53_N24
\q[19]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[19]~reg0feeder_combout\ = \d[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[19]~input_o\,
	combout => \q[19]~reg0feeder_combout\);

-- Location: FF_X70_Y53_N25
\q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[19]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[19]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N1
\d[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(20),
	o => \d[20]~input_o\);

-- Location: FF_X31_Y38_N1
\q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[20]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[20]~reg0_q\);

-- Location: IOIBUF_X78_Y41_N8
\d[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(21),
	o => \d[21]~input_o\);

-- Location: LCCOMB_X77_Y41_N16
\q[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[21]~reg0feeder_combout\ = \d[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[21]~input_o\,
	combout => \q[21]~reg0feeder_combout\);

-- Location: FF_X77_Y41_N17
\q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[21]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[21]~reg0_q\);

-- Location: IOIBUF_X46_Y54_N22
\d[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(22),
	o => \d[22]~input_o\);

-- Location: FF_X47_Y53_N25
\q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[22]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[22]~reg0_q\);

-- Location: IOIBUF_X78_Y42_N8
\d[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(23),
	o => \d[23]~input_o\);

-- Location: LCCOMB_X77_Y42_N16
\q[23]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[23]~reg0feeder_combout\ = \d[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[23]~input_o\,
	combout => \q[23]~reg0feeder_combout\);

-- Location: FF_X77_Y42_N17
\q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[23]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[23]~reg0_q\);

-- Location: IOIBUF_X78_Y21_N8
\d[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(24),
	o => \d[24]~input_o\);

-- Location: LCCOMB_X77_Y21_N16
\q[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[24]~reg0feeder_combout\ = \d[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[24]~input_o\,
	combout => \q[24]~reg0feeder_combout\);

-- Location: FF_X77_Y21_N17
\q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[24]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[24]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N15
\d[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(25),
	o => \d[25]~input_o\);

-- Location: FF_X24_Y38_N19
\q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[25]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[25]~reg0_q\);

-- Location: IOIBUF_X0_Y12_N1
\d[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(26),
	o => \d[26]~input_o\);

-- Location: FF_X2_Y12_N17
\q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[26]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[26]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N29
\d[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(27),
	o => \d[27]~input_o\);

-- Location: FF_X22_Y1_N1
\q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[27]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[27]~reg0_q\);

-- Location: IOIBUF_X60_Y54_N29
\d[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(28),
	o => \d[28]~input_o\);

-- Location: FF_X61_Y53_N1
\q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[28]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[28]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N22
\d[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(29),
	o => \d[29]~input_o\);

-- Location: LCCOMB_X38_Y1_N0
\q[29]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q[29]~reg0feeder_combout\ = \d[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[29]~input_o\,
	combout => \q[29]~reg0feeder_combout\);

-- Location: FF_X38_Y1_N1
\q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[29]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[29]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N8
\d[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(30),
	o => \d[30]~input_o\);

-- Location: FF_X38_Y1_N19
\q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[30]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[30]~reg0_q\);

-- Location: IOIBUF_X78_Y42_N1
\d[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(31),
	o => \d[31]~input_o\);

-- Location: FF_X74_Y42_N25
\q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[31]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[31]~reg0_q\);

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

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(31) <= \q[31]~output_o\;
END structure;


