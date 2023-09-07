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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/06/2023 19:07:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MSS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MSS_vhd_vec_tst IS
END MSS_vhd_vec_tst;
ARCHITECTURE MSS_arch OF MSS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abrir : STD_LOGIC;
SIGNAL ajustar : STD_LOGIC;
SIGNAL atras : STD_LOGIC;
SIGNAL auto_manual : STD_LOGIC;
SIGNAL cerrar : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL en_agrupa : STD_LOGIC;
SIGNAL en_contadordown : STD_LOGIC;
SIGNAL en_contadorup : STD_LOGIC;
SIGNAL en_manual : STD_LOGIC;
SIGNAL en_servomotor : STD_LOGIC;
SIGNAL en_sos_ram : STD_LOGIC;
SIGNAL en_sostenimiento : STD_LOGIC;
SIGNAL fin : STD_LOGIC;
SIGNAL regular_memoria : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL reset_contdown : STD_LOGIC;
SIGNAL reset_contup : STD_LOGIC;
SIGNAL reset_manual : STD_LOGIC;
SIGNAL reset_resRam : STD_LOGIC;
SIGNAL reset_sos : STD_LOGIC;
SIGNAL sel_mux : STD_LOGIC;
SIGNAL write_read : STD_LOGIC;
COMPONENT MSS
	PORT (
	abrir : IN STD_LOGIC;
	ajustar : IN STD_LOGIC;
	atras : IN STD_LOGIC;
	auto_manual : IN STD_LOGIC;
	cerrar : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	en_agrupa : OUT STD_LOGIC;
	en_contadordown : OUT STD_LOGIC;
	en_contadorup : OUT STD_LOGIC;
	en_manual : OUT STD_LOGIC;
	en_servomotor : OUT STD_LOGIC;
	en_sos_ram : OUT STD_LOGIC;
	en_sostenimiento : OUT STD_LOGIC;
	fin : IN STD_LOGIC;
	regular_memoria : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	reset_contdown : OUT STD_LOGIC;
	reset_contup : OUT STD_LOGIC;
	reset_manual : OUT STD_LOGIC;
	reset_resRam : OUT STD_LOGIC;
	reset_sos : OUT STD_LOGIC;
	sel_mux : OUT STD_LOGIC;
	write_read : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MSS
	PORT MAP (
-- list connections between master ports and signals
	abrir => abrir,
	ajustar => ajustar,
	atras => atras,
	auto_manual => auto_manual,
	cerrar => cerrar,
	clk => clk,
	en_agrupa => en_agrupa,
	en_contadordown => en_contadordown,
	en_contadorup => en_contadorup,
	en_manual => en_manual,
	en_servomotor => en_servomotor,
	en_sos_ram => en_sos_ram,
	en_sostenimiento => en_sostenimiento,
	fin => fin,
	regular_memoria => regular_memoria,
	reset => reset,
	reset_contdown => reset_contdown,
	reset_contup => reset_contup,
	reset_manual => reset_manual,
	reset_resRam => reset_resRam,
	reset_sos => reset_sos,
	sel_mux => sel_mux,
	write_read => write_read
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- auto_manual
t_prcs_auto_manual: PROCESS
BEGIN
	auto_manual <= '1';
	WAIT FOR 580000 ps;
	auto_manual <= '0';
WAIT;
END PROCESS t_prcs_auto_manual;

-- regular_memoria
t_prcs_regular_memoria: PROCESS
BEGIN
	regular_memoria <= '0';
	WAIT FOR 260000 ps;
	regular_memoria <= '1';
	WAIT FOR 320000 ps;
	regular_memoria <= '0';
WAIT;
END PROCESS t_prcs_regular_memoria;

-- ajustar
t_prcs_ajustar: PROCESS
BEGIN
	ajustar <= '0';
	WAIT FOR 40000 ps;
	ajustar <= '1';
	WAIT FOR 160000 ps;
	ajustar <= '0';
	WAIT FOR 280000 ps;
	ajustar <= '1';
	WAIT FOR 120000 ps;
	ajustar <= '0';
	WAIT FOR 240000 ps;
	ajustar <= '1';
	WAIT FOR 60000 ps;
	ajustar <= '0';
WAIT;
END PROCESS t_prcs_ajustar;

-- atras
t_prcs_atras: PROCESS
BEGIN
	atras <= '0';
	WAIT FOR 340000 ps;
	atras <= '1';
	WAIT FOR 80000 ps;
	atras <= '0';
WAIT;
END PROCESS t_prcs_atras;

-- abrir
t_prcs_abrir: PROCESS
BEGIN
	abrir <= '0';
	WAIT FOR 640000 ps;
	abrir <= '1';
	WAIT FOR 80000 ps;
	abrir <= '0';
WAIT;
END PROCESS t_prcs_abrir;

-- cerrar
t_prcs_cerrar: PROCESS
BEGIN
	cerrar <= '0';
	WAIT FOR 700000 ps;
	cerrar <= '1';
	WAIT FOR 180000 ps;
	cerrar <= '0';
WAIT;
END PROCESS t_prcs_cerrar;

-- fin
t_prcs_fin: PROCESS
BEGIN
	fin <= '0';
	WAIT FOR 220000 ps;
	fin <= '1';
	WAIT FOR 20000 ps;
	fin <= '0';
WAIT;
END PROCESS t_prcs_fin;
END MSS_arch;
