-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "09/06/2023 10:10:18"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MSS IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	auto_manual : IN std_logic;
	regular_memoria : IN std_logic;
	abrir : IN std_logic;
	cerrar : IN std_logic;
	ajustar : IN std_logic;
	atras : IN std_logic;
	fin : IN std_logic;
	en_sostenimiento : BUFFER std_logic;
	sel_mux : BUFFER std_logic;
	en_agrupa : BUFFER std_logic;
	write_read : BUFFER std_logic;
	en_contadorup : BUFFER std_logic;
	en_contadordown : BUFFER std_logic;
	en_sos_ram : BUFFER std_logic;
	en_servomotor : BUFFER std_logic;
	reset_sos : BUFFER std_logic;
	reset_contup : BUFFER std_logic;
	reset_contdown : BUFFER std_logic;
	reset_resRam : BUFFER std_logic;
	en_manual : BUFFER std_logic;
	reset_manual : BUFFER std_logic
	);
END MSS;

-- Design Ports Information
-- en_sostenimiento	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_agrupa	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_read	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_contadorup	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_contadordown	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_sos_ram	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_servomotor	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_sos	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_contup	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_contdown	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_resRam	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_manual	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_manual	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atras	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regular_memoria	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ajustar	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- auto_manual	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MSS IS
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
SIGNAL ww_auto_manual : std_logic;
SIGNAL ww_regular_memoria : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL ww_cerrar : std_logic;
SIGNAL ww_ajustar : std_logic;
SIGNAL ww_atras : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_en_sostenimiento : std_logic;
SIGNAL ww_sel_mux : std_logic;
SIGNAL ww_en_agrupa : std_logic;
SIGNAL ww_write_read : std_logic;
SIGNAL ww_en_contadorup : std_logic;
SIGNAL ww_en_contadordown : std_logic;
SIGNAL ww_en_sos_ram : std_logic;
SIGNAL ww_en_servomotor : std_logic;
SIGNAL ww_reset_sos : std_logic;
SIGNAL ww_reset_contup : std_logic;
SIGNAL ww_reset_contdown : std_logic;
SIGNAL ww_reset_resRam : std_logic;
SIGNAL ww_en_manual : std_logic;
SIGNAL ww_reset_manual : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \auto_manual~input_o\ : std_logic;
SIGNAL \estado_actual.Ta~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_actual.Ta~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tb_254~combout\ : std_logic;
SIGNAL \estado_actual.Tb~q\ : std_logic;
SIGNAL \atras~input_o\ : std_logic;
SIGNAL \regular_memoria~input_o\ : std_logic;
SIGNAL \ajustar~input_o\ : std_logic;
SIGNAL \fin~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Td_238~combout\ : std_logic;
SIGNAL \estado_actual.Td~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Te_230~combout\ : std_logic;
SIGNAL \estado_actual.Te~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tg_214~combout\ : std_logic;
SIGNAL \estado_actual.Tg~feeder_combout\ : std_logic;
SIGNAL \estado_actual.Tg~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Ti_202~combout\ : std_logic;
SIGNAL \estado_actual.Ti~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tc_246~combout\ : std_logic;
SIGNAL \estado_actual.Tc~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tf_222~combout\ : std_logic;
SIGNAL \estado_actual.Tf~q\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \sel_mux$latch~combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \write_read$latch~combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \cerrar~input_o\ : std_logic;
SIGNAL \abrir~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \en_servomotor$latch~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \en_manual$latch~combout\ : std_logic;
SIGNAL \ALT_INV_cerrar~input_o\ : std_logic;
SIGNAL \ALT_INV_abrir~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tg_214~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tc_246~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tb_254~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Ti_202~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Te_230~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Td_238~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tf_222~combout\ : std_logic;
SIGNAL \ALT_INV_en_manual$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_servomotor$latch~combout\ : std_logic;
SIGNAL \ALT_INV_write_read$latch~combout\ : std_logic;
SIGNAL \ALT_INV_sel_mux$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tg~q\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tc~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Ta~q\ : std_logic;
SIGNAL \ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tb~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Ti~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Te~q\ : std_logic;
SIGNAL \ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Td~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tf~q\ : std_logic;
SIGNAL \ALT_INV_auto_manual~input_o\ : std_logic;
SIGNAL \ALT_INV_ajustar~input_o\ : std_logic;
SIGNAL \ALT_INV_fin~input_o\ : std_logic;
SIGNAL \ALT_INV_regular_memoria~input_o\ : std_logic;
SIGNAL \ALT_INV_atras~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_auto_manual <= auto_manual;
ww_regular_memoria <= regular_memoria;
ww_abrir <= abrir;
ww_cerrar <= cerrar;
ww_ajustar <= ajustar;
ww_atras <= atras;
ww_fin <= fin;
en_sostenimiento <= ww_en_sostenimiento;
sel_mux <= ww_sel_mux;
en_agrupa <= ww_en_agrupa;
write_read <= ww_write_read;
en_contadorup <= ww_en_contadorup;
en_contadordown <= ww_en_contadordown;
en_sos_ram <= ww_en_sos_ram;
en_servomotor <= ww_en_servomotor;
reset_sos <= ww_reset_sos;
reset_contup <= ww_reset_contup;
reset_contdown <= ww_reset_contdown;
reset_resRam <= ww_reset_resRam;
en_manual <= ww_en_manual;
reset_manual <= ww_reset_manual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cerrar~input_o\ <= NOT \cerrar~input_o\;
\ALT_INV_abrir~input_o\ <= NOT \abrir~input_o\;
\ALT_INV_estado_siguiente.Tg_214~combout\ <= NOT \estado_siguiente.Tg_214~combout\;
\ALT_INV_estado_siguiente.Tc_246~combout\ <= NOT \estado_siguiente.Tc_246~combout\;
\ALT_INV_estado_siguiente.Tb_254~combout\ <= NOT \estado_siguiente.Tb_254~combout\;
\ALT_INV_estado_siguiente.Ti_202~combout\ <= NOT \estado_siguiente.Ti_202~combout\;
\ALT_INV_estado_siguiente.Te_230~combout\ <= NOT \estado_siguiente.Te_230~combout\;
\ALT_INV_estado_siguiente.Td_238~combout\ <= NOT \estado_siguiente.Td_238~combout\;
\ALT_INV_estado_siguiente.Tf_222~combout\ <= NOT \estado_siguiente.Tf_222~combout\;
\ALT_INV_en_manual$latch~combout\ <= NOT \en_manual$latch~combout\;
\ALT_INV_en_servomotor$latch~combout\ <= NOT \en_servomotor$latch~combout\;
\ALT_INV_write_read$latch~combout\ <= NOT \write_read$latch~combout\;
\ALT_INV_sel_mux$latch~combout\ <= NOT \sel_mux$latch~combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_estado_actual.Tg~q\ <= NOT \estado_actual.Tg~q\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_estado_actual.Tc~q\ <= NOT \estado_actual.Tc~q\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_estado_actual.Ta~q\ <= NOT \estado_actual.Ta~q\;
\ALT_INV_WideOr8~0_combout\ <= NOT \WideOr8~0_combout\;
\ALT_INV_estado_actual.Tb~q\ <= NOT \estado_actual.Tb~q\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_WideOr10~0_combout\ <= NOT \WideOr10~0_combout\;
\ALT_INV_estado_actual.Ti~q\ <= NOT \estado_actual.Ti~q\;
\ALT_INV_estado_actual.Te~q\ <= NOT \estado_actual.Te~q\;
\ALT_INV_WideOr9~0_combout\ <= NOT \WideOr9~0_combout\;
\ALT_INV_estado_actual.Td~q\ <= NOT \estado_actual.Td~q\;
\ALT_INV_estado_actual.Tf~q\ <= NOT \estado_actual.Tf~q\;
\ALT_INV_auto_manual~input_o\ <= NOT \auto_manual~input_o\;
\ALT_INV_ajustar~input_o\ <= NOT \ajustar~input_o\;
\ALT_INV_fin~input_o\ <= NOT \fin~input_o\;
\ALT_INV_regular_memoria~input_o\ <= NOT \regular_memoria~input_o\;
\ALT_INV_atras~input_o\ <= NOT \atras~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X8_Y0_N36
\en_sostenimiento~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_en_sostenimiento);

-- Location: IOOBUF_X89_Y37_N22
\sel_mux~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_mux$latch~combout\,
	devoe => ww_devoe,
	o => ww_sel_mux);

-- Location: IOOBUF_X30_Y0_N19
\en_agrupa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_en_agrupa);

-- Location: IOOBUF_X89_Y37_N56
\write_read~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \write_read$latch~combout\,
	devoe => ww_devoe,
	o => ww_write_read);

-- Location: IOOBUF_X60_Y0_N53
\en_contadorup~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_en_contadorup);

-- Location: IOOBUF_X72_Y0_N19
\en_contadordown~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_en_contadordown);

-- Location: IOOBUF_X56_Y81_N36
\en_sos_ram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_en_sos_ram);

-- Location: IOOBUF_X89_Y37_N5
\en_servomotor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_servomotor$latch~combout\,
	devoe => ww_devoe,
	o => ww_en_servomotor);

-- Location: IOOBUF_X28_Y0_N36
\reset_sos~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_reset_sos);

-- Location: IOOBUF_X36_Y81_N53
\reset_contup~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_reset_contup);

-- Location: IOOBUF_X54_Y81_N19
\reset_contdown~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_reset_contdown);

-- Location: IOOBUF_X64_Y0_N53
\reset_resRam~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_reset_resRam);

-- Location: IOOBUF_X89_Y37_N39
\en_manual~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_manual$latch~combout\,
	devoe => ww_devoe,
	o => ww_en_manual);

-- Location: IOOBUF_X40_Y81_N53
\reset_manual~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_reset_manual);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N4
\auto_manual~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_manual,
	o => \auto_manual~input_o\);

-- Location: LABCELL_X88_Y38_N24
\estado_actual.Ta~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_actual.Ta~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \estado_actual.Ta~feeder_combout\);

-- Location: IOIBUF_X89_Y38_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y38_N26
\estado_actual.Ta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_actual.Ta~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Ta~q\);

-- Location: MLABCELL_X87_Y38_N24
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( !\estado_actual.Ta~q\ & ( !\auto_manual~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_auto_manual~input_o\,
	dataf => \ALT_INV_estado_actual.Ta~q\,
	combout => \Selector18~0_combout\);

-- Location: MLABCELL_X87_Y38_N57
\estado_siguiente.Tb_254\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tb_254~combout\ = ( \estado_siguiente.Tb_254~combout\ & ( \Selector18~0_combout\ ) ) # ( !\estado_siguiente.Tb_254~combout\ & ( \Selector18~0_combout\ & ( !\estado_actual.Tb~q\ ) ) ) # ( \estado_siguiente.Tb_254~combout\ & ( 
-- !\Selector18~0_combout\ & ( \estado_actual.Tb~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_actual.Tb~q\,
	datae => \ALT_INV_estado_siguiente.Tb_254~combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \estado_siguiente.Tb_254~combout\);

-- Location: FF_X88_Y38_N56
\estado_actual.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \estado_siguiente.Tb_254~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tb~q\);

-- Location: IOIBUF_X89_Y38_N55
\atras~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_atras,
	o => \atras~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\regular_memoria~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regular_memoria,
	o => \regular_memoria~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\ajustar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ajustar,
	o => \ajustar~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\fin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin,
	o => \fin~input_o\);

-- Location: LABCELL_X88_Y38_N39
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \fin~input_o\ & ( \estado_actual.Tc~q\ & ( (!\regular_memoria~input_o\) # ((\estado_actual.Td~q\ & !\ajustar~input_o\)) ) ) ) # ( !\fin~input_o\ & ( \estado_actual.Tc~q\ & ( ((!\regular_memoria~input_o\) # ((\estado_actual.Td~q\ 
-- & !\ajustar~input_o\))) # (\estado_actual.Te~q\) ) ) ) # ( \fin~input_o\ & ( !\estado_actual.Tc~q\ & ( (\estado_actual.Td~q\ & !\ajustar~input_o\) ) ) ) # ( !\fin~input_o\ & ( !\estado_actual.Tc~q\ & ( ((\estado_actual.Td~q\ & !\ajustar~input_o\)) # 
-- (\estado_actual.Te~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101001100110000000011110111111101011111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Te~q\,
	datab => \ALT_INV_estado_actual.Td~q\,
	datac => \ALT_INV_regular_memoria~input_o\,
	datad => \ALT_INV_ajustar~input_o\,
	datae => \ALT_INV_fin~input_o\,
	dataf => \ALT_INV_estado_actual.Tc~q\,
	combout => \Selector14~0_combout\);

-- Location: LABCELL_X88_Y38_N9
\estado_siguiente.Td_238\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Td_238~combout\ = ( \estado_siguiente.Td_238~combout\ & ( (\estado_actual.Tb~q\) # (\Selector14~0_combout\) ) ) # ( !\estado_siguiente.Td_238~combout\ & ( (\Selector14~0_combout\ & !\estado_actual.Tb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector14~0_combout\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_estado_siguiente.Td_238~combout\,
	combout => \estado_siguiente.Td_238~combout\);

-- Location: FF_X88_Y38_N11
\estado_actual.Td\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_siguiente.Td_238~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Td~q\);

-- Location: LABCELL_X88_Y38_N48
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado_actual.Td~q\ & \ajustar~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_actual.Td~q\,
	datac => \ALT_INV_ajustar~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X88_Y38_N3
\estado_siguiente.Te_230\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Te_230~combout\ = ( \estado_siguiente.Te_230~combout\ & ( (\estado_actual.Tb~q\) # (\Selector12~0_combout\) ) ) # ( !\estado_siguiente.Te_230~combout\ & ( (\Selector12~0_combout\ & !\estado_actual.Tb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector12~0_combout\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_estado_siguiente.Te_230~combout\,
	combout => \estado_siguiente.Te_230~combout\);

-- Location: FF_X88_Y38_N5
\estado_actual.Te\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_siguiente.Te_230~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Te~q\);

-- Location: MLABCELL_X87_Y38_N30
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \estado_actual.Tf~q\ & ( ((!\ajustar~input_o\ & \estado_actual.Tg~q\)) # (\atras~input_o\) ) ) # ( !\estado_actual.Tf~q\ & ( (!\ajustar~input_o\ & \estado_actual.Tg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ajustar~input_o\,
	datac => \ALT_INV_atras~input_o\,
	datad => \ALT_INV_estado_actual.Tg~q\,
	dataf => \ALT_INV_estado_actual.Tf~q\,
	combout => \Selector8~0_combout\);

-- Location: MLABCELL_X87_Y38_N51
\estado_siguiente.Tg_214\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tg_214~combout\ = ( \Selector8~0_combout\ & ( (!\estado_actual.Tb~q\) # (\estado_siguiente.Tg_214~combout\) ) ) # ( !\Selector8~0_combout\ & ( (\estado_actual.Tb~q\ & \estado_siguiente.Tg_214~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_actual.Tb~q\,
	datad => \ALT_INV_estado_siguiente.Tg_214~combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \estado_siguiente.Tg_214~combout\);

-- Location: MLABCELL_X87_Y38_N42
\estado_actual.Tg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_actual.Tg~feeder_combout\ = ( \estado_siguiente.Tg_214~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_estado_siguiente.Tg_214~combout\,
	combout => \estado_actual.Tg~feeder_combout\);

-- Location: FF_X87_Y38_N44
\estado_actual.Tg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_actual.Tg~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tg~q\);

-- Location: MLABCELL_X87_Y38_N9
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \ajustar~input_o\ & ( \estado_actual.Tg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ajustar~input_o\,
	dataf => \ALT_INV_estado_actual.Tg~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X88_Y38_N42
\estado_siguiente.Ti_202\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Ti_202~combout\ = ( \Selector6~0_combout\ & ( (!\estado_actual.Tb~q\) # (\estado_siguiente.Ti_202~combout\) ) ) # ( !\Selector6~0_combout\ & ( (\estado_actual.Tb~q\ & \estado_siguiente.Ti_202~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_actual.Tb~q\,
	datad => \ALT_INV_estado_siguiente.Ti_202~combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \estado_siguiente.Ti_202~combout\);

-- Location: FF_X88_Y38_N44
\estado_actual.Ti\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_siguiente.Ti_202~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Ti~q\);

-- Location: LABCELL_X88_Y38_N12
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \estado_actual.Ta~q\ & ( ((\estado_actual.Te~q\ & \fin~input_o\)) # (\estado_actual.Ti~q\) ) ) # ( !\estado_actual.Ta~q\ & ( (((\estado_actual.Te~q\ & \fin~input_o\)) # (\auto_manual~input_o\)) # (\estado_actual.Ti~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Te~q\,
	datab => \ALT_INV_estado_actual.Ti~q\,
	datac => \ALT_INV_auto_manual~input_o\,
	datad => \ALT_INV_fin~input_o\,
	dataf => \ALT_INV_estado_actual.Ta~q\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X88_Y38_N15
\estado_siguiente.Tc_246\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tc_246~combout\ = ( \estado_siguiente.Tc_246~combout\ & ( (\estado_actual.Tb~q\) # (\Selector16~0_combout\) ) ) # ( !\estado_siguiente.Tc_246~combout\ & ( (\Selector16~0_combout\ & !\estado_actual.Tb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_estado_siguiente.Tc_246~combout\,
	combout => \estado_siguiente.Tc_246~combout\);

-- Location: FF_X88_Y38_N17
\estado_actual.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_siguiente.Tc_246~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tc~q\);

-- Location: LABCELL_X88_Y38_N18
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado_actual.Tc~q\ & ( ((\estado_actual.Tf~q\ & !\atras~input_o\)) # (\regular_memoria~input_o\) ) ) # ( !\estado_actual.Tc~q\ & ( (\estado_actual.Tf~q\ & !\atras~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_actual.Tf~q\,
	datac => \ALT_INV_atras~input_o\,
	datad => \ALT_INV_regular_memoria~input_o\,
	dataf => \ALT_INV_estado_actual.Tc~q\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X88_Y38_N30
\estado_siguiente.Tf_222\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tf_222~combout\ = ( \Selector10~0_combout\ & ( (!\estado_actual.Tb~q\) # (\estado_siguiente.Tf_222~combout\) ) ) # ( !\Selector10~0_combout\ & ( (\estado_siguiente.Tf_222~combout\ & \estado_actual.Tb~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado_siguiente.Tf_222~combout\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \estado_siguiente.Tf_222~combout\);

-- Location: FF_X88_Y38_N32
\estado_actual.Tf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado_siguiente.Tf_222~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tf~q\);

-- Location: LABCELL_X88_Y38_N6
\WideOr9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = ( \estado_actual.Td~q\ ) # ( !\estado_actual.Td~q\ & ( \estado_actual.Tf~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado_actual.Tf~q\,
	dataf => \ALT_INV_estado_actual.Td~q\,
	combout => \WideOr9~0_combout\);

-- Location: LABCELL_X88_Y38_N0
\sel_mux$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_mux$latch~combout\ = ( \estado_actual.Tf~q\ & ( (!\WideOr9~0_combout\ & \sel_mux$latch~combout\) ) ) # ( !\estado_actual.Tf~q\ & ( (\sel_mux$latch~combout\) # (\WideOr9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr9~0_combout\,
	datad => \ALT_INV_sel_mux$latch~combout\,
	dataf => \ALT_INV_estado_actual.Tf~q\,
	combout => \sel_mux$latch~combout\);

-- Location: LABCELL_X88_Y38_N51
\WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = ( \estado_actual.Ti~q\ ) # ( !\estado_actual.Ti~q\ & ( (\estado_actual.Tf~q\) # (\estado_actual.Te~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Te~q\,
	datac => \ALT_INV_estado_actual.Tf~q\,
	dataf => \ALT_INV_estado_actual.Ti~q\,
	combout => \WideOr10~0_combout\);

-- Location: LABCELL_X88_Y38_N21
\write_read$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_read$latch~combout\ = ( \estado_actual.Tf~q\ & ( (!\WideOr10~0_combout\ & \write_read$latch~combout\) ) ) # ( !\estado_actual.Tf~q\ & ( (\write_read$latch~combout\) # (\WideOr10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr10~0_combout\,
	datad => \ALT_INV_write_read$latch~combout\,
	dataf => \ALT_INV_estado_actual.Tf~q\,
	combout => \write_read$latch~combout\);

-- Location: LABCELL_X88_Y38_N57
\WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = ( \estado_actual.Ti~q\ ) # ( !\estado_actual.Ti~q\ & ( \estado_actual.Tb~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_estado_actual.Ti~q\,
	combout => \WideOr8~0_combout\);

-- Location: IOIBUF_X89_Y36_N4
\cerrar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar,
	o => \cerrar~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\abrir~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir,
	o => \abrir~input_o\);

-- Location: LABCELL_X88_Y38_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado_actual.Ti~q\ ) # ( !\estado_actual.Ti~q\ & ( (\cerrar~input_o\ & !\abrir~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cerrar~input_o\,
	datad => \ALT_INV_abrir~input_o\,
	dataf => \ALT_INV_estado_actual.Ti~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X88_Y38_N45
\en_servomotor$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_servomotor$latch~combout\ = ( \Selector0~0_combout\ & ( (\WideOr8~0_combout\) # (\en_servomotor$latch~combout\) ) ) # ( !\Selector0~0_combout\ & ( (\en_servomotor$latch~combout\ & !\WideOr8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en_servomotor$latch~combout\,
	datad => \ALT_INV_WideOr8~0_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \en_servomotor$latch~combout\);

-- Location: LABCELL_X88_Y38_N27
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\estado_actual.Ta~q\) # (\estado_actual.Tb~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Ta~q\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X88_Y38_N54
\en_manual$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_manual$latch~combout\ = ( \WideOr0~0_combout\ & ( \estado_actual.Tb~q\ ) ) # ( !\WideOr0~0_combout\ & ( \en_manual$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en_manual$latch~combout\,
	datad => \ALT_INV_estado_actual.Tb~q\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \en_manual$latch~combout\);

-- Location: LABCELL_X68_Y79_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


