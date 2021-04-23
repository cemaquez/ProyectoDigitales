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

-- DATE "04/23/2021 17:05:15"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
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

ENTITY 	ProyectoDigitales IS
    PORT (
	fin : OUT std_logic;
	resetn : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	enter : IN std_logic;
	D03 : OUT std_logic;
	Digito : IN std_logic_vector(3 DOWNTO 0);
	D02 : OUT std_logic;
	D01 : OUT std_logic;
	D00 : OUT std_logic;
	D13 : OUT std_logic;
	D12 : OUT std_logic;
	D11 : OUT std_logic;
	D10 : OUT std_logic;
	D23 : OUT std_logic;
	D22 : OUT std_logic;
	D21 : OUT std_logic;
	D20 : OUT std_logic;
	est : OUT std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END ProyectoDigitales;

-- Design Ports Information
-- fin	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D03	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D02	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D01	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D00	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D13	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D10	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D23	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D22	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D21	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D20	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[1]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[3]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[2]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProyectoDigitales IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_D03 : std_logic;
SIGNAL ww_Digito : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D02 : std_logic;
SIGNAL ww_D01 : std_logic;
SIGNAL ww_D00 : std_logic;
SIGNAL ww_D13 : std_logic;
SIGNAL ww_D12 : std_logic;
SIGNAL ww_D11 : std_logic;
SIGNAL ww_D10 : std_logic;
SIGNAL ww_D23 : std_logic;
SIGNAL ww_D22 : std_logic;
SIGNAL ww_D21 : std_logic;
SIGNAL ww_D20 : std_logic;
SIGNAL ww_est : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \inst1|y~17_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \inst1|y.s12~q\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|y.s0~q\ : std_logic;
SIGNAL \inst1|y~24_combout\ : std_logic;
SIGNAL \inst1|y.s1~q\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|y.s2~q\ : std_logic;
SIGNAL \inst1|y~23_combout\ : std_logic;
SIGNAL \inst1|y.s3~q\ : std_logic;
SIGNAL \inst1|y~20_combout\ : std_logic;
SIGNAL \inst1|y.s4~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|y.s5~q\ : std_logic;
SIGNAL \inst1|y~22_combout\ : std_logic;
SIGNAL \inst1|y.s6~q\ : std_logic;
SIGNAL \inst1|y~21_combout\ : std_logic;
SIGNAL \inst1|y.s7~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|y.s8~q\ : std_logic;
SIGNAL \inst1|y~19_combout\ : std_logic;
SIGNAL \inst1|y.s9~q\ : std_logic;
SIGNAL \inst1|y~18_combout\ : std_logic;
SIGNAL \inst1|y.s10~q\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|y.s11~q\ : std_logic;
SIGNAL \inst1|WideOr5~0_combout\ : std_logic;
SIGNAL \Digito[3]~input_o\ : std_logic;
SIGNAL \inst7|q[3]~feeder_combout\ : std_logic;
SIGNAL \Digito[2]~input_o\ : std_logic;
SIGNAL \inst7|q[2]~feeder_combout\ : std_logic;
SIGNAL \Digito[1]~input_o\ : std_logic;
SIGNAL \Digito[0]~input_o\ : std_logic;
SIGNAL \inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|q[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|q[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|WideOr5~combout\ : std_logic;
SIGNAL \inst1|WideOr6~combout\ : std_logic;
SIGNAL \inst1|WideOr7~0_combout\ : std_logic;
SIGNAL \inst1|WideOr7~combout\ : std_logic;
SIGNAL \inst1|WideOr8~combout\ : std_logic;
SIGNAL \inst3|Q[3]~0_combout\ : std_logic;
SIGNAL \inst6|Q[3]~0_combout\ : std_logic;
SIGNAL \inst3|Q[2]~1_combout\ : std_logic;
SIGNAL \inst6|Q[2]~1_combout\ : std_logic;
SIGNAL \inst10|z~1_combout\ : std_logic;
SIGNAL \inst10|z~2_combout\ : std_logic;
SIGNAL \inst3|Q[1]~3_combout\ : std_logic;
SIGNAL \inst11|z~1_combout\ : std_logic;
SIGNAL \inst11|z~2_combout\ : std_logic;
SIGNAL \inst6|Q[1]~3_combout\ : std_logic;
SIGNAL \inst10|z~0_combout\ : std_logic;
SIGNAL \inst3|Q[0]~2_combout\ : std_logic;
SIGNAL \inst11|z~0_combout\ : std_logic;
SIGNAL \inst6|Q[0]~2_combout\ : std_logic;
SIGNAL \inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|ALT_INV_z~2_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_z~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_z~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Q[0]~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_z~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_z~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Q[2]~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Q[3]~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_z~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s6~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s5~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s7~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s4~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s9~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s8~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s10~q\ : std_logic;
SIGNAL \inst9|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s12~q\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s11~q\ : std_logic;
SIGNAL \ALT_INV_enter~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_Q[1]~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_y.s0~q\ : std_logic;

BEGIN

fin <= ww_fin;
ww_resetn <= resetn;
ww_clk <= clk;
ww_start <= start;
ww_enter <= enter;
D03 <= ww_D03;
ww_Digito <= Digito;
D02 <= ww_D02;
D01 <= ww_D01;
D00 <= ww_D00;
D13 <= ww_D13;
D12 <= ww_D12;
D11 <= ww_D11;
D10 <= ww_D10;
D23 <= ww_D23;
D22 <= ww_D22;
D21 <= ww_D21;
D20 <= ww_D20;
est <= ww_est;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst11|ALT_INV_z~2_combout\ <= NOT \inst11|z~2_combout\;
\inst11|ALT_INV_z~1_combout\ <= NOT \inst11|z~1_combout\;
\inst11|ALT_INV_z~0_combout\ <= NOT \inst11|z~0_combout\;
\inst3|ALT_INV_Q[0]~2_combout\ <= NOT \inst3|Q[0]~2_combout\;
\inst10|ALT_INV_z~2_combout\ <= NOT \inst10|z~2_combout\;
\inst10|ALT_INV_z~1_combout\ <= NOT \inst10|z~1_combout\;
\inst3|ALT_INV_Q[2]~1_combout\ <= NOT \inst3|Q[2]~1_combout\;
\inst3|ALT_INV_Q[3]~0_combout\ <= NOT \inst3|Q[3]~0_combout\;
\inst10|ALT_INV_z~0_combout\ <= NOT \inst10|z~0_combout\;
\inst1|ALT_INV_y.s1~q\ <= NOT \inst1|y.s1~q\;
\inst1|ALT_INV_WideOr7~0_combout\ <= NOT \inst1|WideOr7~0_combout\;
\inst1|ALT_INV_y.s3~q\ <= NOT \inst1|y.s3~q\;
\inst1|ALT_INV_y.s2~q\ <= NOT \inst1|y.s2~q\;
\inst1|ALT_INV_y.s6~q\ <= NOT \inst1|y.s6~q\;
\inst1|ALT_INV_y.s5~q\ <= NOT \inst1|y.s5~q\;
\inst1|ALT_INV_y.s7~q\ <= NOT \inst1|y.s7~q\;
\inst1|ALT_INV_y.s4~q\ <= NOT \inst1|y.s4~q\;
\inst1|ALT_INV_y.s9~q\ <= NOT \inst1|y.s9~q\;
\inst1|ALT_INV_y.s8~q\ <= NOT \inst1|y.s8~q\;
\inst1|ALT_INV_y.s10~q\ <= NOT \inst1|y.s10~q\;
\inst9|ALT_INV_q\(0) <= NOT \inst9|q\(0);
\inst9|ALT_INV_q\(1) <= NOT \inst9|q\(1);
\inst9|ALT_INV_q\(2) <= NOT \inst9|q\(2);
\inst9|ALT_INV_q\(3) <= NOT \inst9|q\(3);
\inst8|ALT_INV_q\(0) <= NOT \inst8|q\(0);
\inst8|ALT_INV_q\(1) <= NOT \inst8|q\(1);
\inst8|ALT_INV_q\(2) <= NOT \inst8|q\(2);
\inst8|ALT_INV_q\(3) <= NOT \inst8|q\(3);
\inst7|ALT_INV_q\(0) <= NOT \inst7|q\(0);
\inst7|ALT_INV_q\(1) <= NOT \inst7|q\(1);
\inst7|ALT_INV_q\(2) <= NOT \inst7|q\(2);
\inst7|ALT_INV_q\(3) <= NOT \inst7|q\(3);
\inst1|ALT_INV_WideOr5~0_combout\ <= NOT \inst1|WideOr5~0_combout\;
\inst1|ALT_INV_y.s12~q\ <= NOT \inst1|y.s12~q\;
\inst1|ALT_INV_y.s11~q\ <= NOT \inst1|y.s11~q\;
\ALT_INV_enter~input_o\ <= NOT \enter~input_o\;
\ALT_INV_Digito[0]~input_o\ <= NOT \Digito[0]~input_o\;
\ALT_INV_Digito[2]~input_o\ <= NOT \Digito[2]~input_o\;
\ALT_INV_Digito[3]~input_o\ <= NOT \Digito[3]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\inst3|ALT_INV_Q[1]~3_combout\ <= NOT \inst3|Q[1]~3_combout\;
\inst1|ALT_INV_y.s0~q\ <= NOT \inst1|y.s0~q\;

-- Location: IOOBUF_X89_Y4_N45
\fin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_fin);

-- Location: IOOBUF_X78_Y0_N2
\D03~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|q\(3),
	devoe => ww_devoe,
	o => ww_D03);

-- Location: IOOBUF_X78_Y0_N36
\D02~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|q\(2),
	devoe => ww_devoe,
	o => ww_D02);

-- Location: IOOBUF_X84_Y0_N2
\D01~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|q\(1),
	devoe => ww_devoe,
	o => ww_D01);

-- Location: IOOBUF_X89_Y6_N56
\D00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|q\(0),
	devoe => ww_devoe,
	o => ww_D00);

-- Location: IOOBUF_X86_Y0_N2
\D13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|q\(3),
	devoe => ww_devoe,
	o => ww_D13);

-- Location: IOOBUF_X86_Y0_N36
\D12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|q\(2),
	devoe => ww_devoe,
	o => ww_D12);

-- Location: IOOBUF_X89_Y4_N79
\D11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|q\(1),
	devoe => ww_devoe,
	o => ww_D11);

-- Location: IOOBUF_X82_Y0_N59
\D10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|q\(0),
	devoe => ww_devoe,
	o => ww_D10);

-- Location: IOOBUF_X86_Y0_N53
\D23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|q\(3),
	devoe => ww_devoe,
	o => ww_D23);

-- Location: IOOBUF_X89_Y4_N96
\D22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|q\(2),
	devoe => ww_devoe,
	o => ww_D22);

-- Location: IOOBUF_X76_Y0_N53
\D21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|q\(1),
	devoe => ww_devoe,
	o => ww_D21);

-- Location: IOOBUF_X78_Y0_N19
\D20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|q\(0),
	devoe => ww_devoe,
	o => ww_D20);

-- Location: IOOBUF_X89_Y6_N22
\est[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_est(3));

-- Location: IOOBUF_X88_Y0_N54
\est[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_est(2));

-- Location: IOOBUF_X88_Y0_N37
\est[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_est(1));

-- Location: IOOBUF_X89_Y4_N62
\est[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_est(0));

-- Location: IOOBUF_X89_Y6_N39
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X78_Y0_N53
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X76_Y0_N19
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X76_Y0_N2
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Q[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: IOIBUF_X84_Y0_N18
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\enter~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LABCELL_X85_Y2_N30
\inst1|y~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~17_combout\ = ( \inst1|y.s11~q\ & ( \start~input_o\ ) ) # ( !\inst1|y.s11~q\ & ( (\start~input_o\ & \inst1|y.s12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datad => \inst1|ALT_INV_y.s12~q\,
	dataf => \inst1|ALT_INV_y.s11~q\,
	combout => \inst1|y~17_combout\);

-- Location: IOIBUF_X80_Y0_N35
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X85_Y2_N32
\inst1|y.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~17_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s12~q\);

-- Location: MLABCELL_X84_Y2_N36
\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ( \inst1|y.s12~q\ & ( \start~input_o\ ) ) # ( !\inst1|y.s12~q\ & ( (\inst1|y.s0~q\) # (\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datad => \inst1|ALT_INV_y.s0~q\,
	dataf => \inst1|ALT_INV_y.s12~q\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X84_Y2_N38
\inst1|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s0~q\);

-- Location: LABCELL_X85_Y2_N36
\inst1|y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~24_combout\ = ( \inst1|y.s0~q\ & ( (\start~input_o\ & \inst1|y.s1~q\) ) ) # ( !\inst1|y.s0~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datad => \inst1|ALT_INV_y.s1~q\,
	dataf => \inst1|ALT_INV_y.s0~q\,
	combout => \inst1|y~24_combout\);

-- Location: FF_X85_Y2_N38
\inst1|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s1~q\);

-- Location: LABCELL_X85_Y2_N39
\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ( \inst1|y.s1~q\ & ( (!\start~input_o\) # ((!\enter~input_o\ & \inst1|y.s2~q\)) ) ) # ( !\inst1|y.s1~q\ & ( (!\enter~input_o\ & \inst1|y.s2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s2~q\,
	dataf => \inst1|ALT_INV_y.s1~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X85_Y2_N41
\inst1|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s2~q\);

-- Location: LABCELL_X85_Y2_N24
\inst1|y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~23_combout\ = ( \inst1|y.s2~q\ & ( \enter~input_o\ ) ) # ( !\inst1|y.s2~q\ & ( (\enter~input_o\ & \inst1|y.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s3~q\,
	dataf => \inst1|ALT_INV_y.s2~q\,
	combout => \inst1|y~23_combout\);

-- Location: FF_X85_Y2_N26
\inst1|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s3~q\);

-- Location: MLABCELL_X84_Y2_N21
\inst1|y~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~20_combout\ = ( \inst1|y.s3~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	dataf => \inst1|ALT_INV_y.s3~q\,
	combout => \inst1|y~20_combout\);

-- Location: FF_X84_Y2_N23
\inst1|y.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~20_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s4~q\);

-- Location: LABCELL_X85_Y2_N3
\inst1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ( \inst1|y.s4~q\ ) # ( !\inst1|y.s4~q\ & ( (!\enter~input_o\ & \inst1|y.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s5~q\,
	dataf => \inst1|ALT_INV_y.s4~q\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X85_Y2_N5
\inst1|y.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s5~q\);

-- Location: LABCELL_X85_Y2_N45
\inst1|y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~22_combout\ = ( \inst1|y.s5~q\ & ( \enter~input_o\ ) ) # ( !\inst1|y.s5~q\ & ( (\enter~input_o\ & \inst1|y.s6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s6~q\,
	dataf => \inst1|ALT_INV_y.s5~q\,
	combout => \inst1|y~22_combout\);

-- Location: FF_X85_Y2_N47
\inst1|y.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s6~q\);

-- Location: LABCELL_X85_Y2_N54
\inst1|y~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~21_combout\ = ( \inst1|y.s6~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enter~input_o\,
	dataf => \inst1|ALT_INV_y.s6~q\,
	combout => \inst1|y~21_combout\);

-- Location: FF_X85_Y2_N56
\inst1|y.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~21_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s7~q\);

-- Location: LABCELL_X85_Y2_N15
\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( \inst1|y.s7~q\ ) # ( !\inst1|y.s7~q\ & ( (!\enter~input_o\ & \inst1|y.s8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s8~q\,
	dataf => \inst1|ALT_INV_y.s7~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X85_Y2_N17
\inst1|y.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s8~q\);

-- Location: LABCELL_X85_Y2_N6
\inst1|y~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~19_combout\ = ( \inst1|y.s8~q\ & ( \enter~input_o\ ) ) # ( !\inst1|y.s8~q\ & ( (\enter~input_o\ & \inst1|y.s9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst1|ALT_INV_y.s9~q\,
	dataf => \inst1|ALT_INV_y.s8~q\,
	combout => \inst1|y~19_combout\);

-- Location: FF_X85_Y2_N8
\inst1|y.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~19_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s9~q\);

-- Location: LABCELL_X83_Y2_N54
\inst1|y~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|y~18_combout\ = ( \inst1|y.s9~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enter~input_o\,
	dataf => \inst1|ALT_INV_y.s9~q\,
	combout => \inst1|y~18_combout\);

-- Location: FF_X83_Y2_N56
\inst1|y.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|y~18_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s10~q\);

-- Location: MLABCELL_X84_Y2_N6
\inst1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = ( \inst1|y.s11~q\ & ( \inst1|y.s10~q\ ) ) # ( !\inst1|y.s11~q\ & ( \inst1|y.s10~q\ ) ) # ( \inst1|y.s11~q\ & ( !\inst1|y.s10~q\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datae => \inst1|ALT_INV_y.s11~q\,
	dataf => \inst1|ALT_INV_y.s10~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X84_Y2_N8
\inst1|y.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|y.s11~q\);

-- Location: MLABCELL_X84_Y2_N51
\inst1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr5~0_combout\ = ( !\inst1|y.s12~q\ & ( !\inst1|y.s11~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_y.s11~q\,
	dataf => \inst1|ALT_INV_y.s12~q\,
	combout => \inst1|WideOr5~0_combout\);

-- Location: IOIBUF_X84_Y0_N52
\Digito[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(3),
	o => \Digito[3]~input_o\);

-- Location: MLABCELL_X84_Y2_N42
\inst7|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|q[3]~feeder_combout\ = ( \Digito[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[3]~input_o\,
	combout => \inst7|q[3]~feeder_combout\);

-- Location: FF_X84_Y2_N44
\inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|q[3]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|q\(3));

-- Location: IOIBUF_X82_Y0_N41
\Digito[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(2),
	o => \Digito[2]~input_o\);

-- Location: MLABCELL_X84_Y2_N45
\inst7|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|q[2]~feeder_combout\ = ( \Digito[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[2]~input_o\,
	combout => \inst7|q[2]~feeder_combout\);

-- Location: FF_X84_Y2_N47
\inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|q[2]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|q\(2));

-- Location: IOIBUF_X86_Y0_N18
\Digito[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(1),
	o => \Digito[1]~input_o\);

-- Location: FF_X84_Y2_N56
\inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|q\(1));

-- Location: IOIBUF_X82_Y0_N75
\Digito[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(0),
	o => \Digito[0]~input_o\);

-- Location: MLABCELL_X84_Y2_N57
\inst7|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|q[0]~feeder_combout\ = ( \Digito[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[0]~input_o\,
	combout => \inst7|q[0]~feeder_combout\);

-- Location: FF_X84_Y2_N59
\inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst7|q[0]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|q\(0));

-- Location: FF_X85_Y2_N50
\inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(3));

-- Location: LABCELL_X85_Y2_N51
\inst8|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|q[2]~feeder_combout\ = ( \Digito[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[2]~input_o\,
	combout => \inst8|q[2]~feeder_combout\);

-- Location: FF_X85_Y2_N53
\inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst8|q[2]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(2));

-- Location: FF_X85_Y2_N20
\inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(1));

-- Location: FF_X85_Y2_N23
\inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[0]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(0));

-- Location: FF_X83_Y2_N38
\inst9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|q\(3));

-- Location: LABCELL_X83_Y2_N39
\inst9|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|q[2]~feeder_combout\ = ( \Digito[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[2]~input_o\,
	combout => \inst9|q[2]~feeder_combout\);

-- Location: FF_X83_Y2_N41
\inst9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst9|q[2]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|q\(2));

-- Location: FF_X83_Y2_N29
\inst9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst1|y.s0~q\,
	sload => VCC,
	ena => \inst1|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|q\(1));

-- Location: LABCELL_X83_Y2_N24
\inst9|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|q[0]~feeder_combout\ = ( \Digito[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[0]~input_o\,
	combout => \inst9|q[0]~feeder_combout\);

-- Location: FF_X83_Y2_N26
\inst9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst9|q[0]~feeder_combout\,
	clrn => \inst1|y.s0~q\,
	ena => \inst1|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|q\(0));

-- Location: LABCELL_X85_Y2_N33
\inst1|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr5~combout\ = ( \inst1|y.s8~q\ ) # ( !\inst1|y.s8~q\ & ( (!\inst1|WideOr5~0_combout\) # ((\inst1|y.s10~q\) # (\inst1|y.s9~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_WideOr5~0_combout\,
	datac => \inst1|ALT_INV_y.s9~q\,
	datad => \inst1|ALT_INV_y.s10~q\,
	dataf => \inst1|ALT_INV_y.s8~q\,
	combout => \inst1|WideOr5~combout\);

-- Location: LABCELL_X85_Y2_N0
\inst1|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr6~combout\ = ( \inst1|y.s12~q\ ) # ( !\inst1|y.s12~q\ & ( (((\inst1|y.s5~q\) # (\inst1|y.s6~q\)) # (\inst1|y.s7~q\)) # (\inst1|y.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_y.s4~q\,
	datab => \inst1|ALT_INV_y.s7~q\,
	datac => \inst1|ALT_INV_y.s6~q\,
	datad => \inst1|ALT_INV_y.s5~q\,
	dataf => \inst1|ALT_INV_y.s12~q\,
	combout => \inst1|WideOr6~combout\);

-- Location: LABCELL_X85_Y2_N12
\inst1|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr7~0_combout\ = ( !\inst1|y.s11~q\ & ( (!\inst1|y.s7~q\ & !\inst1|y.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_y.s7~q\,
	datac => \inst1|ALT_INV_y.s3~q\,
	dataf => \inst1|ALT_INV_y.s11~q\,
	combout => \inst1|WideOr7~0_combout\);

-- Location: LABCELL_X85_Y2_N42
\inst1|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr7~combout\ = ( \inst1|y.s2~q\ ) # ( !\inst1|y.s2~q\ & ( ((!\inst1|WideOr7~0_combout\) # (\inst1|y.s6~q\)) # (\inst1|y.s10~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_y.s10~q\,
	datab => \inst1|ALT_INV_WideOr7~0_combout\,
	datac => \inst1|ALT_INV_y.s6~q\,
	dataf => \inst1|ALT_INV_y.s2~q\,
	combout => \inst1|WideOr7~combout\);

-- Location: LABCELL_X85_Y2_N9
\inst1|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|WideOr8~combout\ = ( \inst1|y.s1~q\ ) # ( !\inst1|y.s1~q\ & ( ((!\inst1|WideOr7~0_combout\) # (\inst1|y.s9~q\)) # (\inst1|y.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_y.s5~q\,
	datab => \inst1|ALT_INV_WideOr7~0_combout\,
	datac => \inst1|ALT_INV_y.s9~q\,
	dataf => \inst1|ALT_INV_y.s1~q\,
	combout => \inst1|WideOr8~combout\);

-- Location: LABCELL_X85_Y2_N18
\inst3|Q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Q[3]~0_combout\ = ( \inst9|q\(3) & ( \inst8|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_q\(3),
	dataf => \inst9|ALT_INV_q\(3),
	combout => \inst3|Q[3]~0_combout\);

-- Location: MLABCELL_X84_Y2_N12
\inst6|Q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Q[3]~0_combout\ = ( \inst7|q\(3) & ( \inst3|Q[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Q[3]~0_combout\,
	dataf => \inst7|ALT_INV_q\(3),
	combout => \inst6|Q[3]~0_combout\);

-- Location: LABCELL_X85_Y2_N27
\inst3|Q[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Q[2]~1_combout\ = ( \inst8|q\(2) & ( ((\inst9|q\(3) & !\inst8|q\(3))) # (\inst9|q\(2)) ) ) # ( !\inst8|q\(2) & ( (!\inst9|q\(3) & (\inst9|q\(2) & \inst8|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_q\(3),
	datac => \inst9|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	dataf => \inst8|ALT_INV_q\(2),
	combout => \inst3|Q[2]~1_combout\);

-- Location: MLABCELL_X84_Y2_N27
\inst6|Q[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Q[2]~1_combout\ = ( \inst7|q\(2) & ( \inst7|q\(3) & ( \inst3|Q[2]~1_combout\ ) ) ) # ( !\inst7|q\(2) & ( \inst7|q\(3) & ( (\inst3|Q[2]~1_combout\ & !\inst3|Q[3]~0_combout\) ) ) ) # ( \inst7|q\(2) & ( !\inst7|q\(3) & ( (\inst3|Q[3]~0_combout\) # 
-- (\inst3|Q[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111101010000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Q[2]~1_combout\,
	datac => \inst3|ALT_INV_Q[3]~0_combout\,
	datae => \inst7|ALT_INV_q\(2),
	dataf => \inst7|ALT_INV_q\(3),
	combout => \inst6|Q[2]~1_combout\);

-- Location: LABCELL_X83_Y2_N3
\inst10|z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|z~1_combout\ = ( \inst9|q\(3) & ( \inst8|q\(3) & ( !\inst8|q\(2) $ (\inst9|q\(2)) ) ) ) # ( !\inst9|q\(3) & ( !\inst8|q\(3) & ( !\inst8|q\(2) $ (\inst9|q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001000000000000000000000000000000001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(2),
	datab => \inst9|ALT_INV_q\(2),
	datae => \inst9|ALT_INV_q\(3),
	dataf => \inst8|ALT_INV_q\(3),
	combout => \inst10|z~1_combout\);

-- Location: LABCELL_X83_Y2_N30
\inst10|z~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|z~2_combout\ = ( \inst8|q\(2) & ( (!\inst9|q\(2) & ((!\inst9|q\(3)) # (\inst8|q\(3)))) # (\inst9|q\(2) & (\inst8|q\(3) & !\inst9|q\(3))) ) ) # ( !\inst8|q\(2) & ( (\inst8|q\(3) & !\inst9|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_q\(2),
	datac => \inst8|ALT_INV_q\(3),
	datad => \inst9|ALT_INV_q\(3),
	dataf => \inst8|ALT_INV_q\(2),
	combout => \inst10|z~2_combout\);

-- Location: LABCELL_X83_Y2_N33
\inst3|Q[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Q[1]~3_combout\ = ( \inst10|z~2_combout\ & ( \inst9|q\(1) ) ) # ( !\inst10|z~2_combout\ & ( (\inst8|q\(1) & ((!\inst10|z~1_combout\) # (\inst9|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_z~1_combout\,
	datac => \inst8|ALT_INV_q\(1),
	datad => \inst9|ALT_INV_q\(1),
	dataf => \inst10|ALT_INV_z~2_combout\,
	combout => \inst3|Q[1]~3_combout\);

-- Location: MLABCELL_X84_Y2_N0
\inst11|z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|z~1_combout\ = ( \inst7|q\(2) & ( \inst7|q\(3) & ( (\inst3|Q[2]~1_combout\ & \inst3|Q[3]~0_combout\) ) ) ) # ( !\inst7|q\(2) & ( \inst7|q\(3) & ( (!\inst3|Q[2]~1_combout\ & \inst3|Q[3]~0_combout\) ) ) ) # ( \inst7|q\(2) & ( !\inst7|q\(3) & ( 
-- (\inst3|Q[2]~1_combout\ & !\inst3|Q[3]~0_combout\) ) ) ) # ( !\inst7|q\(2) & ( !\inst7|q\(3) & ( (!\inst3|Q[2]~1_combout\ & !\inst3|Q[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000010001000100010000100010001000100001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Q[2]~1_combout\,
	datab => \inst3|ALT_INV_Q[3]~0_combout\,
	datae => \inst7|ALT_INV_q\(2),
	dataf => \inst7|ALT_INV_q\(3),
	combout => \inst11|z~1_combout\);

-- Location: MLABCELL_X84_Y2_N18
\inst11|z~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|z~2_combout\ = (!\inst7|q\(3) & (((\inst3|Q[2]~1_combout\ & !\inst7|q\(2))) # (\inst3|Q[3]~0_combout\))) # (\inst7|q\(3) & (\inst3|Q[3]~0_combout\ & (\inst3|Q[2]~1_combout\ & !\inst7|q\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100100010001010110010001000101011001000100010101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_q\(3),
	datab => \inst3|ALT_INV_Q[3]~0_combout\,
	datac => \inst3|ALT_INV_Q[2]~1_combout\,
	datad => \inst7|ALT_INV_q\(2),
	combout => \inst11|z~2_combout\);

-- Location: LABCELL_X83_Y2_N51
\inst6|Q[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Q[1]~3_combout\ = ( \inst11|z~1_combout\ & ( \inst11|z~2_combout\ & ( \inst7|q\(1) ) ) ) # ( !\inst11|z~1_combout\ & ( \inst11|z~2_combout\ & ( \inst7|q\(1) ) ) ) # ( \inst11|z~1_combout\ & ( !\inst11|z~2_combout\ & ( (\inst3|Q[1]~3_combout\ & 
-- \inst7|q\(1)) ) ) ) # ( !\inst11|z~1_combout\ & ( !\inst11|z~2_combout\ & ( \inst3|Q[1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Q[1]~3_combout\,
	datac => \inst7|ALT_INV_q\(1),
	datae => \inst11|ALT_INV_z~1_combout\,
	dataf => \inst11|ALT_INV_z~2_combout\,
	combout => \inst6|Q[1]~3_combout\);

-- Location: LABCELL_X83_Y2_N42
\inst10|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|z~0_combout\ = ( \inst8|q\(1) & ( (\inst9|q\(0) & (\inst9|q\(1) & !\inst8|q\(0))) ) ) # ( !\inst8|q\(1) & ( ((\inst9|q\(0) & !\inst8|q\(0))) # (\inst9|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_q\(0),
	datac => \inst9|ALT_INV_q\(1),
	datad => \inst8|ALT_INV_q\(0),
	dataf => \inst8|ALT_INV_q\(1),
	combout => \inst10|z~0_combout\);

-- Location: LABCELL_X83_Y2_N45
\inst3|Q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Q[0]~2_combout\ = ( \inst10|z~2_combout\ & ( \inst9|q\(0) ) ) # ( !\inst10|z~2_combout\ & ( (!\inst10|z~0_combout\ & ((!\inst10|z~1_combout\ & (\inst8|q\(0))) # (\inst10|z~1_combout\ & ((\inst9|q\(0)))))) # (\inst10|z~0_combout\ & (\inst8|q\(0))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110101010101010011010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst9|ALT_INV_q\(0),
	datac => \inst10|ALT_INV_z~0_combout\,
	datad => \inst10|ALT_INV_z~1_combout\,
	dataf => \inst10|ALT_INV_z~2_combout\,
	combout => \inst3|Q[0]~2_combout\);

-- Location: MLABCELL_X84_Y2_N39
\inst11|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|z~0_combout\ = ( \inst3|Q[0]~2_combout\ & ( (!\inst3|Q[1]~3_combout\ & \inst7|q\(1)) ) ) # ( !\inst3|Q[0]~2_combout\ & ( (!\inst3|Q[1]~3_combout\ & ((\inst7|q\(1)) # (\inst7|q\(0)))) # (\inst3|Q[1]~3_combout\ & (\inst7|q\(0) & \inst7|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Q[1]~3_combout\,
	datac => \inst7|ALT_INV_q\(0),
	datad => \inst7|ALT_INV_q\(1),
	dataf => \inst3|ALT_INV_Q[0]~2_combout\,
	combout => \inst11|z~0_combout\);

-- Location: MLABCELL_X84_Y2_N30
\inst6|Q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Q[0]~2_combout\ = ( \inst11|z~1_combout\ & ( \inst11|z~2_combout\ & ( \inst7|q\(0) ) ) ) # ( !\inst11|z~1_combout\ & ( \inst11|z~2_combout\ & ( \inst7|q\(0) ) ) ) # ( \inst11|z~1_combout\ & ( !\inst11|z~2_combout\ & ( (!\inst11|z~0_combout\ & 
-- ((\inst7|q\(0)))) # (\inst11|z~0_combout\ & (\inst3|Q[0]~2_combout\)) ) ) ) # ( !\inst11|z~1_combout\ & ( !\inst11|z~2_combout\ & ( \inst3|Q[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100011101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Q[0]~2_combout\,
	datab => \inst11|ALT_INV_z~0_combout\,
	datad => \inst7|ALT_INV_q\(0),
	datae => \inst11|ALT_INV_z~1_combout\,
	dataf => \inst11|ALT_INV_z~2_combout\,
	combout => \inst6|Q[0]~2_combout\);

-- Location: MLABCELL_X3_Y8_N0
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


