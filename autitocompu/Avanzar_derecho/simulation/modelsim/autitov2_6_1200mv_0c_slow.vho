-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/05/2024 02:26:36"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	avanzar IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	SENSOR_D : IN std_logic_vector(11 DOWNTO 0);
	SENSOR_I : IN std_logic_vector(11 DOWNTO 0);
	SALIDA_I : OUT std_logic_vector(2 DOWNTO 0);
	SALIDA_D : OUT std_logic_vector(2 DOWNTO 0)
	);
END avanzar;

-- Design Ports Information
-- SALIDA_I[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_I[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_I[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_D[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_D[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA_D[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[10]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[11]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_I[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_D[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF avanzar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_SENSOR_D : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SENSOR_I : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SALIDA_I : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SALIDA_D : std_logic_vector(2 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \SENSOR_I[1]~input_o\ : std_logic;
SIGNAL \SENSOR_I[5]~input_o\ : std_logic;
SIGNAL \SENSOR_I[6]~input_o\ : std_logic;
SIGNAL \SENSOR_I[7]~input_o\ : std_logic;
SIGNAL \SENSOR_I[9]~input_o\ : std_logic;
SIGNAL \SENSOR_D[4]~input_o\ : std_logic;
SIGNAL \SENSOR_D[5]~input_o\ : std_logic;
SIGNAL \SENSOR_D[6]~input_o\ : std_logic;
SIGNAL \SENSOR_D[7]~input_o\ : std_logic;
SIGNAL \SENSOR_D[11]~input_o\ : std_logic;
SIGNAL \SENSOR_D[0]~input_o\ : std_logic;
SIGNAL \SALIDA_I[0]~output_o\ : std_logic;
SIGNAL \SALIDA_I[1]~output_o\ : std_logic;
SIGNAL \SALIDA_I[2]~output_o\ : std_logic;
SIGNAL \SALIDA_D[0]~output_o\ : std_logic;
SIGNAL \SALIDA_D[1]~output_o\ : std_logic;
SIGNAL \SALIDA_D[2]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \SENSOR_I[11]~input_o\ : std_logic;
SIGNAL \SENSOR_I[10]~input_o\ : std_logic;
SIGNAL \SENSOR_I[8]~input_o\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \SENSOR_I[4]~input_o\ : std_logic;
SIGNAL \SENSOR_I[2]~input_o\ : std_logic;
SIGNAL \SENSOR_I[3]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \SENSOR_I[0]~input_o\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.CORRECION_I~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \SENSOR_D[8]~input_o\ : std_logic;
SIGNAL \SENSOR_D[9]~input_o\ : std_logic;
SIGNAL \SENSOR_D[10]~input_o\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \SENSOR_D[2]~input_o\ : std_logic;
SIGNAL \SENSOR_D[3]~input_o\ : std_logic;
SIGNAL \SENSOR_D[1]~input_o\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.CORRECCION_D~q\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \state.Avanzar~q\ : std_logic;
SIGNAL \SALIDA_I~0_combout\ : std_logic;
SIGNAL \SALIDA_I[0]~reg0_q\ : std_logic;
SIGNAL \SALIDA_D~0_combout\ : std_logic;
SIGNAL \SALIDA_D[0]~reg0_q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_SENSOR_D <= SENSOR_D;
ww_SENSOR_I <= SENSOR_I;
SALIDA_I <= ww_SALIDA_I;
SALIDA_D <= ww_SALIDA_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: LCCOMB_X6_Y1_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\SENSOR_I[9]~input_o\ & (\SENSOR_I[5]~input_o\ & (\SENSOR_I[7]~input_o\ & \SENSOR_I[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_I[9]~input_o\,
	datab => \SENSOR_I[5]~input_o\,
	datac => \SENSOR_I[7]~input_o\,
	datad => \SENSOR_I[6]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y1_N4
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\SENSOR_D[6]~input_o\ & (\SENSOR_D[9]~input_o\ & (\SENSOR_D[5]~input_o\ & \SENSOR_D[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_D[6]~input_o\,
	datab => \SENSOR_D[9]~input_o\,
	datac => \SENSOR_D[5]~input_o\,
	datad => \SENSOR_D[7]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X18_Y1_N26
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\SENSOR_D[0]~input_o\ & (\SENSOR_D[2]~input_o\ & (\SENSOR_D[3]~input_o\ & \SENSOR_D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_D[0]~input_o\,
	datab => \SENSOR_D[2]~input_o\,
	datac => \SENSOR_D[3]~input_o\,
	datad => \SENSOR_D[1]~input_o\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X18_Y1_N12
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ((\LessThan3~0_combout\ & ((\LessThan3~2_combout\) # (\SENSOR_D[4]~input_o\)))) # (!\LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => \LessThan3~1_combout\,
	datac => \SENSOR_D[4]~input_o\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X18_Y1_N10
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = \LessThan2~3_combout\ $ (!\LessThan3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan2~3_combout\,
	datad => \LessThan3~3_combout\,
	combout => \Selector0~4_combout\);

-- Location: IOIBUF_X14_Y0_N15
\SENSOR_I[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(1),
	o => \SENSOR_I[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\SENSOR_I[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(5),
	o => \SENSOR_I[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\SENSOR_I[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(6),
	o => \SENSOR_I[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\SENSOR_I[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(7),
	o => \SENSOR_I[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\SENSOR_I[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(9),
	o => \SENSOR_I[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\SENSOR_D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(4),
	o => \SENSOR_D[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SENSOR_D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(5),
	o => \SENSOR_D[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\SENSOR_D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(6),
	o => \SENSOR_D[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\SENSOR_D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(7),
	o => \SENSOR_D[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\SENSOR_D[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(11),
	o => \SENSOR_D[11]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SENSOR_D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(0),
	o => \SENSOR_D[0]~input_o\);

-- Location: IOOBUF_X40_Y0_N16
\SALIDA_I[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDA_I[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SALIDA_I[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\SALIDA_I[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SALIDA_I[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\SALIDA_I[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SALIDA_I[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\SALIDA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SALIDA_D[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SALIDA_D[0]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\SALIDA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SALIDA_D[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\SALIDA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SALIDA_D[2]~output_o\);

-- Location: IOIBUF_X27_Y0_N1
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N15
\SENSOR_I[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(11),
	o => \SENSOR_I[11]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\SENSOR_I[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(10),
	o => \SENSOR_I[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\SENSOR_I[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(8),
	o => \SENSOR_I[8]~input_o\);

-- Location: LCCOMB_X6_Y1_N6
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\SENSOR_I[11]~input_o\ & (!\SENSOR_I[10]~input_o\ & ((!\SENSOR_I[8]~input_o\) # (!\SENSOR_I[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_I[9]~input_o\,
	datab => \SENSOR_I[11]~input_o\,
	datac => \SENSOR_I[10]~input_o\,
	datad => \SENSOR_I[8]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: IOIBUF_X14_Y0_N22
\SENSOR_I[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(4),
	o => \SENSOR_I[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\SENSOR_I[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(2),
	o => \SENSOR_I[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\SENSOR_I[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(3),
	o => \SENSOR_I[3]~input_o\);

-- Location: LCCOMB_X18_Y1_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\SENSOR_I[4]~input_o\) # ((\SENSOR_I[1]~input_o\ & (\SENSOR_I[2]~input_o\ & \SENSOR_I[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_I[1]~input_o\,
	datab => \SENSOR_I[4]~input_o\,
	datac => \SENSOR_I[2]~input_o\,
	datad => \SENSOR_I[3]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\SENSOR_I[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_I(0),
	o => \SENSOR_I[0]~input_o\);

-- Location: LCCOMB_X18_Y1_N22
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\SENSOR_I[1]~input_o\ & (\SENSOR_I[0]~input_o\ & (\SENSOR_I[2]~input_o\ & \SENSOR_I[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_I[1]~input_o\,
	datab => \SENSOR_I[0]~input_o\,
	datac => \SENSOR_I[2]~input_o\,
	datad => \SENSOR_I[3]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X18_Y1_N4
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ((\LessThan2~0_combout\ & ((\LessThan2~2_combout\) # (\SENSOR_I[4]~input_o\)))) # (!\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~2_combout\,
	datad => \SENSOR_I[4]~input_o\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X18_Y1_N6
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\LessThan3~3_combout\ & (!\LessThan2~3_combout\ & \state.Avanzar~q\))) # (!\Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \LessThan2~3_combout\,
	datac => \state.Avanzar~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X27_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G17
\reset~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X18_Y1_N7
\state.CORRECION_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CORRECION_I~q\);

-- Location: LCCOMB_X18_Y1_N16
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (((\LessThan2~0_combout\ & \Selector0~0_combout\)) # (!\state.CORRECION_I~q\)) # (!\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \Selector0~0_combout\,
	datad => \state.CORRECION_I~q\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\SENSOR_D[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(8),
	o => \SENSOR_D[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\SENSOR_D[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(9),
	o => \SENSOR_D[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\SENSOR_D[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(10),
	o => \SENSOR_D[10]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\SENSOR_D[11]~input_o\ & (!\SENSOR_D[10]~input_o\ & ((!\SENSOR_D[9]~input_o\) # (!\SENSOR_D[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_D[11]~input_o\,
	datab => \SENSOR_D[8]~input_o\,
	datac => \SENSOR_D[9]~input_o\,
	datad => \SENSOR_D[10]~input_o\,
	combout => \LessThan3~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\SENSOR_D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(2),
	o => \SENSOR_D[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\SENSOR_D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(3),
	o => \SENSOR_D[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\SENSOR_D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_D(1),
	o => \SENSOR_D[1]~input_o\);

-- Location: LCCOMB_X18_Y1_N14
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\SENSOR_D[4]~input_o\) # ((\SENSOR_D[2]~input_o\ & (\SENSOR_D[3]~input_o\ & \SENSOR_D[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_D[4]~input_o\,
	datab => \SENSOR_D[2]~input_o\,
	datac => \SENSOR_D[3]~input_o\,
	datad => \SENSOR_D[1]~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X18_Y1_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((!\LessThan3~3_combout\ & (\LessThan2~3_combout\ & \state.Avanzar~q\))) # (!\Selector0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~3_combout\,
	datab => \LessThan2~3_combout\,
	datac => \state.Avanzar~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X18_Y1_N29
\state.CORRECCION_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CORRECCION_D~q\);

-- Location: LCCOMB_X18_Y1_N0
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (((\LessThan3~0_combout\ & \Selector0~2_combout\)) # (!\state.CORRECCION_D~q\)) # (!\LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \Selector0~2_combout\,
	datad => \state.CORRECCION_D~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X18_Y1_N8
\Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~1_combout\ & (\Selector0~3_combout\ & ((\Selector0~4_combout\) # (!\state.Avanzar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector0~1_combout\,
	datac => \state.Avanzar~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector0~5_combout\);

-- Location: FF_X18_Y1_N9
\state.Avanzar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Avanzar~q\);

-- Location: LCCOMB_X18_Y1_N20
\SALIDA_I~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SALIDA_I~0_combout\ = (\state.Avanzar~q\) # (\state.CORRECION_I~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Avanzar~q\,
	datad => \state.CORRECION_I~q\,
	combout => \SALIDA_I~0_combout\);

-- Location: FF_X18_Y1_N21
\SALIDA_I[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SALIDA_I~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDA_I[0]~reg0_q\);

-- Location: LCCOMB_X18_Y1_N2
\SALIDA_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SALIDA_D~0_combout\ = (\state.Avanzar~q\) # (\state.CORRECCION_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Avanzar~q\,
	datad => \state.CORRECCION_D~q\,
	combout => \SALIDA_D~0_combout\);

-- Location: FF_X18_Y1_N3
\SALIDA_D[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SALIDA_D~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SALIDA_D[0]~reg0_q\);

ww_SALIDA_I(0) <= \SALIDA_I[0]~output_o\;

ww_SALIDA_I(1) <= \SALIDA_I[1]~output_o\;

ww_SALIDA_I(2) <= \SALIDA_I[2]~output_o\;

ww_SALIDA_D(0) <= \SALIDA_D[0]~output_o\;

ww_SALIDA_D(1) <= \SALIDA_D[1]~output_o\;

ww_SALIDA_D(2) <= \SALIDA_D[2]~output_o\;
END structure;


