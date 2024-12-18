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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Nov 15 18:50:15 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY prueba1 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		M1I :  buffer  STD_LOGIC;
		M0I :  buffer  STD_LOGIC;
		M1D :  buffer  STD_LOGIC;
		M0D :  buffer  STD_LOGIC;
		velmi :  OUT  STD_LOGIC;
		velmd :  OUT  STD_LOGIC;
		ledcheckdf :  OUT  STD_LOGIC;
		ledcheckdi :  OUT  STD_LOGIC;
		ledcheckdd :  OUT  STD_LOGIC;
		ledcheckm0i :  OUT  STD_LOGIC;
		ledcheckm1i :  OUT  STD_LOGIC;
		ledcheckm0d :  OUT  STD_LOGIC;
		ledcheckm1d :  OUT  STD_LOGIC
	);
END prueba1;

ARCHITECTURE bdf_type OF prueba1 IS 

COMPONENT doblar2
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 tc1 : IN STD_LOGIC;
		 tc2 : IN STD_LOGIC;
		 indicacion1 : IN STD_LOGIC;
		 indicacion0 : IN STD_LOGIC;
		 M1I : buffer STD_LOGIC;
		 M0I : buffer STD_LOGIC;
		 M1D : buffer STD_LOGIC;
		 M0D : buffer STD_LOGIC;
		 velmi : OUT STD_LOGIC;
		 velmd : OUT STD_LOGIC;
		 clc : OUT STD_LOGIC;
		 ledcheckdf : OUT STD_LOGIC;
		 ledcheckdi : OUT STD_LOGIC;
		 ledcheckdd : OUT STD_LOGIC;
		 ledcheckm0i : OUT STD_LOGIC;
		 ledcheckm1i : OUT STD_LOGIC;
		 ledcheckm0d : OUT STD_LOGIC;
		 ledcheckm1d : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador_doblar
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 tc2 : OUT STD_LOGIC;
		 tc1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_5 <= '1';



b2v_inst : doblar2
PORT MAP(clk => clk,
		 reset => reset,
		 tc1 => SYNTHESIZED_WIRE_0,
		 tc2 => SYNTHESIZED_WIRE_1,
		 indicacion1 => SYNTHESIZED_WIRE_5,
		 indicacion0 => SYNTHESIZED_WIRE_5,
		 M1I => M1I,
		 M0I => M0I,
		 M1D => M1D,
		 M0D => M0D,
		 velmi => velmi,
		 velmd => velmd,
		 clc => SYNTHESIZED_WIRE_4,
		 ledcheckdf => ledcheckdf,
		 ledcheckdi => ledcheckdi,
		 ledcheckdd => ledcheckdd,
		 ledcheckm0i => ledcheckm0i,
		 ledcheckm1i => ledcheckm1i,
		 ledcheckm0d => ledcheckm0d,
		 ledcheckm1d => ledcheckm1d);



b2v_inst2 : contador_doblar
PORT MAP(inclk0 => clk,
		 areset => SYNTHESIZED_WIRE_4,
		 tc2 => SYNTHESIZED_WIRE_1,
		 tc1 => SYNTHESIZED_WIRE_0);


END bdf_type;