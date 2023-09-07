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

-- DATE "09/06/2023 19:07:17"

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
	en_sostenimiento : OUT std_logic;
	sel_mux : OUT std_logic;
	en_agrupa : OUT std_logic;
	write_read : OUT std_logic;
	en_contadorup : OUT std_logic;
	en_contadordown : OUT std_logic;
	en_sos_ram : OUT std_logic;
	en_servomotor : OUT std_logic;
	reset_sos : OUT std_logic;
	reset_contup : OUT std_logic;
	reset_contdown : OUT std_logic;
	reset_resRam : OUT std_logic;
	en_manual : OUT std_logic;
	reset_manual : OUT std_logic
	);
END MSS;

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
SIGNAL \cerrar~input_o\ : std_logic;
SIGNAL \en_sostenimiento~output_o\ : std_logic;
SIGNAL \sel_mux~output_o\ : std_logic;
SIGNAL \en_agrupa~output_o\ : std_logic;
SIGNAL \write_read~output_o\ : std_logic;
SIGNAL \en_contadorup~output_o\ : std_logic;
SIGNAL \en_contadordown~output_o\ : std_logic;
SIGNAL \en_sos_ram~output_o\ : std_logic;
SIGNAL \en_servomotor~output_o\ : std_logic;
SIGNAL \reset_sos~output_o\ : std_logic;
SIGNAL \reset_contup~output_o\ : std_logic;
SIGNAL \reset_contdown~output_o\ : std_logic;
SIGNAL \reset_resRam~output_o\ : std_logic;
SIGNAL \en_manual~output_o\ : std_logic;
SIGNAL \reset_manual~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ajustar~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_actual.Ta~q\ : std_logic;
SIGNAL \auto_manual~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tb_261~combout\ : std_logic;
SIGNAL \estado_actual.Tb~q\ : std_logic;
SIGNAL \estado_siguiente.Te_237~combout\ : std_logic;
SIGNAL \estado_actual.Te~q\ : std_logic;
SIGNAL \regular_memoria~input_o\ : std_logic;
SIGNAL \atras~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tf_229~combout\ : std_logic;
SIGNAL \estado_actual.Tf~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tg_221~combout\ : std_logic;
SIGNAL \estado_actual.Tg~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Ti_209~combout\ : std_logic;
SIGNAL \estado_actual.Ti~q\ : std_logic;
SIGNAL \fin~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Tc_253~combout\ : std_logic;
SIGNAL \estado_actual.Tc~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \estado_siguiente.Td_245~combout\ : std_logic;
SIGNAL \estado_actual.Td~q\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \sel_mux$latch~combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \en_agrupa$latch~combout\ : std_logic;
SIGNAL \write_read~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \write_read$latch~combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \en_contadorup$latch~combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \en_contadordown$latch~combout\ : std_logic;
SIGNAL \abrir~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \en_servomotor$latch~combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \en_manual$latch~combout\ : std_logic;
SIGNAL \ALT_INV_atras~input_o\ : std_logic;
SIGNAL \ALT_INV_regular_memoria~input_o\ : std_logic;
SIGNAL \ALT_INV_ajustar~input_o\ : std_logic;
SIGNAL \ALT_INV_fin~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_auto_manual~input_o\ : std_logic;
SIGNAL \ALT_INV_abrir~input_o\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tg_221~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tb_261~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Ti_209~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Te_237~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tf_229~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Tc_253~combout\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente.Td_245~combout\ : std_logic;
SIGNAL \ALT_INV_en_manual$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_servomotor$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_contadordown$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_contadorup$latch~combout\ : std_logic;
SIGNAL \ALT_INV_write_read$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_agrupa$latch~combout\ : std_logic;
SIGNAL \ALT_INV_sel_mux$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr14~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tg~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tb~q\ : std_logic;
SIGNAL \ALT_INV_write_read~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Ti~q\ : std_logic;
SIGNAL \ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Ta~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Te~q\ : std_logic;
SIGNAL \ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tf~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Tc~q\ : std_logic;
SIGNAL \ALT_INV_estado_actual.Td~q\ : std_logic;

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
\ALT_INV_atras~input_o\ <= NOT \atras~input_o\;
\ALT_INV_regular_memoria~input_o\ <= NOT \regular_memoria~input_o\;
\ALT_INV_ajustar~input_o\ <= NOT \ajustar~input_o\;
\ALT_INV_fin~input_o\ <= NOT \fin~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_auto_manual~input_o\ <= NOT \auto_manual~input_o\;
\ALT_INV_abrir~input_o\ <= NOT \abrir~input_o\;
\ALT_INV_estado_siguiente.Tg_221~combout\ <= NOT \estado_siguiente.Tg_221~combout\;
\ALT_INV_estado_siguiente.Tb_261~combout\ <= NOT \estado_siguiente.Tb_261~combout\;
\ALT_INV_estado_siguiente.Ti_209~combout\ <= NOT \estado_siguiente.Ti_209~combout\;
\ALT_INV_estado_siguiente.Te_237~combout\ <= NOT \estado_siguiente.Te_237~combout\;
\ALT_INV_estado_siguiente.Tf_229~combout\ <= NOT \estado_siguiente.Tf_229~combout\;
\ALT_INV_estado_siguiente.Tc_253~combout\ <= NOT \estado_siguiente.Tc_253~combout\;
\ALT_INV_estado_siguiente.Td_245~combout\ <= NOT \estado_siguiente.Td_245~combout\;
\ALT_INV_en_manual$latch~combout\ <= NOT \en_manual$latch~combout\;
\ALT_INV_en_servomotor$latch~combout\ <= NOT \en_servomotor$latch~combout\;
\ALT_INV_en_contadordown$latch~combout\ <= NOT \en_contadordown$latch~combout\;
\ALT_INV_en_contadorup$latch~combout\ <= NOT \en_contadorup$latch~combout\;
\ALT_INV_write_read$latch~combout\ <= NOT \write_read$latch~combout\;
\ALT_INV_en_agrupa$latch~combout\ <= NOT \en_agrupa$latch~combout\;
\ALT_INV_sel_mux$latch~combout\ <= NOT \sel_mux$latch~combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_WideOr12~0_combout\ <= NOT \WideOr12~0_combout\;
\ALT_INV_Selector29~0_combout\ <= NOT \Selector29~0_combout\;
\ALT_INV_Selector28~0_combout\ <= NOT \Selector28~0_combout\;
\ALT_INV_WideOr13~0_combout\ <= NOT \WideOr13~0_combout\;
\ALT_INV_WideOr14~0_combout\ <= NOT \WideOr14~0_combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_estado_actual.Tg~q\ <= NOT \estado_actual.Tg~q\;
\ALT_INV_estado_actual.Tb~q\ <= NOT \estado_actual.Tb~q\;
\ALT_INV_write_read~1_combout\ <= NOT \write_read~1_combout\;
\ALT_INV_estado_actual.Ti~q\ <= NOT \estado_actual.Ti~q\;
\ALT_INV_WideOr3~0_combout\ <= NOT \WideOr3~0_combout\;
\ALT_INV_estado_actual.Ta~q\ <= NOT \estado_actual.Ta~q\;
\ALT_INV_estado_actual.Te~q\ <= NOT \estado_actual.Te~q\;
\ALT_INV_WideOr15~0_combout\ <= NOT \WideOr15~0_combout\;
\ALT_INV_estado_actual.Tf~q\ <= NOT \estado_actual.Tf~q\;
\ALT_INV_estado_actual.Tc~q\ <= NOT \estado_actual.Tc~q\;
\ALT_INV_estado_actual.Td~q\ <= NOT \estado_actual.Td~q\;

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
	o => \en_sostenimiento~output_o\);

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
	o => \sel_mux~output_o\);

\en_agrupa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_agrupa$latch~combout\,
	devoe => ww_devoe,
	o => \en_agrupa~output_o\);

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
	o => \write_read~output_o\);

\en_contadorup~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_contadorup$latch~combout\,
	devoe => ww_devoe,
	o => \en_contadorup~output_o\);

\en_contadordown~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_contadordown$latch~combout\,
	devoe => ww_devoe,
	o => \en_contadordown~output_o\);

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
	o => \en_sos_ram~output_o\);

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
	o => \en_servomotor~output_o\);

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
	o => \reset_sos~output_o\);

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
	o => \reset_contup~output_o\);

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
	o => \reset_contdown~output_o\);

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
	o => \reset_resRam~output_o\);

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
	o => \en_manual~output_o\);

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
	o => \reset_manual~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\ajustar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ajustar,
	o => \ajustar~input_o\);

\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado_actual.Td~q\ & \ajustar~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Td~q\,
	datab => \ALT_INV_ajustar~input_o\,
	combout => \Selector14~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\estado_actual.Ta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Ta~q\);

\auto_manual~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_auto_manual,
	o => \auto_manual~input_o\);

\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\auto_manual~input_o\) # (\estado_actual.Ta~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Ta~q\,
	datab => \ALT_INV_auto_manual~input_o\,
	combout => \Selector20~0_combout\);

\estado_siguiente.Tb_261\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tb_261~combout\ = ( \estado_siguiente.Tb_261~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Tb_261~combout\ & ( !\estado_actual.Tb~q\ & ( !\Selector20~0_combout\ ) ) ) # ( !\estado_siguiente.Tb_261~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( !\Selector20~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector20~0_combout\,
	datae => \ALT_INV_estado_siguiente.Tb_261~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Tb_261~combout\);

\estado_actual.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Tb_261~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tb~q\);

\estado_siguiente.Te_237\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Te_237~combout\ = ( \estado_siguiente.Te_237~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Te_237~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector14~0_combout\ ) ) ) # ( !\estado_siguiente.Te_237~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector14~0_combout\,
	datae => \ALT_INV_estado_siguiente.Te_237~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Te_237~combout\);

\estado_actual.Te\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Te_237~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Te~q\);

\regular_memoria~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regular_memoria,
	o => \regular_memoria~input_o\);

\atras~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_atras,
	o => \atras~input_o\);

\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\estado_actual.Tc~q\ & (\estado_actual.Tf~q\ & ((!\atras~input_o\)))) # (\estado_actual.Tc~q\ & (((\estado_actual.Tf~q\ & !\atras~input_o\)) # (\regular_memoria~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101001101110000010100110111000001010011011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tc~q\,
	datab => \ALT_INV_estado_actual.Tf~q\,
	datac => \ALT_INV_regular_memoria~input_o\,
	datad => \ALT_INV_atras~input_o\,
	combout => \Selector12~0_combout\);

\estado_siguiente.Tf_229\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tf_229~combout\ = ( \estado_siguiente.Tf_229~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Tf_229~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector12~0_combout\ ) ) ) # ( !\estado_siguiente.Tf_229~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector12~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector12~0_combout\,
	datae => \ALT_INV_estado_siguiente.Tf_229~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Tf_229~combout\);

\estado_actual.Tf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Tf_229~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tf~q\);

\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\estado_actual.Tf~q\ & (\estado_actual.Tg~q\ & (!\ajustar~input_o\))) # (\estado_actual.Tf~q\ & (((\estado_actual.Tg~q\ & !\ajustar~input_o\)) # (\atras~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110101001100000111010100110000011101010011000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tf~q\,
	datab => \ALT_INV_estado_actual.Tg~q\,
	datac => \ALT_INV_ajustar~input_o\,
	datad => \ALT_INV_atras~input_o\,
	combout => \Selector10~0_combout\);

\estado_siguiente.Tg_221\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tg_221~combout\ = ( \estado_siguiente.Tg_221~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Tg_221~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector10~0_combout\ ) ) ) # ( !\estado_siguiente.Tg_221~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector10~0_combout\,
	datae => \ALT_INV_estado_siguiente.Tg_221~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Tg_221~combout\);

\estado_actual.Tg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Tg_221~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tg~q\);

\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado_actual.Tg~q\ & \ajustar~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tg~q\,
	datab => \ALT_INV_ajustar~input_o\,
	combout => \Selector8~0_combout\);

\estado_siguiente.Ti_209\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Ti_209~combout\ = ( \estado_siguiente.Ti_209~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Ti_209~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector8~0_combout\ ) ) ) # ( !\estado_siguiente.Ti_209~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector8~0_combout\,
	datae => \ALT_INV_estado_siguiente.Ti_209~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Ti_209~combout\);

\estado_actual.Ti\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Ti_209~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Ti~q\);

\fin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin,
	o => \fin~input_o\);

\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \fin~input_o\ & ( (((!\estado_actual.Ta~q\ & \auto_manual~input_o\)) # (\estado_actual.Ti~q\)) # (\estado_actual.Te~q\) ) ) # ( !\fin~input_o\ & ( ((!\estado_actual.Ta~q\ & \auto_manual~input_o\)) # (\estado_actual.Ti~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111010111111101111100001111110011110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Te~q\,
	datab => \ALT_INV_estado_actual.Ta~q\,
	datac => \ALT_INV_estado_actual.Ti~q\,
	datad => \ALT_INV_auto_manual~input_o\,
	datae => \ALT_INV_fin~input_o\,
	combout => \Selector18~0_combout\);

\estado_siguiente.Tc_253\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Tc_253~combout\ = ( \estado_siguiente.Tc_253~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Tc_253~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector18~0_combout\ ) ) ) # ( !\estado_siguiente.Tc_253~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector18~0_combout\,
	datae => \ALT_INV_estado_siguiente.Tc_253~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Tc_253~combout\);

\estado_actual.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Tc_253~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Tc~q\);

\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \ajustar~input_o\ & ( \regular_memoria~input_o\ & ( (\estado_actual.Te~q\ & !\fin~input_o\) ) ) ) # ( !\ajustar~input_o\ & ( \regular_memoria~input_o\ & ( ((\estado_actual.Te~q\ & !\fin~input_o\)) # (\estado_actual.Td~q\) ) ) ) 
-- # ( \ajustar~input_o\ & ( !\regular_memoria~input_o\ & ( ((\estado_actual.Te~q\ & !\fin~input_o\)) # (\estado_actual.Tc~q\) ) ) ) # ( !\ajustar~input_o\ & ( !\regular_memoria~input_o\ & ( (((\estado_actual.Te~q\ & !\fin~input_o\)) # 
-- (\estado_actual.Tc~q\)) # (\estado_actual.Td~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111001111110011001101011111010101010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Td~q\,
	datab => \ALT_INV_estado_actual.Tc~q\,
	datac => \ALT_INV_estado_actual.Te~q\,
	datad => \ALT_INV_fin~input_o\,
	datae => \ALT_INV_ajustar~input_o\,
	dataf => \ALT_INV_regular_memoria~input_o\,
	combout => \Selector16~0_combout\);

\estado_siguiente.Td_245\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado_siguiente.Td_245~combout\ = ( \estado_siguiente.Td_245~combout\ & ( \estado_actual.Tb~q\ ) ) # ( \estado_siguiente.Td_245~combout\ & ( !\estado_actual.Tb~q\ & ( \Selector16~0_combout\ ) ) ) # ( !\estado_siguiente.Td_245~combout\ & ( 
-- !\estado_actual.Tb~q\ & ( \Selector16~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector16~0_combout\,
	datae => \ALT_INV_estado_siguiente.Td_245~combout\,
	dataf => \ALT_INV_estado_actual.Tb~q\,
	combout => \estado_siguiente.Td_245~combout\);

\estado_actual.Td\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_siguiente.Td_245~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.Td~q\);

\WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = ((\estado_actual.Tf~q\) # (\estado_actual.Tc~q\)) # (\estado_actual.Td~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Td~q\,
	datab => \ALT_INV_estado_actual.Tc~q\,
	datac => \ALT_INV_estado_actual.Tf~q\,
	combout => \WideOr15~0_combout\);

\sel_mux$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_mux$latch~combout\ = ( \sel_mux$latch~combout\ & ( \WideOr15~0_combout\ & ( \estado_actual.Td~q\ ) ) ) # ( !\sel_mux$latch~combout\ & ( \WideOr15~0_combout\ & ( \estado_actual.Td~q\ ) ) ) # ( \sel_mux$latch~combout\ & ( !\WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Td~q\,
	datae => \ALT_INV_sel_mux$latch~combout\,
	dataf => \ALT_INV_WideOr15~0_combout\,
	combout => \sel_mux$latch~combout\);

\WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ((!\estado_actual.Ta~q\) # (\estado_actual.Te~q\)) # (\estado_actual.Tc~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tc~q\,
	datab => \ALT_INV_estado_actual.Te~q\,
	datac => \ALT_INV_estado_actual.Ta~q\,
	combout => \WideOr3~0_combout\);

\en_agrupa$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_agrupa$latch~combout\ = ( \en_agrupa$latch~combout\ & ( \WideOr3~0_combout\ & ( \estado_actual.Te~q\ ) ) ) # ( !\en_agrupa$latch~combout\ & ( \WideOr3~0_combout\ & ( \estado_actual.Te~q\ ) ) ) # ( \en_agrupa$latch~combout\ & ( !\WideOr3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Te~q\,
	datae => \ALT_INV_en_agrupa$latch~combout\,
	dataf => \ALT_INV_WideOr3~0_combout\,
	combout => \en_agrupa$latch~combout\);

\write_read~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_read~1_combout\ = (!\estado_actual.Te~q\ & !\estado_actual.Ti~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Te~q\,
	datab => \ALT_INV_estado_actual.Ti~q\,
	combout => \write_read~1_combout\);

WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\estado_actual.Tg~q\) # (\estado_actual.Tb~q\)) # (\estado_actual.Td~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Td~q\,
	datab => \ALT_INV_estado_actual.Tb~q\,
	datac => \ALT_INV_estado_actual.Tg~q\,
	combout => \WideOr2~combout\);

\write_read$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_read$latch~combout\ = ( \write_read$latch~combout\ & ( \WideOr2~combout\ ) ) # ( \write_read$latch~combout\ & ( !\WideOr2~combout\ & ( !\write_read~1_combout\ ) ) ) # ( !\write_read$latch~combout\ & ( !\WideOr2~combout\ & ( !\write_read~1_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_write_read~1_combout\,
	datae => \ALT_INV_write_read$latch~combout\,
	dataf => \ALT_INV_WideOr2~combout\,
	combout => \write_read$latch~combout\);

\WideOr14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = ((\estado_actual.Ti~q\) # (\estado_actual.Te~q\)) # (\estado_actual.Tc~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tc~q\,
	datab => \ALT_INV_estado_actual.Te~q\,
	datac => \ALT_INV_estado_actual.Ti~q\,
	combout => \WideOr14~0_combout\);

\en_contadorup$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_contadorup$latch~combout\ = ( \en_contadorup$latch~combout\ & ( \WideOr14~0_combout\ & ( \estado_actual.Te~q\ ) ) ) # ( !\en_contadorup$latch~combout\ & ( \WideOr14~0_combout\ & ( \estado_actual.Te~q\ ) ) ) # ( \en_contadorup$latch~combout\ & ( 
-- !\WideOr14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Te~q\,
	datae => \ALT_INV_en_contadorup$latch~combout\,
	dataf => \ALT_INV_WideOr14~0_combout\,
	combout => \en_contadorup$latch~combout\);

\WideOr13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\estado_actual.Tg~q\) # (\estado_actual.Tc~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tc~q\,
	datab => \ALT_INV_estado_actual.Tg~q\,
	combout => \WideOr13~0_combout\);

\en_contadordown$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_contadordown$latch~combout\ = ( \en_contadordown$latch~combout\ & ( \WideOr13~0_combout\ & ( \estado_actual.Tg~q\ ) ) ) # ( !\en_contadordown$latch~combout\ & ( \WideOr13~0_combout\ & ( \estado_actual.Tg~q\ ) ) ) # ( \en_contadordown$latch~combout\ & 
-- ( !\WideOr13~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Tg~q\,
	datae => \ALT_INV_en_contadordown$latch~combout\,
	dataf => \ALT_INV_WideOr13~0_combout\,
	combout => \en_contadordown$latch~combout\);

\abrir~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir,
	o => \abrir~input_o\);

\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ((\estado_actual.Tb~q\ & !\abrir~input_o\)) # (\estado_actual.Ti~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Ti~q\,
	datab => \ALT_INV_estado_actual.Tb~q\,
	datac => \ALT_INV_abrir~input_o\,
	combout => \Selector28~0_combout\);

\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\estado_actual.Tb~q\ & ((!\estado_actual.Ta~q\) # ((\estado_actual.Ti~q\)))) # (\estado_actual.Tb~q\ & (((!\auto_manual~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110110000101111111011000010111111101100001011111110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Ta~q\,
	datab => \ALT_INV_estado_actual.Ti~q\,
	datac => \ALT_INV_estado_actual.Tb~q\,
	datad => \ALT_INV_auto_manual~input_o\,
	combout => \Selector29~0_combout\);

\en_servomotor$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_servomotor$latch~combout\ = ( \en_servomotor$latch~combout\ & ( \Selector29~0_combout\ & ( \Selector28~0_combout\ ) ) ) # ( !\en_servomotor$latch~combout\ & ( \Selector29~0_combout\ & ( \Selector28~0_combout\ ) ) ) # ( \en_servomotor$latch~combout\ & 
-- ( !\Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Selector28~0_combout\,
	datae => \ALT_INV_en_servomotor$latch~combout\,
	dataf => \ALT_INV_Selector29~0_combout\,
	combout => \en_servomotor$latch~combout\);

\WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\estado_actual.Tb~q\) # (\estado_actual.Tc~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_actual.Tc~q\,
	datab => \ALT_INV_estado_actual.Tb~q\,
	combout => \WideOr12~0_combout\);

\en_manual$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_manual$latch~combout\ = ( \en_manual$latch~combout\ & ( \WideOr12~0_combout\ & ( !\estado_actual.Tc~q\ ) ) ) # ( !\en_manual$latch~combout\ & ( \WideOr12~0_combout\ & ( !\estado_actual.Tc~q\ ) ) ) # ( \en_manual$latch~combout\ & ( 
-- !\WideOr12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado_actual.Tc~q\,
	datae => \ALT_INV_en_manual$latch~combout\,
	dataf => \ALT_INV_WideOr12~0_combout\,
	combout => \en_manual$latch~combout\);

\cerrar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar,
	o => \cerrar~input_o\);

ww_en_sostenimiento <= \en_sostenimiento~output_o\;

ww_sel_mux <= \sel_mux~output_o\;

ww_en_agrupa <= \en_agrupa~output_o\;

ww_write_read <= \write_read~output_o\;

ww_en_contadorup <= \en_contadorup~output_o\;

ww_en_contadordown <= \en_contadordown~output_o\;

ww_en_sos_ram <= \en_sos_ram~output_o\;

ww_en_servomotor <= \en_servomotor~output_o\;

ww_reset_sos <= \reset_sos~output_o\;

ww_reset_contup <= \reset_contup~output_o\;

ww_reset_contdown <= \reset_contdown~output_o\;

ww_reset_resRam <= \reset_resRam~output_o\;

ww_en_manual <= \en_manual~output_o\;

ww_reset_manual <= \reset_manual~output_o\;
END structure;


