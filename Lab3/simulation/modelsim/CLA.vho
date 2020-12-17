-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/06/2020 18:55:36"

-- 
-- Device: Altera EPM2210F324C3 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	adder_top IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	s : BUFFER std_logic_vector(7 DOWNTO 0);
	cout : BUFFER std_logic
	);
END adder_top;

-- Design Ports Information


ARCHITECTURE structure OF adder_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:0:U_FA|sum~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:0:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:1:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:2:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:3:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:4:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:5:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:6:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:7:U_FA|sum~combout\ : std_logic;
SIGNAL \U_ADDER|U_RC:7:U_FA|carry_out~0_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \y~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(0),
	combout => \y~combout\(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LC_X20_Y7_N2
\U_ADDER|U_RC:0:U_FA|sum~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:0:U_FA|sum~0_combout\ = \x~combout\(0) $ (((\y~combout\(0) $ (\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(0),
	datac => \y~combout\(0),
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:0:U_FA|sum~0_combout\);

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(1),
	combout => \y~combout\(1));

-- Location: LC_X20_Y7_N4
\U_ADDER|U_RC:0:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:0:U_FA|carry_out~0_combout\ = (\x~combout\(0) & (((\y~combout\(0)) # (\cin~combout\)))) # (!\x~combout\(0) & (((\y~combout\(0) & \cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(0),
	datac => \y~combout\(0),
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:0:U_FA|carry_out~0_combout\);

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: LC_X20_Y7_N8
\U_ADDER|U_RC:1:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:1:U_FA|sum~combout\ = (\y~combout\(1) $ (\U_ADDER|U_RC:0:U_FA|carry_out~0_combout\ $ (\x~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(1),
	datac => \U_ADDER|U_RC:0:U_FA|carry_out~0_combout\,
	datad => \x~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:1:U_FA|sum~combout\);

-- Location: LC_X20_Y7_N3
\U_ADDER|U_RC:1:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\ = ((\y~combout\(1) & ((\U_ADDER|U_RC:0:U_FA|carry_out~0_combout\) # (\x~combout\(1)))) # (!\y~combout\(1) & (\U_ADDER|U_RC:0:U_FA|carry_out~0_combout\ & \x~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(1),
	datac => \U_ADDER|U_RC:0:U_FA|carry_out~0_combout\,
	datad => \x~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(2),
	combout => \y~combout\(2));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LC_X20_Y7_N7
\U_ADDER|U_RC:2:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:2:U_FA|sum~combout\ = \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\ $ (((\y~combout\(2) $ (\x~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\,
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:2:U_FA|sum~combout\);

-- Location: LC_X20_Y7_N6
\U_ADDER|U_RC:2:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\ = (\U_ADDER|U_RC:1:U_FA|carry_out~0_combout\ & (((\y~combout\(2)) # (\x~combout\(2))))) # (!\U_ADDER|U_RC:1:U_FA|carry_out~0_combout\ & (((\y~combout\(2) & \x~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|U_RC:1:U_FA|carry_out~0_combout\,
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\);

-- Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LC_X20_Y7_N5
\U_ADDER|U_RC:3:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:3:U_FA|sum~combout\ = \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\ $ (((\y~combout\(3) $ (\x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\,
	datac => \y~combout\(3),
	datad => \x~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:3:U_FA|sum~combout\);

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(4),
	combout => \y~combout\(4));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: LC_X20_Y7_N9
\U_ADDER|U_RC:3:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\ = (\U_ADDER|U_RC:2:U_FA|carry_out~0_combout\ & (((\y~combout\(3)) # (\x~combout\(3))))) # (!\U_ADDER|U_RC:2:U_FA|carry_out~0_combout\ & (((\y~combout\(3) & \x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|U_RC:2:U_FA|carry_out~0_combout\,
	datac => \y~combout\(3),
	datad => \x~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\);

-- Location: LC_X6_Y4_N5
\U_ADDER|U_RC:4:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:4:U_FA|sum~combout\ = \y~combout\(4) $ (((\x~combout\(4) $ (\U_ADDER|U_RC:3:U_FA|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(4),
	datac => \x~combout\(4),
	datad => \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:4:U_FA|sum~combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(5),
	combout => \y~combout\(5));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LC_X6_Y4_N9
\U_ADDER|U_RC:4:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\ = (\y~combout\(4) & (((\x~combout\(4)) # (\U_ADDER|U_RC:3:U_FA|carry_out~0_combout\)))) # (!\y~combout\(4) & (((\x~combout\(4) & \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(4),
	datac => \x~combout\(4),
	datad => \U_ADDER|U_RC:3:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\);

-- Location: LC_X6_Y4_N6
\U_ADDER|U_RC:5:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:5:U_FA|sum~combout\ = (\y~combout\(5) $ (\x~combout\(5) $ (\U_ADDER|U_RC:4:U_FA|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(5),
	datac => \x~combout\(5),
	datad => \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:5:U_FA|sum~combout\);

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(6),
	combout => \y~combout\(6));

-- Location: LC_X6_Y4_N8
\U_ADDER|U_RC:5:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\ = ((\y~combout\(5) & ((\x~combout\(5)) # (\U_ADDER|U_RC:4:U_FA|carry_out~0_combout\))) # (!\y~combout\(5) & (\x~combout\(5) & \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(5),
	datac => \x~combout\(5),
	datad => \U_ADDER|U_RC:4:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\);

-- Location: LC_X6_Y4_N7
\U_ADDER|U_RC:6:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:6:U_FA|sum~combout\ = (\x~combout\(6) $ (\y~combout\(6) $ (\U_ADDER|U_RC:5:U_FA|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(6),
	datac => \y~combout\(6),
	datad => \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:6:U_FA|sum~combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(7),
	combout => \y~combout\(7));

-- Location: LC_X6_Y4_N2
\U_ADDER|U_RC:6:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\ = ((\x~combout\(6) & ((\y~combout\(6)) # (\U_ADDER|U_RC:5:U_FA|carry_out~0_combout\))) # (!\x~combout\(6) & (\y~combout\(6) & \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(6),
	datac => \y~combout\(6),
	datad => \U_ADDER|U_RC:5:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\);

-- Location: LC_X6_Y4_N0
\U_ADDER|U_RC:7:U_FA|sum\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:7:U_FA|sum~combout\ = \x~combout\(7) $ (((\y~combout\(7) $ (\U_ADDER|U_RC:6:U_FA|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(7),
	datac => \y~combout\(7),
	datad => \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:7:U_FA|sum~combout\);

-- Location: LC_X6_Y4_N3
\U_ADDER|U_RC:7:U_FA|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \U_ADDER|U_RC:7:U_FA|carry_out~0_combout\ = (\x~combout\(7) & (((\y~combout\(7)) # (\U_ADDER|U_RC:6:U_FA|carry_out~0_combout\)))) # (!\x~combout\(7) & (((\y~combout\(7) & \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(7),
	datac => \y~combout\(7),
	datad => \U_ADDER|U_RC:6:U_FA|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_ADDER|U_RC:7:U_FA|carry_out~0_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:0:U_FA|sum~0_combout\,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:1:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:2:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:3:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:4:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:5:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:6:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:7:U_FA|sum~combout\,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_ADDER|U_RC:7:U_FA|carry_out~0_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


