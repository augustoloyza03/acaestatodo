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
-- CREATED		"Wed Nov 20 12:37:07 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY contador_doblar IS 
	PORT
	(
		inclk0 :  IN  STD_LOGIC;
		areset :  IN  STD_LOGIC;
		tc2 :  OUT  STD_LOGIC;
		tc1 :  OUT  STD_LOGIC
	);
END contador_doblar;

ARCHITECTURE bdf_type OF contador_doblar IS 

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pll
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT comparador_1
	PORT(dataa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 aleb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT comparador_2
	PORT(dataa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 aleb : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 



b2v_inst : lpm_counter0
PORT MAP(clock => SYNTHESIZED_WIRE_0,
		 aclr => areset,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst1 : pll
PORT MAP(inclk0 => inclk0,
		 areset => areset,
		 c0 => SYNTHESIZED_WIRE_0);


b2v_inst2 : comparador_1
PORT MAP(dataa => SYNTHESIZED_WIRE_3,
		 aleb => tc1);


b2v_inst3 : comparador_2
PORT MAP(dataa => SYNTHESIZED_WIRE_3,
		 aleb => tc2);


END bdf_type;