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
-- Generated on "09/06/2023 00:38:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BinToBCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BinToBCD_vhd_vec_tst IS
END BinToBCD_vhd_vec_tst;
ARCHITECTURE BinToBCD_arch OF BinToBCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL num_bcd : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL num_bin : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT BinToBCD
	PORT (
	num_bcd : BUFFER STD_LOGIC_VECTOR(10 DOWNTO 0);
	num_bin : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BinToBCD
	PORT MAP (
-- list connections between master ports and signals
	num_bcd => num_bcd,
	num_bin => num_bin
	);
-- num_bin[8]
t_prcs_num_bin_8: PROCESS
BEGIN
	num_bin(8) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_8;
-- num_bin[7]
t_prcs_num_bin_7: PROCESS
BEGIN
	num_bin(7) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_7;
-- num_bin[6]
t_prcs_num_bin_6: PROCESS
BEGIN
	num_bin(6) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_6;
-- num_bin[5]
t_prcs_num_bin_5: PROCESS
BEGIN
	num_bin(5) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_5;
-- num_bin[4]
t_prcs_num_bin_4: PROCESS
BEGIN
	num_bin(4) <= '0';
	WAIT FOR 20000 ps;
	num_bin(4) <= '1';
	WAIT FOR 90000 ps;
	num_bin(4) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_4;
-- num_bin[3]
t_prcs_num_bin_3: PROCESS
BEGIN
	num_bin(3) <= '0';
	WAIT FOR 10000 ps;
	num_bin(3) <= '1';
	WAIT FOR 10000 ps;
	num_bin(3) <= '0';
	WAIT FOR 80000 ps;
	num_bin(3) <= '1';
	WAIT FOR 10000 ps;
	num_bin(3) <= '0';
	WAIT FOR 260000 ps;
	num_bin(3) <= '1';
	WAIT FOR 50000 ps;
	num_bin(3) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_3;
-- num_bin[2]
t_prcs_num_bin_2: PROCESS
BEGIN
	num_bin(2) <= '0';
	WAIT FOR 10000 ps;
	num_bin(2) <= '1';
	WAIT FOR 10000 ps;
	num_bin(2) <= '0';
	WAIT FOR 40000 ps;
	num_bin(2) <= '1';
	WAIT FOR 40000 ps;
	num_bin(2) <= '0';
	WAIT FOR 230000 ps;
	num_bin(2) <= '1';
	WAIT FOR 40000 ps;
	num_bin(2) <= '0';
	WAIT FOR 40000 ps;
	num_bin(2) <= '1';
	WAIT FOR 10000 ps;
	num_bin(2) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_2;
-- num_bin[1]
t_prcs_num_bin_1: PROCESS
BEGIN
	num_bin(1) <= '0';
	WAIT FOR 10000 ps;
	num_bin(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 2
	LOOP
		num_bin(1) <= '0';
		WAIT FOR 20000 ps;
		num_bin(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	num_bin(1) <= '0';
	WAIT FOR 210000 ps;
	num_bin(1) <= '1';
	WAIT FOR 20000 ps;
	num_bin(1) <= '0';
	WAIT FOR 20000 ps;
	num_bin(1) <= '1';
	WAIT FOR 20000 ps;
	num_bin(1) <= '0';
	WAIT FOR 20000 ps;
	num_bin(1) <= '1';
	WAIT FOR 20000 ps;
	num_bin(1) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_1;
-- num_bin[0]
t_prcs_num_bin_0: PROCESS
BEGIN
	num_bin(0) <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 4
	LOOP
		num_bin(0) <= '1';
		WAIT FOR 10000 ps;
		num_bin(0) <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	num_bin(0) <= '1';
	WAIT FOR 10000 ps;
	num_bin(0) <= '0';
	WAIT FOR 200000 ps;
	FOR i IN 1 TO 5
	LOOP
		num_bin(0) <= '1';
		WAIT FOR 10000 ps;
		num_bin(0) <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	num_bin(0) <= '1';
	WAIT FOR 10000 ps;
	num_bin(0) <= '0';
WAIT;
END PROCESS t_prcs_num_bin_0;
END BinToBCD_arch;
