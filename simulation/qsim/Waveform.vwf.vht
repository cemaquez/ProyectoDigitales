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
-- Generated on "04/23/2021 17:05:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProyectoDigitales
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProyectoDigitales_vhd_vec_tst IS
END ProyectoDigitales_vhd_vec_tst;
ARCHITECTURE ProyectoDigitales_arch OF ProyectoDigitales_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL D00 : STD_LOGIC;
SIGNAL D01 : STD_LOGIC;
SIGNAL D02 : STD_LOGIC;
SIGNAL D03 : STD_LOGIC;
SIGNAL D10 : STD_LOGIC;
SIGNAL D11 : STD_LOGIC;
SIGNAL D12 : STD_LOGIC;
SIGNAL D13 : STD_LOGIC;
SIGNAL D20 : STD_LOGIC;
SIGNAL D21 : STD_LOGIC;
SIGNAL D22 : STD_LOGIC;
SIGNAL D23 : STD_LOGIC;
SIGNAL Digito : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enter : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT ProyectoDigitales
	PORT (
	clk : IN STD_LOGIC;
	D00 : OUT STD_LOGIC;
	D01 : OUT STD_LOGIC;
	D02 : OUT STD_LOGIC;
	D03 : OUT STD_LOGIC;
	D10 : OUT STD_LOGIC;
	D11 : OUT STD_LOGIC;
	D12 : OUT STD_LOGIC;
	D13 : OUT STD_LOGIC;
	D20 : OUT STD_LOGIC;
	D21 : OUT STD_LOGIC;
	D22 : OUT STD_LOGIC;
	D23 : OUT STD_LOGIC;
	Digito : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enter : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fin : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ProyectoDigitales
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	D00 => D00,
	D01 => D01,
	D02 => D02,
	D03 => D03,
	D10 => D10,
	D11 => D11,
	D12 => D12,
	D13 => D13,
	D20 => D20,
	D21 => D21,
	D22 => D22,
	D23 => D23,
	Digito => Digito,
	enter => enter,
	est => est,
	fin => fin,
	Q => Q,
	resetn => resetn,
	start => start
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 70000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 210000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 160000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 120000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 50000 ps;
	enter <= '1';
	WAIT FOR 10000 ps;
	enter <= '0';
	WAIT FOR 40000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 120000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 30000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 30000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;
-- Digito[3]
t_prcs_Digito_3: PROCESS
BEGIN
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 40000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 20000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 20000 ps;
	Digito(3) <= '1';
	WAIT FOR 20000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
	WAIT FOR 20000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 70000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 10000 ps;
	Digito(3) <= '1';
	WAIT FOR 40000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 40000 ps;
	Digito(3) <= '1';
	WAIT FOR 10000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
WAIT;
END PROCESS t_prcs_Digito_3;
-- Digito[2]
t_prcs_Digito_2: PROCESS
BEGIN
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 20000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 40000 ps;
	Digito(2) <= '1';
	WAIT FOR 40000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 20000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 40000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 60000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 20000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 40000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 70000 ps;
	Digito(2) <= '1';
	WAIT FOR 20000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 20000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 10000 ps;
	Digito(2) <= '0';
	WAIT FOR 10000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
WAIT;
END PROCESS t_prcs_Digito_2;
-- Digito[1]
t_prcs_Digito_1: PROCESS
BEGIN
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 50000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 50000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 60000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 40000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 40000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 40000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 20000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 10000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 20000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
	WAIT FOR 30000 ps;
	Digito(1) <= '0';
	WAIT FOR 10000 ps;
	Digito(1) <= '1';
WAIT;
END PROCESS t_prcs_Digito_1;
-- Digito[0]
t_prcs_Digito_0: PROCESS
BEGIN
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 40000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 50000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 50000 ps;
	Digito(0) <= '0';
	WAIT FOR 40000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
	WAIT FOR 20000 ps;
	Digito(0) <= '0';
	WAIT FOR 20000 ps;
	Digito(0) <= '1';
	WAIT FOR 10000 ps;
	Digito(0) <= '0';
	WAIT FOR 10000 ps;
	Digito(0) <= '1';
WAIT;
END PROCESS t_prcs_Digito_0;
END ProyectoDigitales_arch;
