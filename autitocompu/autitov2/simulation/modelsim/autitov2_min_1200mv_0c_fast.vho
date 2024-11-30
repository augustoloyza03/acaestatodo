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

-- DATE "11/21/2024 17:59:43"

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

ENTITY 	adc_avanzar IS
    PORT (
	ADC_SCLK : OUT std_logic;
	inclk0 : IN std_logic;
	areset : IN std_logic;
	ADC_DOUT : IN std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_DIN : OUT std_logic;
	salida_d : OUT std_logic_vector(2 DOWNTO 0);
	salida_i : OUT std_logic_vector(2 DOWNTO 0)
	);
END adc_avanzar;

-- Design Ports Information
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_d[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_d[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_d[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_i[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_i[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_i[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inclk0	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adc_avanzar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_inclk0 : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_DIN : std_logic;
SIGNAL ww_salida_d : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salida_i : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inclk0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~23\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|state.CORRECCION_D~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan3~0_combout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|state.ocioso~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~5_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~9_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \inclk0~input_o\ : std_logic;
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|go~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|go~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ : std_logic;
SIGNAL \inclk0~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~11_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~8_combout\ : std_logic;
SIGNAL \inst1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~7_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH1~4_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \inst1|LessThan3~2_combout\ : std_logic;
SIGNAL \inst1|LessThan3~3_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|state.Avanzar~q\ : std_logic;
SIGNAL \inst1|SALIDA_D~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|state.CORRECION_I~q\ : std_logic;
SIGNAL \inst1|SALIDA_I~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|SALIDA_I\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|SALIDA_D\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|CH1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|b2v_inst|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_areset~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ : std_logic;

BEGIN

ADC_SCLK <= ww_ADC_SCLK;
ww_inclk0 <= inclk0;
ww_areset <= areset;
ww_ADC_DOUT <= ADC_DOUT;
ADC_CS_N <= ww_ADC_CS_N;
ADC_DIN <= ww_ADC_DIN;
salida_d <= ww_salida_d;
salida_i <= ww_salida_i;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \inclk0~input_o\);

\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

\inclk0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inclk0~input_o\);
\ALT_INV_areset~input_o\ <= NOT \areset~input_o\;
\inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ <= NOT \inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\;
\inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ <= NOT \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\;

-- Location: FF_X49_Y26_N7
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0));

-- Location: FF_X49_Y26_N15
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4));

-- Location: FF_X49_Y26_N17
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5));

-- Location: FF_X49_Y26_N19
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6));

-- Location: FF_X49_Y26_N21
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(7));

-- Location: LCCOMB_X49_Y26_N6
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ = !\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0)
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\ = CARRY(!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\);

-- Location: LCCOMB_X49_Y26_N12
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\ & VCC)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3) & 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\ = CARRY((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3) & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\);

-- Location: LCCOMB_X49_Y26_N14
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4) & ((GND) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4) & 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\ $ (GND)))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\ = CARRY((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~17\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\);

-- Location: LCCOMB_X49_Y26_N16
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\ & VCC)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5) & 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\ = CARRY((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5) & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[4]~19\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\);

-- Location: LCCOMB_X49_Y26_N18
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6) & ((GND) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6) & 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\ $ (GND)))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~23\ = CARRY((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[5]~21\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~23\);

-- Location: LCCOMB_X49_Y26_N20
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~23\ $ (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(7),
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[6]~23\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\);

-- Location: LCCOMB_X49_Y26_N4
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5)) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6)) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4)) # 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(5),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(6),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(4),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(7),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\);

-- Location: LCCOMB_X48_Y26_N22
\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1_combout\);

-- Location: FF_X47_Y26_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\);

-- Location: LCCOMB_X47_Y26_N20
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & \inst|b2v_inst|adc_mega_0|go~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: FF_X49_Y23_N11
\inst1|state.CORRECCION_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.CORRECCION_D~q\);

-- Location: LCCOMB_X47_Y26_N10
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = ((!\inst|b2v_inst|adc_mega_0|go~q\ & ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: FF_X46_Y23_N3
\inst|b2v_inst|adc_mega_0|CH0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~0_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(10));

-- Location: FF_X46_Y23_N21
\inst|b2v_inst|adc_mega_0|CH0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~1_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(11));

-- Location: FF_X46_Y23_N23
\inst|b2v_inst|adc_mega_0|CH0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~2_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(9));

-- Location: FF_X46_Y23_N25
\inst|b2v_inst|adc_mega_0|CH0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH0~3_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(8));

-- Location: LCCOMB_X46_Y23_N24
\inst1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~0_combout\ = (\inst|b2v_inst|adc_mega_0|CH0\(11)) # ((\inst|b2v_inst|adc_mega_0|CH0\(10)) # ((\inst|b2v_inst|adc_mega_0|CH0\(9) & \inst|b2v_inst|adc_mega_0|CH0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH0\(9),
	datab => \inst|b2v_inst|adc_mega_0|CH0\(11),
	datac => \inst|b2v_inst|adc_mega_0|CH0\(8),
	datad => \inst|b2v_inst|adc_mega_0|CH0\(10),
	combout => \inst1|LessThan3~0_combout\);

-- Location: FF_X46_Y23_N11
\inst|b2v_inst|adc_mega_0|CH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~9_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(1));

-- Location: FF_X49_Y23_N9
\inst|b2v_inst|adc_mega_0|CH1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~0_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(10));

-- Location: FF_X49_Y23_N3
\inst|b2v_inst|adc_mega_0|CH1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~1_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(11));

-- Location: FF_X49_Y23_N23
\inst|b2v_inst|adc_mega_0|CH1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH1~3_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(8));

-- Location: LCCOMB_X49_Y23_N22
\inst1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = (\inst|b2v_inst|adc_mega_0|CH1\(10)) # ((\inst|b2v_inst|adc_mega_0|CH1\(11)) # ((\inst|b2v_inst|adc_mega_0|CH1\(9) & \inst|b2v_inst|adc_mega_0|CH1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH1\(9),
	datab => \inst|b2v_inst|adc_mega_0|CH1\(10),
	datac => \inst|b2v_inst|adc_mega_0|CH1\(8),
	datad => \inst|b2v_inst|adc_mega_0|CH1\(11),
	combout => \inst1|LessThan2~0_combout\);

-- Location: FF_X49_Y23_N27
\inst|b2v_inst|adc_mega_0|CH1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~5_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(6));

-- Location: FF_X49_Y26_N25
\inst|b2v_inst|adc_mega_0|CH1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~9_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(1));

-- Location: FF_X49_Y23_N31
\inst1|state.ocioso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	clrn => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.ocioso~q\);

-- Location: LCCOMB_X49_Y23_N10
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|LessThan2~3_combout\ & ((\inst1|state.CORRECCION_D~q\) # ((\inst1|state.Avanzar~q\ & !\inst1|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.Avanzar~q\,
	datab => \inst1|LessThan3~3_combout\,
	datac => \inst1|state.CORRECCION_D~q\,
	datad => \inst1|LessThan2~3_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y26_N6
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2) & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1) & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: FF_X47_Y23_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(10));

-- Location: LCCOMB_X46_Y23_N2
\inst|b2v_inst|adc_mega_0|CH0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(10) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(10),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~0_combout\);

-- Location: FF_X46_Y23_N17
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(11));

-- Location: LCCOMB_X46_Y23_N20
\inst|b2v_inst|adc_mega_0|CH0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~1_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(11) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(11),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~1_combout\);

-- Location: FF_X47_Y23_N23
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(9));

-- Location: LCCOMB_X46_Y23_N22
\inst|b2v_inst|adc_mega_0|CH0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(9) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(9),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~2_combout\);

-- Location: FF_X46_Y23_N27
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(8));

-- Location: LCCOMB_X46_Y23_N26
\inst|b2v_inst|adc_mega_0|CH0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~3_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(8) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(8),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~3_combout\);

-- Location: FF_X46_Y23_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(1));

-- Location: LCCOMB_X46_Y23_N10
\inst|b2v_inst|adc_mega_0|CH0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~9_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(1) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(1),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~9_combout\);

-- Location: FF_X48_Y23_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(10));

-- Location: LCCOMB_X49_Y23_N8
\inst|b2v_inst|adc_mega_0|CH1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(10) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(10),
	datac => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~0_combout\);

-- Location: FF_X48_Y23_N21
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(11));

-- Location: LCCOMB_X49_Y23_N2
\inst|b2v_inst|adc_mega_0|CH1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~1_combout\ = (\areset~input_o\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \areset~input_o\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(11),
	combout => \inst|b2v_inst|adc_mega_0|CH1~1_combout\);

-- Location: FF_X48_Y23_N9
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(9));

-- Location: FF_X48_Y23_N5
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(8));

-- Location: LCCOMB_X48_Y23_N4
\inst|b2v_inst|adc_mega_0|CH1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~3_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(8) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(8),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~3_combout\);

-- Location: FF_X48_Y23_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(5));

-- Location: FF_X48_Y23_N15
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(6));

-- Location: LCCOMB_X49_Y23_N26
\inst|b2v_inst|adc_mega_0|CH1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~5_combout\ = (\areset~input_o\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \areset~input_o\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(6),
	combout => \inst|b2v_inst|adc_mega_0|CH1~5_combout\);

-- Location: FF_X50_Y23_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(1));

-- Location: LCCOMB_X49_Y26_N24
\inst|b2v_inst|adc_mega_0|CH1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~9_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(1) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(1),
	datac => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~9_combout\);

-- Location: LCCOMB_X49_Y23_N30
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|state.CORRECCION_D~q\ & (\inst1|LessThan2~3_combout\ & ((\inst1|LessThan3~3_combout\) # (!\inst1|state.CORRECION_I~q\)))) # (!\inst1|state.CORRECCION_D~q\ & ((\inst1|LessThan3~3_combout\) # 
-- ((!\inst1|state.CORRECION_I~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.CORRECCION_D~q\,
	datab => \inst1|LessThan3~3_combout\,
	datac => \inst1|state.CORRECION_I~q\,
	datad => \inst1|LessThan2~3_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X48_Y23_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9));

-- Location: FF_X48_Y23_N1
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(10));

-- Location: FF_X48_Y23_N23
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8));

-- Location: FF_X48_Y23_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(7));

-- Location: LCCOMB_X48_Y26_N20
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\) # (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\);

-- Location: LCCOMB_X47_Y26_N12
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & ((!\inst|b2v_inst|adc_mega_0|go~q\) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|go~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\);

-- Location: LCCOMB_X48_Y23_N30
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N0
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\);

-- Location: LCCOMB_X47_Y23_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N20
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(10),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[11]~feeder_combout\);

-- Location: LCCOMB_X46_Y23_N16
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(10),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\);

-- Location: LCCOMB_X47_Y23_N22
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N22
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N12
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N14
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\);

-- Location: LCCOMB_X46_Y23_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\,
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\,
	devoe => ww_devoe,
	o => ww_ADC_CS_N);

-- Location: IOOBUF_X34_Y34_N16
\ADC_DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(5),
	devoe => ww_devoe,
	o => ww_ADC_DIN);

-- Location: IOOBUF_X40_Y0_N23
\salida_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_salida_d(2));

-- Location: IOOBUF_X53_Y21_N23
\salida_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_d(1));

-- Location: IOOBUF_X45_Y0_N16
\salida_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SALIDA_D\(0),
	devoe => ww_devoe,
	o => ww_salida_d(0));

-- Location: IOOBUF_X36_Y0_N9
\salida_i[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_salida_i(2));

-- Location: IOOBUF_X45_Y0_N23
\salida_i[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_i(1));

-- Location: IOOBUF_X40_Y0_N16
\salida_i[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SALIDA_I\(0),
	devoe => ww_devoe,
	o => ww_salida_i(0));

-- Location: IOIBUF_X27_Y0_N22
\inclk0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inclk0,
	o => \inclk0~input_o\);

-- Location: PLL_4
\inst|b2v_inst2|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3290,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_areset~input_o\,
	fbin => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|b2v_inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|b2v_inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\areset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: LCCOMB_X46_Y23_N8
\inst|b2v_inst|adc_mega_0|go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|go~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (!\areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|go~0_combout\);

-- Location: LCCOMB_X49_Y26_N22
\inst|b2v_inst|adc_mega_0|go~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|go~1_combout\ = !\inst|b2v_inst|adc_mega_0|go~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|go~1_combout\);

-- Location: FF_X49_Y26_N23
\inst|b2v_inst|adc_mega_0|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|go~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|go~q\);

-- Location: LCCOMB_X47_Y26_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ & ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & 
-- \inst|b2v_inst|adc_mega_0|go~q\)))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ & (((\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & \inst|b2v_inst|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\);

-- Location: FF_X47_Y26_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\);

-- Location: LCCOMB_X48_Y26_N24
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\);

-- Location: LCCOMB_X48_Y26_N14
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\);

-- Location: LCCOMB_X49_Y26_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\ $ (GND))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1) & 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\ & VCC))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\ = CARRY((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1) & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[0]~11\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\);

-- Location: LCCOMB_X49_Y26_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X48_Y26_N6
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\))) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\);

-- Location: FF_X49_Y26_N9
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1));

-- Location: LCCOMB_X49_Y26_N10
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2) & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2) & 
-- ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (GND)))
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\ = CARRY((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2),
	datad => VCC,
	cin => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[1]~13\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	cout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~15\);

-- Location: FF_X49_Y26_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2));

-- Location: FF_X49_Y26_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \areset~input_o\,
	sload => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3));

-- Location: LCCOMB_X49_Y26_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ = (((\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2))) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(0),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(2),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(1),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|counter\(3),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y26_N16
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\ = ((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\);

-- Location: FF_X48_Y26_N25
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0));

-- Location: LCCOMB_X48_Y26_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1) $ 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\);

-- Location: FF_X48_Y26_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1));

-- Location: LCCOMB_X48_Y26_N30
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) $ (((\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\);

-- Location: FF_X48_Y26_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2));

-- Location: LCCOMB_X48_Y26_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) & \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\);

-- Location: LCCOMB_X48_Y26_N12
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) $ 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\);

-- Location: FF_X48_Y26_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3));

-- Location: LCCOMB_X48_Y26_N10
\inst|b2v_inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\);

-- Location: FF_X48_Y26_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\);

-- Location: LCCOMB_X46_Y26_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ = !\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\);

-- Location: FF_X46_Y26_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(0));

-- Location: LCCOMB_X46_Y26_N30
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~3_combout\ = ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(0) & \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~3_combout\);

-- Location: LCCOMB_X46_Y26_N26
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\);

-- Location: FF_X46_Y26_N27
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\);

-- Location: LCCOMB_X46_Y26_N0
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\);

-- Location: FF_X46_Y26_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~3_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0));

-- Location: LCCOMB_X46_Y26_N14
\inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ = ((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0)) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y26_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1) $ (\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~1_combout\);

-- Location: FF_X46_Y26_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(1));

-- Location: LCCOMB_X46_Y26_N4
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~2_combout\);

-- Location: FF_X46_Y26_N5
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~2_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1));

-- Location: LCCOMB_X46_Y26_N12
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2) $ (((\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1) & \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~0_combout\);

-- Location: FF_X46_Y26_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(2));

-- Location: LCCOMB_X46_Y26_N10
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(2) & \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~0_combout\);

-- Location: FF_X46_Y26_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address~0_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2));

-- Location: LCCOMB_X46_Y26_N16
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0)) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1)) # 
-- (\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: LCCOMB_X48_Y26_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\);

-- Location: LCCOMB_X48_Y26_N26
\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\ & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\);

-- Location: LCCOMB_X46_Y26_N24
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\);

-- Location: FF_X46_Y26_N25
\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\);

-- Location: LCCOMB_X49_Y26_N0
\inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\) # (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\);

-- Location: LCCOMB_X48_Y26_N0
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ $ (((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~0_combout\);

-- Location: FF_X48_Y26_N1
\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~0_combout\,
	clrn => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\);

-- Location: LCCOMB_X47_Y26_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((!\inst|b2v_inst|adc_mega_0|go~q\) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\);

-- Location: LCCOMB_X46_Y26_N20
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\);

-- Location: LCCOMB_X47_Y26_N26
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ & 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\);

-- Location: FF_X47_Y26_N27
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0));

-- Location: LCCOMB_X47_Y26_N0
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ & ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(1)) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\);

-- Location: LCCOMB_X48_Y26_N4
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\ = ((!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\);

-- Location: FF_X47_Y26_N1
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1));

-- Location: LCCOMB_X47_Y26_N22
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ & ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(2)) # ((\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1) & 
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\)))) # (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\);

-- Location: FF_X47_Y26_N23
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2));

-- Location: LCCOMB_X47_Y26_N28
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|b2v_inst|adc_mega_0|go~q\) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2),
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\);

-- Location: FF_X47_Y26_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3));

-- Location: LCCOMB_X47_Y26_N6
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|b2v_inst|adc_mega_0|go~q\) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3),
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|b2v_inst|adc_mega_0|go~q\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\);

-- Location: FF_X47_Y26_N7
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4));

-- Location: LCCOMB_X47_Y26_N16
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|b2v_inst|adc_mega_0|go~q\) # 
-- (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|b2v_inst|adc_mega_0|go~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\);

-- Location: FF_X47_Y26_N17
\inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(5));

-- Location: CLKCTRL_G15
\inclk0~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inclk0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inclk0~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: LCCOMB_X50_Y23_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X48_Y26_N18
\inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\ & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\);

-- Location: FF_X50_Y23_N9
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(0));

-- Location: FF_X50_Y23_N27
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(1));

-- Location: LCCOMB_X46_Y26_N18
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\ = (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\ & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1) & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\);

-- Location: FF_X50_Y23_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(2));

-- Location: LCCOMB_X49_Y23_N18
\inst|b2v_inst|adc_mega_0|CH1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~10_combout\ = (\areset~input_o\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \areset~input_o\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(2),
	combout => \inst|b2v_inst|adc_mega_0|CH1~10_combout\);

-- Location: FF_X49_Y23_N19
\inst|b2v_inst|adc_mega_0|CH1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~10_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(2));

-- Location: FF_X50_Y23_N29
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(2));

-- Location: FF_X50_Y23_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(3));

-- Location: LCCOMB_X50_Y23_N30
\inst|b2v_inst|adc_mega_0|CH1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~11_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(3) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(3),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~11_combout\);

-- Location: FF_X49_Y23_N21
\inst|b2v_inst|adc_mega_0|CH1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH1~11_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(3));

-- Location: LCCOMB_X50_Y23_N24
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\);

-- Location: FF_X50_Y23_N25
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(0));

-- Location: LCCOMB_X49_Y23_N24
\inst|b2v_inst|adc_mega_0|CH1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~8_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(0) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(0),
	datac => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~8_combout\);

-- Location: FF_X49_Y23_N25
\inst|b2v_inst|adc_mega_0|CH1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~8_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(0));

-- Location: LCCOMB_X49_Y23_N20
\inst1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~2_combout\ = (\inst|b2v_inst|adc_mega_0|CH1\(1) & (\inst|b2v_inst|adc_mega_0|CH1\(2) & (\inst|b2v_inst|adc_mega_0|CH1\(3) & \inst|b2v_inst|adc_mega_0|CH1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH1\(1),
	datab => \inst|b2v_inst|adc_mega_0|CH1\(2),
	datac => \inst|b2v_inst|adc_mega_0|CH1\(3),
	datad => \inst|b2v_inst|adc_mega_0|CH1\(0),
	combout => \inst1|LessThan2~2_combout\);

-- Location: FF_X48_Y23_N27
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(3));

-- Location: FF_X48_Y23_N7
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(4));

-- Location: LCCOMB_X48_Y23_N6
\inst|b2v_inst|adc_mega_0|CH1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~7_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(4) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(4),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~7_combout\);

-- Location: FF_X49_Y23_N7
\inst|b2v_inst|adc_mega_0|CH1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH1~7_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(4));

-- Location: LCCOMB_X49_Y23_N4
\inst|b2v_inst|adc_mega_0|CH1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~2_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(9) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(9),
	datac => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~2_combout\);

-- Location: FF_X49_Y23_N5
\inst|b2v_inst|adc_mega_0|CH1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~2_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(9));

-- Location: FF_X48_Y23_N25
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4));

-- Location: LCCOMB_X48_Y23_N18
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\);

-- Location: FF_X48_Y23_N19
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5));

-- Location: LCCOMB_X48_Y23_N10
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\);

-- Location: FF_X48_Y23_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(6));

-- Location: FF_X48_Y23_N17
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(7));

-- Location: LCCOMB_X48_Y23_N16
\inst|b2v_inst|adc_mega_0|CH1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~6_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(7) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(7),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~6_combout\);

-- Location: FF_X49_Y23_N13
\inst|b2v_inst|adc_mega_0|CH1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH1~6_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(7));

-- Location: LCCOMB_X49_Y23_N16
\inst|b2v_inst|adc_mega_0|CH1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH1~4_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(5) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading1\(5),
	datac => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH1~4_combout\);

-- Location: FF_X49_Y23_N17
\inst|b2v_inst|adc_mega_0|CH1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH1~4_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH1\(5));

-- Location: LCCOMB_X49_Y23_N12
\inst1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_combout\ = (\inst|b2v_inst|adc_mega_0|CH1\(6) & (\inst|b2v_inst|adc_mega_0|CH1\(9) & (\inst|b2v_inst|adc_mega_0|CH1\(7) & \inst|b2v_inst|adc_mega_0|CH1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH1\(6),
	datab => \inst|b2v_inst|adc_mega_0|CH1\(9),
	datac => \inst|b2v_inst|adc_mega_0|CH1\(7),
	datad => \inst|b2v_inst|adc_mega_0|CH1\(5),
	combout => \inst1|LessThan2~1_combout\);

-- Location: LCCOMB_X49_Y23_N6
\inst1|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_combout\ = (\inst1|LessThan2~0_combout\) # ((\inst1|LessThan2~1_combout\ & ((\inst1|LessThan2~2_combout\) # (\inst|b2v_inst|adc_mega_0|CH1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~0_combout\,
	datab => \inst1|LessThan2~2_combout\,
	datac => \inst|b2v_inst|adc_mega_0|CH1\(4),
	datad => \inst1|LessThan2~1_combout\,
	combout => \inst1|LessThan2~3_combout\);

-- Location: LCCOMB_X47_Y23_N24
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\);

-- Location: LCCOMB_X46_Y26_N8
\inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0) & (\inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\ & (!\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1) & 
-- !\inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(1),
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\);

-- Location: FF_X47_Y23_N25
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(5));

-- Location: LCCOMB_X46_Y23_N18
\inst|b2v_inst|adc_mega_0|CH0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~4_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(5) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(5),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~4_combout\);

-- Location: FF_X46_Y23_N19
\inst|b2v_inst|adc_mega_0|CH0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~4_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(5));

-- Location: FF_X47_Y23_N13
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(7));

-- Location: LCCOMB_X47_Y23_N12
\inst|b2v_inst|adc_mega_0|CH0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~6_combout\ = (\areset~input_o\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \areset~input_o\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(7),
	combout => \inst|b2v_inst|adc_mega_0|CH0~6_combout\);

-- Location: FF_X46_Y23_N7
\inst|b2v_inst|adc_mega_0|CH0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH0~6_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(7));

-- Location: LCCOMB_X47_Y23_N2
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ = \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\);

-- Location: FF_X47_Y23_N3
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(6));

-- Location: LCCOMB_X46_Y23_N12
\inst|b2v_inst|adc_mega_0|CH0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~5_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(6) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(6),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~5_combout\);

-- Location: FF_X46_Y23_N13
\inst|b2v_inst|adc_mega_0|CH0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~5_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(6));

-- Location: LCCOMB_X46_Y23_N6
\inst1|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_combout\ = (\inst|b2v_inst|adc_mega_0|CH0\(9) & (\inst|b2v_inst|adc_mega_0|CH0\(5) & (\inst|b2v_inst|adc_mega_0|CH0\(7) & \inst|b2v_inst|adc_mega_0|CH0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH0\(9),
	datab => \inst|b2v_inst|adc_mega_0|CH0\(5),
	datac => \inst|b2v_inst|adc_mega_0|CH0\(7),
	datad => \inst|b2v_inst|adc_mega_0|CH0\(6),
	combout => \inst1|LessThan3~1_combout\);

-- Location: FF_X47_Y23_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(4));

-- Location: LCCOMB_X47_Y23_N30
\inst|b2v_inst|adc_mega_0|CH0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~7_combout\ = (\areset~input_o\ & \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \areset~input_o\,
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(4),
	combout => \inst|b2v_inst|adc_mega_0|CH0~7_combout\);

-- Location: FF_X49_Y23_N15
\inst|b2v_inst|adc_mega_0|CH0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH0~7_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(4));

-- Location: FF_X47_Y23_N11
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(2));

-- Location: LCCOMB_X46_Y23_N4
\inst|b2v_inst|adc_mega_0|CH0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~10_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(2) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(2),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~10_combout\);

-- Location: FF_X46_Y23_N5
\inst|b2v_inst|adc_mega_0|CH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~10_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(2));

-- Location: FF_X46_Y23_N31
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(3));

-- Location: LCCOMB_X46_Y23_N30
\inst|b2v_inst|adc_mega_0|CH0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~11_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(3) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(3),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~11_combout\);

-- Location: FF_X46_Y23_N15
\inst|b2v_inst|adc_mega_0|CH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|b2v_inst|adc_mega_0|CH0~11_combout\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(3));

-- Location: FF_X47_Y23_N17
\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DOUT~input_o\,
	sload => VCC,
	ena => \inst|b2v_inst|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(0));

-- Location: LCCOMB_X46_Y23_N0
\inst|b2v_inst|adc_mega_0|CH0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|adc_mega_0|CH0~8_combout\ = (\inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(0) & \areset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|adc_mega_0|ADC_CTRL|reading0\(0),
	datad => \areset~input_o\,
	combout => \inst|b2v_inst|adc_mega_0|CH0~8_combout\);

-- Location: FF_X46_Y23_N1
\inst|b2v_inst|adc_mega_0|CH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|b2v_inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|b2v_inst|adc_mega_0|CH0~8_combout\,
	ena => \inst|b2v_inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|adc_mega_0|CH0\(0));

-- Location: LCCOMB_X46_Y23_N14
\inst1|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~2_combout\ = (\inst|b2v_inst|adc_mega_0|CH0\(1) & (\inst|b2v_inst|adc_mega_0|CH0\(2) & (\inst|b2v_inst|adc_mega_0|CH0\(3) & \inst|b2v_inst|adc_mega_0|CH0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|adc_mega_0|CH0\(1),
	datab => \inst|b2v_inst|adc_mega_0|CH0\(2),
	datac => \inst|b2v_inst|adc_mega_0|CH0\(3),
	datad => \inst|b2v_inst|adc_mega_0|CH0\(0),
	combout => \inst1|LessThan3~2_combout\);

-- Location: LCCOMB_X49_Y23_N14
\inst1|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~3_combout\ = (\inst1|LessThan3~0_combout\) # ((\inst1|LessThan3~1_combout\ & ((\inst|b2v_inst|adc_mega_0|CH0\(4)) # (\inst1|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan3~0_combout\,
	datab => \inst1|LessThan3~1_combout\,
	datac => \inst|b2v_inst|adc_mega_0|CH0\(4),
	datad => \inst1|LessThan3~2_combout\,
	combout => \inst1|LessThan3~3_combout\);

-- Location: LCCOMB_X49_Y23_N0
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ((\inst1|state.Avanzar~q\ & (\inst1|LessThan2~3_combout\ $ (!\inst1|LessThan3~3_combout\)))) # (!\inst1|state.ocioso~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.ocioso~q\,
	datab => \inst1|LessThan2~3_combout\,
	datac => \inst1|state.Avanzar~q\,
	datad => \inst1|LessThan3~3_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X49_Y23_N1
\inst1|state.Avanzar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	clrn => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.Avanzar~q\);

-- Location: LCCOMB_X47_Y23_N0
\inst1|SALIDA_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SALIDA_D~0_combout\ = (\inst1|state.CORRECCION_D~q\) # (\inst1|state.Avanzar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.CORRECCION_D~q\,
	datac => \inst1|state.Avanzar~q\,
	combout => \inst1|SALIDA_D~0_combout\);

-- Location: FF_X47_Y23_N1
\inst1|SALIDA_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|SALIDA_D~0_combout\,
	ena => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SALIDA_D\(0));

-- Location: LCCOMB_X49_Y23_N28
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|LessThan3~3_combout\ & ((\inst1|state.CORRECION_I~q\) # ((\inst1|state.Avanzar~q\ & !\inst1|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.Avanzar~q\,
	datab => \inst1|LessThan2~3_combout\,
	datac => \inst1|state.CORRECION_I~q\,
	datad => \inst1|LessThan3~3_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X49_Y23_N29
\inst1|state.CORRECION_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.CORRECION_I~q\);

-- Location: LCCOMB_X47_Y23_N26
\inst1|SALIDA_I~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SALIDA_I~0_combout\ = (\inst1|state.CORRECION_I~q\) # (\inst1|state.Avanzar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.CORRECION_I~q\,
	datac => \inst1|state.Avanzar~q\,
	combout => \inst1|SALIDA_I~0_combout\);

-- Location: FF_X47_Y23_N27
\inst1|SALIDA_I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inclk0~inputclkctrl_outclk\,
	d => \inst1|SALIDA_I~0_combout\,
	ena => \areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SALIDA_I\(0));
END structure;


