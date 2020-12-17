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

-- DATE "09/11/2020 15:17:13"

-- 
-- Device: Altera EPM2210F324C5 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	adder IS
    PORT (
	input1 : IN std_logic_vector(5 DOWNTO 0);
	input2 : IN std_logic_vector(5 DOWNTO 0);
	carry_in : IN std_logic;
	sum : OUT std_logic_vector(5 DOWNTO 0);
	carry_out : OUT std_logic
	);
END adder;

-- Design Ports Information


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_sum : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_carry_out : std_logic;
SIGNAL \carry_in~combout\ : std_logic;
SIGNAL \adder1|sum~0_combout\ : std_logic;
SIGNAL \adder1|carry_out~0_combout\ : std_logic;
SIGNAL \adder2|sum~combout\ : std_logic;
SIGNAL \adder2|carry_out~0_combout\ : std_logic;
SIGNAL \adder3|sum~combout\ : std_logic;
SIGNAL \adder3|carry_out~0_combout\ : std_logic;
SIGNAL \adder4|sum~combout\ : std_logic;
SIGNAL \adder4|carry_out~0_combout\ : std_logic;
SIGNAL \adder5|sum~combout\ : std_logic;
SIGNAL \adder5|carry_out~0_combout\ : std_logic;
SIGNAL \adder6|sum~combout\ : std_logic;
SIGNAL \adder6|carry_out~0_combout\ : std_logic;
SIGNAL \input1~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \input2~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_input1 <= input1;
ww_input2 <= input2;
ww_carry_in <= carry_in;
sum <= ww_sum;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(0),
	combout => \input2~combout\(0));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carry_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_carry_in,
	combout => \carry_in~combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(0),
	combout => \input1~combout\(0));

-- Location: LC_X19_Y3_N0
\adder1|sum~0\ : maxii_lcell
-- Equation(s):
-- \adder1|sum~0_combout\ = \input2~combout\(0) $ (((\carry_in~combout\ $ (\input1~combout\(0)))))

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
	dataa => \input2~combout\(0),
	datac => \carry_in~combout\,
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder1|sum~0_combout\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(1),
	combout => \input1~combout\(1));

-- Location: LC_X19_Y3_N5
\adder1|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder1|carry_out~0_combout\ = (\input2~combout\(0) & (((\carry_in~combout\) # (\input1~combout\(0))))) # (!\input2~combout\(0) & (((\carry_in~combout\ & \input1~combout\(0)))))

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
	dataa => \input2~combout\(0),
	datac => \carry_in~combout\,
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder1|carry_out~0_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(1),
	combout => \input2~combout\(1));

-- Location: LC_X19_Y3_N8
\adder2|sum\ : maxii_lcell
-- Equation(s):
-- \adder2|sum~combout\ = (\input1~combout\(1) $ (\adder1|carry_out~0_combout\ $ (\input2~combout\(1))))

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
	datab => \input1~combout\(1),
	datac => \adder1|carry_out~0_combout\,
	datad => \input2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder2|sum~combout\);

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(2),
	combout => \input1~combout\(2));

-- Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(2),
	combout => \input2~combout\(2));

-- Location: LC_X19_Y3_N6
\adder2|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder2|carry_out~0_combout\ = ((\input1~combout\(1) & ((\adder1|carry_out~0_combout\) # (\input2~combout\(1)))) # (!\input1~combout\(1) & (\adder1|carry_out~0_combout\ & \input2~combout\(1))))

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
	datab => \input1~combout\(1),
	datac => \adder1|carry_out~0_combout\,
	datad => \input2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder2|carry_out~0_combout\);

-- Location: LC_X19_Y3_N9
\adder3|sum\ : maxii_lcell
-- Equation(s):
-- \adder3|sum~combout\ = \input1~combout\(2) $ (\input2~combout\(2) $ ((\adder2|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \input2~combout\(2),
	datac => \adder2|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder3|sum~combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(3),
	combout => \input1~combout\(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(3),
	combout => \input2~combout\(3));

-- Location: LC_X19_Y3_N4
\adder3|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder3|carry_out~0_combout\ = (\input1~combout\(2) & ((\input2~combout\(2)) # ((\adder2|carry_out~0_combout\)))) # (!\input1~combout\(2) & (\input2~combout\(2) & (\adder2|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \input2~combout\(2),
	datac => \adder2|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder3|carry_out~0_combout\);

-- Location: LC_X3_Y4_N6
\adder4|sum\ : maxii_lcell
-- Equation(s):
-- \adder4|sum~combout\ = (\input1~combout\(3) $ (\input2~combout\(3) $ (\adder3|carry_out~0_combout\)))

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
	datab => \input1~combout\(3),
	datac => \input2~combout\(3),
	datad => \adder3|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder4|sum~combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(4),
	combout => \input2~combout\(4));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(4),
	combout => \input1~combout\(4));

-- Location: LC_X3_Y4_N4
\adder4|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder4|carry_out~0_combout\ = ((\input1~combout\(3) & ((\input2~combout\(3)) # (\adder3|carry_out~0_combout\))) # (!\input1~combout\(3) & (\input2~combout\(3) & \adder3|carry_out~0_combout\)))

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
	datab => \input1~combout\(3),
	datac => \input2~combout\(3),
	datad => \adder3|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder4|carry_out~0_combout\);

-- Location: LC_X3_Y4_N3
\adder5|sum\ : maxii_lcell
-- Equation(s):
-- \adder5|sum~combout\ = \input2~combout\(4) $ (((\input1~combout\(4) $ (\adder4|carry_out~0_combout\))))

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
	dataa => \input2~combout\(4),
	datac => \input1~combout\(4),
	datad => \adder4|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder5|sum~combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(5),
	combout => \input1~combout\(5));

-- Location: LC_X3_Y4_N7
\adder5|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder5|carry_out~0_combout\ = (\input2~combout\(4) & (((\input1~combout\(4)) # (\adder4|carry_out~0_combout\)))) # (!\input2~combout\(4) & (((\input1~combout\(4) & \adder4|carry_out~0_combout\))))

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
	dataa => \input2~combout\(4),
	datac => \input1~combout\(4),
	datad => \adder4|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder5|carry_out~0_combout\);

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(5),
	combout => \input2~combout\(5));

-- Location: LC_X3_Y4_N9
\adder6|sum\ : maxii_lcell
-- Equation(s):
-- \adder6|sum~combout\ = \input1~combout\(5) $ (\adder5|carry_out~0_combout\ $ ((\input2~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \adder5|carry_out~0_combout\,
	datac => \input2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder6|sum~combout\);

-- Location: LC_X3_Y4_N8
\adder6|carry_out~0\ : maxii_lcell
-- Equation(s):
-- \adder6|carry_out~0_combout\ = (\input1~combout\(5) & (((\input2~combout\(5)) # (\adder5|carry_out~0_combout\)))) # (!\input1~combout\(5) & (((\input2~combout\(5) & \adder5|carry_out~0_combout\))))

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
	dataa => \input1~combout\(5),
	datac => \input2~combout\(5),
	datad => \adder5|carry_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder6|carry_out~0_combout\);

-- Location: PIN_N17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder1|sum~0_combout\,
	oe => VCC,
	padio => ww_sum(0));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder2|sum~combout\,
	oe => VCC,
	padio => ww_sum(1));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder3|sum~combout\,
	oe => VCC,
	padio => ww_sum(2));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder4|sum~combout\,
	oe => VCC,
	padio => ww_sum(3));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder5|sum~combout\,
	oe => VCC,
	padio => ww_sum(4));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder6|sum~combout\,
	oe => VCC,
	padio => ww_sum(5));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\carry_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder6|carry_out~0_combout\,
	oe => VCC,
	padio => ww_carry_out);
END structure;


