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

-- DATE "10/10/2020 21:31:32"

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

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	rst : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic;
	led4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led4_dp : BUFFER std_logic;
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	led5_dp : BUFFER std_logic
	);
END top_level;

-- Design Ports Information


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL \U_CLK_GEN|Add0~187\ : std_logic;
SIGNAL \clk50MHz~combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~42\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~42COUT1_87\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~20_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~22\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~22COUT1_88\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~35_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~37\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~37COUT1_89\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~32\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~32COUT1_90\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~25_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~1\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~15_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~17\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~17COUT1_91\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~12\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~12COUT1_92\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~2\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~2COUT1_81\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~70_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~72\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~72COUT1_82\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~65_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~67\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~60_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~62\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~62COUT1_83\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~75_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~3\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~77\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~77COUT1_84\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~55_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~57\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~57COUT1_85\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~45_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~47\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~47COUT1_86\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~50_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~2\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~4\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~40_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~52\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~30_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~27\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~10_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~0\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|temp~regout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~12_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~189_cout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~175_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~177\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~177COUT1_193\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~169_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~171\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~171COUT1_194\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~181_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~183\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~183COUT1_195\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~163_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~165\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~165COUT1_196\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~157_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~159\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~151_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~153\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~153COUT1_197\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~145_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~147\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~147COUT1_198\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~139_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~7_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~141\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~141COUT1_199\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~133_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~135\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~135COUT1_200\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~127_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~129\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~121_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~123\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~123COUT1_201\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~115_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~117\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~117COUT1_202\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~109_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~111\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~111COUT1_203\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~103_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~105\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~105COUT1_204\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~97_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~99\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~91_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~9_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~93\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~93COUT1_205\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~85_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~87\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~87COUT1_206\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~79_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~81\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~81COUT1_207\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~73_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~75\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~75COUT1_208\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~67_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~69\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~61_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~63\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~63COUT1_209\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~55_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~57\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~57COUT1_210\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~49_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~51\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~51COUT1_211\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~43_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~45\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~45COUT1_212\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~37_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~39\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~31_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~33\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~33COUT1_213\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~25_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~27\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~27COUT1_214\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~19_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~21\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~21COUT1_215\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~8\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~8COUT1_216\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~2\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~13_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~18_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|temp~regout\ : std_logic;
SIGNAL \U_LED4|Mux6~0\ : std_logic;
SIGNAL \U_LED4|Mux5~0\ : std_logic;
SIGNAL \U_LED4|Mux4~0\ : std_logic;
SIGNAL \U_LED4|Mux3~0\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_COUNTER|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_CLK_GEN|U_CD|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \button~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_switch~combout\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \U_LED4|ALT_INV_Mux6~0\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switch~combout\(4) <= NOT \switch~combout\(4);
\U_LED4|ALT_INV_Mux6~0\ <= NOT \U_LED4|Mux6~0\;

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk50MHz~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk50MHz,
	combout => \clk50MHz~combout\);

-- Location: LC_X5_Y7_N0
\U_CLK_GEN|U_CD|Add0~40\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~40_combout\ = (\U_CLK_GEN|U_CD|count\(8) $ ((!\U_CLK_GEN|U_CD|Add0~52\)))
-- \U_CLK_GEN|U_CD|Add0~42\ = CARRY(((\U_CLK_GEN|U_CD|count\(8) & !\U_CLK_GEN|U_CD|Add0~52\)))
-- \U_CLK_GEN|U_CD|Add0~42COUT1_87\ = CARRY(((\U_CLK_GEN|U_CD|count\(8) & !\U_CLK_GEN|U_CD|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(8),
	cin => \U_CLK_GEN|U_CD|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~40_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~42\,
	cout1 => \U_CLK_GEN|U_CD|Add0~42COUT1_87\);

-- Location: LC_X5_Y7_N1
\U_CLK_GEN|U_CD|Add0~20\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~20_combout\ = (\U_CLK_GEN|U_CD|count\(9) $ (((!\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~42\) # (\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~42COUT1_87\))))
-- \U_CLK_GEN|U_CD|Add0~22\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~42\) # (!\U_CLK_GEN|U_CD|count\(9))))
-- \U_CLK_GEN|U_CD|Add0~22COUT1_88\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~42COUT1_87\) # (!\U_CLK_GEN|U_CD|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(9),
	cin => \U_CLK_GEN|U_CD|Add0~52\,
	cin0 => \U_CLK_GEN|U_CD|Add0~42\,
	cin1 => \U_CLK_GEN|U_CD|Add0~42COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~20_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~22\,
	cout1 => \U_CLK_GEN|U_CD|Add0~22COUT1_88\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X6_Y7_N8
\U_CLK_GEN|U_CD|count[9]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(9) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~20_combout\ & !\U_CLK_GEN|U_CD|Equal0~4\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datac => \U_CLK_GEN|U_CD|Add0~20_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~4\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(9));

-- Location: LC_X5_Y7_N2
\U_CLK_GEN|U_CD|Add0~35\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~35_combout\ = (\U_CLK_GEN|U_CD|count\(10) $ ((!(!\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~22\) # (\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~22COUT1_88\))))
-- \U_CLK_GEN|U_CD|Add0~37\ = CARRY(((\U_CLK_GEN|U_CD|count\(10) & !\U_CLK_GEN|U_CD|Add0~22\)))
-- \U_CLK_GEN|U_CD|Add0~37COUT1_89\ = CARRY(((\U_CLK_GEN|U_CD|count\(10) & !\U_CLK_GEN|U_CD|Add0~22COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(10),
	cin => \U_CLK_GEN|U_CD|Add0~52\,
	cin0 => \U_CLK_GEN|U_CD|Add0~22\,
	cin1 => \U_CLK_GEN|U_CD|Add0~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~35_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~37\,
	cout1 => \U_CLK_GEN|U_CD|Add0~37COUT1_89\);

-- Location: LC_X6_Y7_N2
\U_CLK_GEN|U_CD|count[10]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(10) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~35_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datad => \U_CLK_GEN|U_CD|Add0~35_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(10));

-- Location: LC_X5_Y7_N3
\U_CLK_GEN|U_CD|Add0~30\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~30_combout\ = (\U_CLK_GEN|U_CD|count\(11) $ (((!\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~37\) # (\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~37COUT1_89\))))
-- \U_CLK_GEN|U_CD|Add0~32\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~37\) # (!\U_CLK_GEN|U_CD|count\(11))))
-- \U_CLK_GEN|U_CD|Add0~32COUT1_90\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~37COUT1_89\) # (!\U_CLK_GEN|U_CD|count\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(11),
	cin => \U_CLK_GEN|U_CD|Add0~52\,
	cin0 => \U_CLK_GEN|U_CD|Add0~37\,
	cin1 => \U_CLK_GEN|U_CD|Add0~37COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~30_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~32\,
	cout1 => \U_CLK_GEN|U_CD|Add0~32COUT1_90\);

-- Location: LC_X5_Y7_N4
\U_CLK_GEN|U_CD|Add0~25\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~25_combout\ = \U_CLK_GEN|U_CD|count\(12) $ ((((!(!\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~32\) # (\U_CLK_GEN|U_CD|Add0~52\ & \U_CLK_GEN|U_CD|Add0~32COUT1_90\)))))
-- \U_CLK_GEN|U_CD|Add0~27\ = CARRY((\U_CLK_GEN|U_CD|count\(12) & ((!\U_CLK_GEN|U_CD|Add0~32COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(12),
	cin => \U_CLK_GEN|U_CD|Add0~52\,
	cin0 => \U_CLK_GEN|U_CD|Add0~32\,
	cin1 => \U_CLK_GEN|U_CD|Add0~32COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~25_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~27\);

-- Location: LC_X6_Y7_N0
\U_CLK_GEN|U_CD|count[12]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~1\ = (!\U_CLK_GEN|U_CD|count\(11) & (\U_CLK_GEN|U_CD|count\(9) & (!F1_count[12] & !\U_CLK_GEN|U_CD|count\(10))))
-- \U_CLK_GEN|U_CD|count\(12) = DFFEAS(\U_CLK_GEN|U_CD|Equal0~1\, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , \U_CLK_GEN|U_CD|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	dataa => \U_CLK_GEN|U_CD|count\(11),
	datab => \U_CLK_GEN|U_CD|count\(9),
	datac => \U_CLK_GEN|U_CD|Add0~25_combout\,
	datad => \U_CLK_GEN|U_CD|count\(10),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Equal0~1\,
	regout => \U_CLK_GEN|U_CD|count\(12));

-- Location: LC_X5_Y7_N5
\U_CLK_GEN|U_CD|Add0~15\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~15_combout\ = \U_CLK_GEN|U_CD|count\(13) $ ((((\U_CLK_GEN|U_CD|Add0~27\))))
-- \U_CLK_GEN|U_CD|Add0~17\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~27\)) # (!\U_CLK_GEN|U_CD|count\(13)))
-- \U_CLK_GEN|U_CD|Add0~17COUT1_91\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~27\)) # (!\U_CLK_GEN|U_CD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(13),
	cin => \U_CLK_GEN|U_CD|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~15_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~17\,
	cout1 => \U_CLK_GEN|U_CD|Add0~17COUT1_91\);

-- Location: LC_X6_Y7_N1
\U_CLK_GEN|U_CD|count[13]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(13) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~15_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datad => \U_CLK_GEN|U_CD|Add0~15_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(13));

-- Location: LC_X5_Y7_N6
\U_CLK_GEN|U_CD|Add0~10\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~10_combout\ = \U_CLK_GEN|U_CD|count\(14) $ ((((!(!\U_CLK_GEN|U_CD|Add0~27\ & \U_CLK_GEN|U_CD|Add0~17\) # (\U_CLK_GEN|U_CD|Add0~27\ & \U_CLK_GEN|U_CD|Add0~17COUT1_91\)))))
-- \U_CLK_GEN|U_CD|Add0~12\ = CARRY((\U_CLK_GEN|U_CD|count\(14) & ((!\U_CLK_GEN|U_CD|Add0~17\))))
-- \U_CLK_GEN|U_CD|Add0~12COUT1_92\ = CARRY((\U_CLK_GEN|U_CD|count\(14) & ((!\U_CLK_GEN|U_CD|Add0~17COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(14),
	cin => \U_CLK_GEN|U_CD|Add0~27\,
	cin0 => \U_CLK_GEN|U_CD|Add0~17\,
	cin1 => \U_CLK_GEN|U_CD|Add0~17COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~10_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~12\,
	cout1 => \U_CLK_GEN|U_CD|Add0~12COUT1_92\);

-- Location: LC_X5_Y7_N7
\U_CLK_GEN|U_CD|Add0~5\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~5_combout\ = (\U_CLK_GEN|U_CD|count\(15) $ (((!\U_CLK_GEN|U_CD|Add0~27\ & \U_CLK_GEN|U_CD|Add0~12\) # (\U_CLK_GEN|U_CD|Add0~27\ & \U_CLK_GEN|U_CD|Add0~12COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(15),
	cin => \U_CLK_GEN|U_CD|Add0~27\,
	cin0 => \U_CLK_GEN|U_CD|Add0~12\,
	cin1 => \U_CLK_GEN|U_CD|Add0~12COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~5_combout\);

-- Location: LC_X6_Y7_N9
\U_CLK_GEN|U_CD|count[15]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(15) = DFFEAS((((!\U_CLK_GEN|U_CD|Equal0~4\ & \U_CLK_GEN|U_CD|Add0~5_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~4\,
	datad => \U_CLK_GEN|U_CD|Add0~5_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(15));

-- Location: LC_X4_Y7_N2
\U_CLK_GEN|U_CD|Add0~0\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~0_combout\ = ((!\U_CLK_GEN|U_CD|count\(0)))
-- \U_CLK_GEN|U_CD|Add0~2\ = CARRY(((\U_CLK_GEN|U_CD|count\(0))))
-- \U_CLK_GEN|U_CD|Add0~2COUT1_81\ = CARRY(((\U_CLK_GEN|U_CD|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~0_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~2\,
	cout1 => \U_CLK_GEN|U_CD|Add0~2COUT1_81\);

-- Location: LC_X5_Y7_N9
\U_CLK_GEN|U_CD|count[0]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~0\ = (\U_CLK_GEN|U_CD|count\(14) & (\U_CLK_GEN|U_CD|count\(15) & (F1_count[0] & !\U_CLK_GEN|U_CD|count\(13))))
-- \U_CLK_GEN|U_CD|count\(0) = DFFEAS(\U_CLK_GEN|U_CD|Equal0~0\, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , \U_CLK_GEN|U_CD|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	dataa => \U_CLK_GEN|U_CD|count\(14),
	datab => \U_CLK_GEN|U_CD|count\(15),
	datac => \U_CLK_GEN|U_CD|Add0~0_combout\,
	datad => \U_CLK_GEN|U_CD|count\(13),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Equal0~0\,
	regout => \U_CLK_GEN|U_CD|count\(0));

-- Location: LC_X4_Y7_N3
\U_CLK_GEN|U_CD|Add0~70\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~70_combout\ = (\U_CLK_GEN|U_CD|count\(1) $ ((\U_CLK_GEN|U_CD|Add0~2\)))
-- \U_CLK_GEN|U_CD|Add0~72\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~2\) # (!\U_CLK_GEN|U_CD|count\(1))))
-- \U_CLK_GEN|U_CD|Add0~72COUT1_82\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~2COUT1_81\) # (!\U_CLK_GEN|U_CD|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(1),
	cin0 => \U_CLK_GEN|U_CD|Add0~2\,
	cin1 => \U_CLK_GEN|U_CD|Add0~2COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~70_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~72\,
	cout1 => \U_CLK_GEN|U_CD|Add0~72COUT1_82\);

-- Location: LC_X4_Y7_N0
\U_CLK_GEN|U_CD|count[1]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(1) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~70_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datad => \U_CLK_GEN|U_CD|Add0~70_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(1));

-- Location: LC_X4_Y7_N4
\U_CLK_GEN|U_CD|Add0~65\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~65_combout\ = \U_CLK_GEN|U_CD|count\(2) $ ((((!\U_CLK_GEN|U_CD|Add0~72\))))
-- \U_CLK_GEN|U_CD|Add0~67\ = CARRY((\U_CLK_GEN|U_CD|count\(2) & ((!\U_CLK_GEN|U_CD|Add0~72COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(2),
	cin0 => \U_CLK_GEN|U_CD|Add0~72\,
	cin1 => \U_CLK_GEN|U_CD|Add0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~65_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~67\);

-- Location: LC_X3_Y7_N5
\U_CLK_GEN|U_CD|count[2]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(2) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~65_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datad => \U_CLK_GEN|U_CD|Add0~65_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(2));

-- Location: LC_X4_Y7_N5
\U_CLK_GEN|U_CD|Add0~60\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~60_combout\ = (\U_CLK_GEN|U_CD|count\(3) $ ((\U_CLK_GEN|U_CD|Add0~67\)))
-- \U_CLK_GEN|U_CD|Add0~62\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~67\) # (!\U_CLK_GEN|U_CD|count\(3))))
-- \U_CLK_GEN|U_CD|Add0~62COUT1_83\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~67\) # (!\U_CLK_GEN|U_CD|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(3),
	cin => \U_CLK_GEN|U_CD|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~60_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~62\,
	cout1 => \U_CLK_GEN|U_CD|Add0~62COUT1_83\);

-- Location: LC_X4_Y7_N1
\U_CLK_GEN|U_CD|count[3]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~3\ = (!\U_CLK_GEN|U_CD|count\(4) & (\U_CLK_GEN|U_CD|count\(1) & (F1_count[3] & \U_CLK_GEN|U_CD|count\(2))))
-- \U_CLK_GEN|U_CD|count\(3) = DFFEAS(\U_CLK_GEN|U_CD|Equal0~3\, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , \U_CLK_GEN|U_CD|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	dataa => \U_CLK_GEN|U_CD|count\(4),
	datab => \U_CLK_GEN|U_CD|count\(1),
	datac => \U_CLK_GEN|U_CD|Add0~60_combout\,
	datad => \U_CLK_GEN|U_CD|count\(2),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Equal0~3\,
	regout => \U_CLK_GEN|U_CD|count\(3));

-- Location: LC_X4_Y7_N6
\U_CLK_GEN|U_CD|Add0~75\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~75_combout\ = (\U_CLK_GEN|U_CD|count\(4) $ ((!(!\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~62\) # (\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~62COUT1_83\))))
-- \U_CLK_GEN|U_CD|Add0~77\ = CARRY(((\U_CLK_GEN|U_CD|count\(4) & !\U_CLK_GEN|U_CD|Add0~62\)))
-- \U_CLK_GEN|U_CD|Add0~77COUT1_84\ = CARRY(((\U_CLK_GEN|U_CD|count\(4) & !\U_CLK_GEN|U_CD|Add0~62COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(4),
	cin => \U_CLK_GEN|U_CD|Add0~67\,
	cin0 => \U_CLK_GEN|U_CD|Add0~62\,
	cin1 => \U_CLK_GEN|U_CD|Add0~62COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~75_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~77\,
	cout1 => \U_CLK_GEN|U_CD|Add0~77COUT1_84\);

-- Location: LC_X5_Y7_N8
\U_CLK_GEN|U_CD|count[4]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(4) = DFFEAS(((\U_CLK_GEN|U_CD|Add0~75_combout\ & (!\U_CLK_GEN|U_CD|Equal0~4\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datab => \U_CLK_GEN|U_CD|Add0~75_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~4\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(4));

-- Location: LC_X4_Y7_N7
\U_CLK_GEN|U_CD|Add0~55\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~55_combout\ = (\U_CLK_GEN|U_CD|count\(5) $ (((!\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~77\) # (\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~77COUT1_84\))))
-- \U_CLK_GEN|U_CD|Add0~57\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~77\) # (!\U_CLK_GEN|U_CD|count\(5))))
-- \U_CLK_GEN|U_CD|Add0~57COUT1_85\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~77COUT1_84\) # (!\U_CLK_GEN|U_CD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(5),
	cin => \U_CLK_GEN|U_CD|Add0~67\,
	cin0 => \U_CLK_GEN|U_CD|Add0~77\,
	cin1 => \U_CLK_GEN|U_CD|Add0~77COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~55_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~57\,
	cout1 => \U_CLK_GEN|U_CD|Add0~57COUT1_85\);

-- Location: LC_X3_Y7_N6
\U_CLK_GEN|U_CD|count[5]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(5) = DFFEAS(GND, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , \U_CLK_GEN|U_CD|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datac => \U_CLK_GEN|U_CD|Add0~55_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(5));

-- Location: LC_X4_Y7_N8
\U_CLK_GEN|U_CD|Add0~45\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~45_combout\ = (\U_CLK_GEN|U_CD|count\(6) $ ((!(!\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~57\) # (\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~57COUT1_85\))))
-- \U_CLK_GEN|U_CD|Add0~47\ = CARRY(((\U_CLK_GEN|U_CD|count\(6) & !\U_CLK_GEN|U_CD|Add0~57\)))
-- \U_CLK_GEN|U_CD|Add0~47COUT1_86\ = CARRY(((\U_CLK_GEN|U_CD|count\(6) & !\U_CLK_GEN|U_CD|Add0~57COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(6),
	cin => \U_CLK_GEN|U_CD|Add0~67\,
	cin0 => \U_CLK_GEN|U_CD|Add0~57\,
	cin1 => \U_CLK_GEN|U_CD|Add0~57COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~45_combout\,
	cout0 => \U_CLK_GEN|U_CD|Add0~47\,
	cout1 => \U_CLK_GEN|U_CD|Add0~47COUT1_86\);

-- Location: LC_X3_Y7_N4
\U_CLK_GEN|U_CD|count[6]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(6) = DFFEAS(((\U_CLK_GEN|U_CD|Add0~45_combout\ & ((!\U_CLK_GEN|U_CD|Equal0~4\)))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datab => \U_CLK_GEN|U_CD|Add0~45_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~4\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(6));

-- Location: LC_X4_Y7_N9
\U_CLK_GEN|U_CD|Add0~50\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~50_combout\ = (\U_CLK_GEN|U_CD|count\(7) $ (((!\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~47\) # (\U_CLK_GEN|U_CD|Add0~67\ & \U_CLK_GEN|U_CD|Add0~47COUT1_86\))))
-- \U_CLK_GEN|U_CD|Add0~52\ = CARRY(((!\U_CLK_GEN|U_CD|Add0~47COUT1_86\) # (!\U_CLK_GEN|U_CD|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(7),
	cin => \U_CLK_GEN|U_CD|Add0~67\,
	cin0 => \U_CLK_GEN|U_CD|Add0~47\,
	cin1 => \U_CLK_GEN|U_CD|Add0~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Add0~50_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~52\);

-- Location: LC_X6_Y7_N3
\U_CLK_GEN|U_CD|count[7]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~2\ = (\U_CLK_GEN|U_CD|count\(8) & (!\U_CLK_GEN|U_CD|count\(5) & (!F1_count[7] & \U_CLK_GEN|U_CD|count\(6))))
-- \U_CLK_GEN|U_CD|count\(7) = DFFEAS(\U_CLK_GEN|U_CD|Equal0~2\, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , \U_CLK_GEN|U_CD|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	dataa => \U_CLK_GEN|U_CD|count\(8),
	datab => \U_CLK_GEN|U_CD|count\(5),
	datac => \U_CLK_GEN|U_CD|Add0~50_combout\,
	datad => \U_CLK_GEN|U_CD|count\(6),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Equal0~2\,
	regout => \U_CLK_GEN|U_CD|count\(7));

-- Location: LC_X6_Y7_N6
\U_CLK_GEN|U_CD|temp\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~4\ = (\U_CLK_GEN|U_CD|Equal0~0\ & (\U_CLK_GEN|U_CD|Equal0~1\ & (\U_CLK_GEN|U_CD|Equal0~3\ & \U_CLK_GEN|U_CD|Equal0~2\)))
-- \U_CLK_GEN|U_CD|temp~regout\ = DFFEAS(\U_CLK_GEN|U_CD|Equal0~4\, GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	dataa => \U_CLK_GEN|U_CD|Equal0~0\,
	datab => \U_CLK_GEN|U_CD|Equal0~1\,
	datac => \U_CLK_GEN|U_CD|Equal0~3\,
	datad => \U_CLK_GEN|U_CD|Equal0~2\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|U_CD|Equal0~4\,
	regout => \U_CLK_GEN|U_CD|temp~regout\);

-- Location: LC_X6_Y7_N5
\U_CLK_GEN|U_CD|count[8]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(8) = DFFEAS((((!\U_CLK_GEN|U_CD|Equal0~4\ & \U_CLK_GEN|U_CD|Add0~40_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~4\,
	datad => \U_CLK_GEN|U_CD|Add0~40_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(8));

-- Location: LC_X6_Y7_N4
\U_CLK_GEN|U_CD|count[11]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(11) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~30_combout\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datad => \U_CLK_GEN|U_CD|Add0~30_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(11));

-- Location: LC_X6_Y7_N7
\U_CLK_GEN|U_CD|count[14]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|U_CD|count\(14) = DFFEAS((((\U_CLK_GEN|U_CD|Add0~10_combout\ & !\U_CLK_GEN|U_CD|Equal0~4\))), GLOBAL(\clk50MHz~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~combout\,
	datac => \U_CLK_GEN|U_CD|Add0~10_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~4\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|U_CD|count\(14));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(1),
	combout => \button~combout\(1));

-- Location: LC_X11_Y11_N5
\U_CLK_GEN|Add0~12\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~12_combout\ = (!\button~combout\(1) & ((\U_CLK_GEN|cnt\(0)) # ((!\U_CLK_GEN|Equal0~9_combout\ & !\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(0),
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \button~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~12_combout\);

-- Location: LC_X11_Y11_N6
\U_CLK_GEN|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(0) = DFFEAS((((!\U_CLK_GEN|Add0~12_combout\))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), VCC, , , VCC, GLOBAL(\rst~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	datac => VCC,
	datad => \U_CLK_GEN|Add0~12_combout\,
	aclr => GND,
	aload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(0));

-- Location: LC_X12_Y11_N4
\U_CLK_GEN|Add0~189\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~189_cout\ = CARRY(((!\U_CLK_GEN|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~187\,
	cout => \U_CLK_GEN|Add0~189_cout\);

-- Location: LC_X12_Y11_N5
\U_CLK_GEN|Add0~175\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~175_combout\ = (\U_CLK_GEN|cnt\(1) $ ((\U_CLK_GEN|Add0~189_cout\)))
-- \U_CLK_GEN|Add0~177\ = CARRY(((!\U_CLK_GEN|Add0~189_cout\) # (!\U_CLK_GEN|cnt\(1))))
-- \U_CLK_GEN|Add0~177COUT1_193\ = CARRY(((!\U_CLK_GEN|Add0~189_cout\) # (!\U_CLK_GEN|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(1),
	cin => \U_CLK_GEN|Add0~189_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~175_combout\,
	cout0 => \U_CLK_GEN|Add0~177\,
	cout1 => \U_CLK_GEN|Add0~177COUT1_193\);

-- Location: LC_X12_Y11_N1
\U_CLK_GEN|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(1) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~175_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~175_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(1));

-- Location: LC_X12_Y11_N6
\U_CLK_GEN|Add0~169\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~169_combout\ = \U_CLK_GEN|cnt\(2) $ ((((!(!\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~177\) # (\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~177COUT1_193\)))))
-- \U_CLK_GEN|Add0~171\ = CARRY((\U_CLK_GEN|cnt\(2) & ((!\U_CLK_GEN|Add0~177\))))
-- \U_CLK_GEN|Add0~171COUT1_194\ = CARRY((\U_CLK_GEN|cnt\(2) & ((!\U_CLK_GEN|Add0~177COUT1_193\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(2),
	cin => \U_CLK_GEN|Add0~189_cout\,
	cin0 => \U_CLK_GEN|Add0~177\,
	cin1 => \U_CLK_GEN|Add0~177COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~169_combout\,
	cout0 => \U_CLK_GEN|Add0~171\,
	cout1 => \U_CLK_GEN|Add0~171COUT1_194\);

-- Location: LC_X11_Y11_N9
\U_CLK_GEN|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(2) = DFFEAS((\U_CLK_GEN|Add0~169_combout\ & (!\button~combout\(1) & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~169_combout\,
	datad => \button~combout\(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(2));

-- Location: LC_X12_Y11_N7
\U_CLK_GEN|Add0~181\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~181_combout\ = (\U_CLK_GEN|cnt\(3) $ (((!\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~171\) # (\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~171COUT1_194\))))
-- \U_CLK_GEN|Add0~183\ = CARRY(((!\U_CLK_GEN|Add0~171\) # (!\U_CLK_GEN|cnt\(3))))
-- \U_CLK_GEN|Add0~183COUT1_195\ = CARRY(((!\U_CLK_GEN|Add0~171COUT1_194\) # (!\U_CLK_GEN|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(3),
	cin => \U_CLK_GEN|Add0~189_cout\,
	cin0 => \U_CLK_GEN|Add0~171\,
	cin1 => \U_CLK_GEN|Add0~171COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~181_combout\,
	cout0 => \U_CLK_GEN|Add0~183\,
	cout1 => \U_CLK_GEN|Add0~183COUT1_195\);

-- Location: LC_X11_Y11_N2
\U_CLK_GEN|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(3) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~181_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~181_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(3));

-- Location: LC_X12_Y11_N8
\U_CLK_GEN|Add0~163\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~163_combout\ = (\U_CLK_GEN|cnt\(4) $ ((!(!\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~183\) # (\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~183COUT1_195\))))
-- \U_CLK_GEN|Add0~165\ = CARRY(((\U_CLK_GEN|cnt\(4) & !\U_CLK_GEN|Add0~183\)))
-- \U_CLK_GEN|Add0~165COUT1_196\ = CARRY(((\U_CLK_GEN|cnt\(4) & !\U_CLK_GEN|Add0~183COUT1_195\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(4),
	cin => \U_CLK_GEN|Add0~189_cout\,
	cin0 => \U_CLK_GEN|Add0~183\,
	cin1 => \U_CLK_GEN|Add0~183COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~163_combout\,
	cout0 => \U_CLK_GEN|Add0~165\,
	cout1 => \U_CLK_GEN|Add0~165COUT1_196\);

-- Location: LC_X11_Y11_N7
\U_CLK_GEN|cnt[4]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(4) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~163_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~163_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(4));

-- Location: LC_X11_Y11_N8
\U_CLK_GEN|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~8_combout\ = (\U_CLK_GEN|cnt\(1)) # ((\U_CLK_GEN|cnt\(2)) # ((\U_CLK_GEN|cnt\(4)) # (!\U_CLK_GEN|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(1),
	datab => \U_CLK_GEN|cnt\(2),
	datac => \U_CLK_GEN|cnt\(4),
	datad => \U_CLK_GEN|cnt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~8_combout\);

-- Location: LC_X12_Y11_N9
\U_CLK_GEN|Add0~157\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~157_combout\ = (\U_CLK_GEN|cnt\(5) $ (((!\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~165\) # (\U_CLK_GEN|Add0~189_cout\ & \U_CLK_GEN|Add0~165COUT1_196\))))
-- \U_CLK_GEN|Add0~159\ = CARRY(((!\U_CLK_GEN|Add0~165COUT1_196\) # (!\U_CLK_GEN|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(5),
	cin => \U_CLK_GEN|Add0~189_cout\,
	cin0 => \U_CLK_GEN|Add0~165\,
	cin1 => \U_CLK_GEN|Add0~165COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~157_combout\,
	cout => \U_CLK_GEN|Add0~159\);

-- Location: LC_X11_Y11_N4
\U_CLK_GEN|cnt[5]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(5) = DFFEAS((\U_CLK_GEN|Add0~157_combout\ & (!\button~combout\(1) & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~157_combout\,
	datad => \button~combout\(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(5));

-- Location: LC_X13_Y11_N0
\U_CLK_GEN|Add0~151\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~151_combout\ = \U_CLK_GEN|cnt\(6) $ ((((!\U_CLK_GEN|Add0~159\))))
-- \U_CLK_GEN|Add0~153\ = CARRY((\U_CLK_GEN|cnt\(6) & ((!\U_CLK_GEN|Add0~159\))))
-- \U_CLK_GEN|Add0~153COUT1_197\ = CARRY((\U_CLK_GEN|cnt\(6) & ((!\U_CLK_GEN|Add0~159\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(6),
	cin => \U_CLK_GEN|Add0~159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~151_combout\,
	cout0 => \U_CLK_GEN|Add0~153\,
	cout1 => \U_CLK_GEN|Add0~153COUT1_197\);

-- Location: LC_X12_Y11_N0
\U_CLK_GEN|cnt[6]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(6) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~151_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~151_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(6));

-- Location: LC_X13_Y11_N1
\U_CLK_GEN|Add0~145\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~145_combout\ = (\U_CLK_GEN|cnt\(7) $ (((!\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~153\) # (\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~153COUT1_197\))))
-- \U_CLK_GEN|Add0~147\ = CARRY(((!\U_CLK_GEN|Add0~153\) # (!\U_CLK_GEN|cnt\(7))))
-- \U_CLK_GEN|Add0~147COUT1_198\ = CARRY(((!\U_CLK_GEN|Add0~153COUT1_197\) # (!\U_CLK_GEN|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(7),
	cin => \U_CLK_GEN|Add0~159\,
	cin0 => \U_CLK_GEN|Add0~153\,
	cin1 => \U_CLK_GEN|Add0~153COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~145_combout\,
	cout0 => \U_CLK_GEN|Add0~147\,
	cout1 => \U_CLK_GEN|Add0~147COUT1_198\);

-- Location: LC_X12_Y11_N2
\U_CLK_GEN|cnt[7]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(7) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~145_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~145_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(7));

-- Location: LC_X13_Y11_N2
\U_CLK_GEN|Add0~139\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~139_combout\ = (\U_CLK_GEN|cnt\(8) $ ((!(!\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~147\) # (\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~147COUT1_198\))))
-- \U_CLK_GEN|Add0~141\ = CARRY(((\U_CLK_GEN|cnt\(8) & !\U_CLK_GEN|Add0~147\)))
-- \U_CLK_GEN|Add0~141COUT1_199\ = CARRY(((\U_CLK_GEN|cnt\(8) & !\U_CLK_GEN|Add0~147COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(8),
	cin => \U_CLK_GEN|Add0~159\,
	cin0 => \U_CLK_GEN|Add0~147\,
	cin1 => \U_CLK_GEN|Add0~147COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~139_combout\,
	cout0 => \U_CLK_GEN|Add0~141\,
	cout1 => \U_CLK_GEN|Add0~141COUT1_199\);

-- Location: LC_X12_Y11_N3
\U_CLK_GEN|cnt[8]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(8) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~139_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Add0~139_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(8));

-- Location: LC_X11_Y11_N1
\U_CLK_GEN|Equal0~7\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~7_combout\ = (((!\U_CLK_GEN|cnt\(5)) # (!\U_CLK_GEN|cnt\(6))) # (!\U_CLK_GEN|cnt\(7))) # (!\U_CLK_GEN|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(8),
	datab => \U_CLK_GEN|cnt\(7),
	datac => \U_CLK_GEN|cnt\(6),
	datad => \U_CLK_GEN|cnt\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~7_combout\);

-- Location: LC_X13_Y11_N3
\U_CLK_GEN|Add0~133\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~133_combout\ = (\U_CLK_GEN|cnt\(9) $ (((!\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~141\) # (\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~141COUT1_199\))))
-- \U_CLK_GEN|Add0~135\ = CARRY(((!\U_CLK_GEN|Add0~141\) # (!\U_CLK_GEN|cnt\(9))))
-- \U_CLK_GEN|Add0~135COUT1_200\ = CARRY(((!\U_CLK_GEN|Add0~141COUT1_199\) # (!\U_CLK_GEN|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(9),
	cin => \U_CLK_GEN|Add0~159\,
	cin0 => \U_CLK_GEN|Add0~141\,
	cin1 => \U_CLK_GEN|Add0~141COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~133_combout\,
	cout0 => \U_CLK_GEN|Add0~135\,
	cout1 => \U_CLK_GEN|Add0~135COUT1_200\);

-- Location: LC_X9_Y11_N9
\U_CLK_GEN|cnt[9]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(9) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~133_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~133_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(9));

-- Location: LC_X13_Y11_N4
\U_CLK_GEN|Add0~127\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~127_combout\ = (\U_CLK_GEN|cnt\(10) $ ((!(!\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~135\) # (\U_CLK_GEN|Add0~159\ & \U_CLK_GEN|Add0~135COUT1_200\))))
-- \U_CLK_GEN|Add0~129\ = CARRY(((\U_CLK_GEN|cnt\(10) & !\U_CLK_GEN|Add0~135COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(10),
	cin => \U_CLK_GEN|Add0~159\,
	cin0 => \U_CLK_GEN|Add0~135\,
	cin1 => \U_CLK_GEN|Add0~135COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~127_combout\,
	cout => \U_CLK_GEN|Add0~129\);

-- Location: LC_X9_Y11_N0
\U_CLK_GEN|cnt[10]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(10) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~127_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~127_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(10));

-- Location: LC_X13_Y11_N5
\U_CLK_GEN|Add0~121\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~121_combout\ = (\U_CLK_GEN|cnt\(11) $ ((\U_CLK_GEN|Add0~129\)))
-- \U_CLK_GEN|Add0~123\ = CARRY(((!\U_CLK_GEN|Add0~129\) # (!\U_CLK_GEN|cnt\(11))))
-- \U_CLK_GEN|Add0~123COUT1_201\ = CARRY(((!\U_CLK_GEN|Add0~129\) # (!\U_CLK_GEN|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(11),
	cin => \U_CLK_GEN|Add0~129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~121_combout\,
	cout0 => \U_CLK_GEN|Add0~123\,
	cout1 => \U_CLK_GEN|Add0~123COUT1_201\);

-- Location: LC_X9_Y11_N6
\U_CLK_GEN|cnt[11]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(11) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~121_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~121_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(11));

-- Location: LC_X13_Y11_N6
\U_CLK_GEN|Add0~115\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~115_combout\ = (\U_CLK_GEN|cnt\(12) $ ((!(!\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~123\) # (\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~123COUT1_201\))))
-- \U_CLK_GEN|Add0~117\ = CARRY(((\U_CLK_GEN|cnt\(12) & !\U_CLK_GEN|Add0~123\)))
-- \U_CLK_GEN|Add0~117COUT1_202\ = CARRY(((\U_CLK_GEN|cnt\(12) & !\U_CLK_GEN|Add0~123COUT1_201\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(12),
	cin => \U_CLK_GEN|Add0~129\,
	cin0 => \U_CLK_GEN|Add0~123\,
	cin1 => \U_CLK_GEN|Add0~123COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~115_combout\,
	cout0 => \U_CLK_GEN|Add0~117\,
	cout1 => \U_CLK_GEN|Add0~117COUT1_202\);

-- Location: LC_X9_Y11_N3
\U_CLK_GEN|cnt[12]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(12) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~115_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~115_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(12));

-- Location: LC_X9_Y11_N5
\U_CLK_GEN|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~6_combout\ = (\U_CLK_GEN|cnt\(12)) # ((\U_CLK_GEN|cnt\(10)) # ((\U_CLK_GEN|cnt\(11)) # (!\U_CLK_GEN|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(12),
	datab => \U_CLK_GEN|cnt\(10),
	datac => \U_CLK_GEN|cnt\(11),
	datad => \U_CLK_GEN|cnt\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~6_combout\);

-- Location: LC_X13_Y11_N7
\U_CLK_GEN|Add0~109\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~109_combout\ = (\U_CLK_GEN|cnt\(13) $ (((!\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~117\) # (\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~117COUT1_202\))))
-- \U_CLK_GEN|Add0~111\ = CARRY(((!\U_CLK_GEN|Add0~117\) # (!\U_CLK_GEN|cnt\(13))))
-- \U_CLK_GEN|Add0~111COUT1_203\ = CARRY(((!\U_CLK_GEN|Add0~117COUT1_202\) # (!\U_CLK_GEN|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(13),
	cin => \U_CLK_GEN|Add0~129\,
	cin0 => \U_CLK_GEN|Add0~117\,
	cin1 => \U_CLK_GEN|Add0~117COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~109_combout\,
	cout0 => \U_CLK_GEN|Add0~111\,
	cout1 => \U_CLK_GEN|Add0~111COUT1_203\);

-- Location: LC_X16_Y11_N5
\U_CLK_GEN|cnt[13]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(13) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~109_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~109_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(13));

-- Location: LC_X13_Y11_N8
\U_CLK_GEN|Add0~103\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~103_combout\ = (\U_CLK_GEN|cnt\(14) $ ((!(!\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~111\) # (\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~111COUT1_203\))))
-- \U_CLK_GEN|Add0~105\ = CARRY(((\U_CLK_GEN|cnt\(14) & !\U_CLK_GEN|Add0~111\)))
-- \U_CLK_GEN|Add0~105COUT1_204\ = CARRY(((\U_CLK_GEN|cnt\(14) & !\U_CLK_GEN|Add0~111COUT1_203\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(14),
	cin => \U_CLK_GEN|Add0~129\,
	cin0 => \U_CLK_GEN|Add0~111\,
	cin1 => \U_CLK_GEN|Add0~111COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~103_combout\,
	cout0 => \U_CLK_GEN|Add0~105\,
	cout1 => \U_CLK_GEN|Add0~105COUT1_204\);

-- Location: LC_X16_Y11_N9
\U_CLK_GEN|cnt[14]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(14) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~103_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Add0~103_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(14));

-- Location: LC_X13_Y11_N9
\U_CLK_GEN|Add0~97\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~97_combout\ = (\U_CLK_GEN|cnt\(15) $ (((!\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~105\) # (\U_CLK_GEN|Add0~129\ & \U_CLK_GEN|Add0~105COUT1_204\))))
-- \U_CLK_GEN|Add0~99\ = CARRY(((!\U_CLK_GEN|Add0~105COUT1_204\) # (!\U_CLK_GEN|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(15),
	cin => \U_CLK_GEN|Add0~129\,
	cin0 => \U_CLK_GEN|Add0~105\,
	cin1 => \U_CLK_GEN|Add0~105COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~97_combout\,
	cout => \U_CLK_GEN|Add0~99\);

-- Location: LC_X16_Y11_N7
\U_CLK_GEN|cnt[15]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(15) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~97_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~97_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(15));

-- Location: LC_X14_Y11_N0
\U_CLK_GEN|Add0~91\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~91_combout\ = (\U_CLK_GEN|cnt\(16) $ ((!\U_CLK_GEN|Add0~99\)))
-- \U_CLK_GEN|Add0~93\ = CARRY(((\U_CLK_GEN|cnt\(16) & !\U_CLK_GEN|Add0~99\)))
-- \U_CLK_GEN|Add0~93COUT1_205\ = CARRY(((\U_CLK_GEN|cnt\(16) & !\U_CLK_GEN|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(16),
	cin => \U_CLK_GEN|Add0~99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~91_combout\,
	cout0 => \U_CLK_GEN|Add0~93\,
	cout1 => \U_CLK_GEN|Add0~93COUT1_205\);

-- Location: LC_X16_Y11_N8
\U_CLK_GEN|cnt[16]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(16) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~91_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~91_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(16));

-- Location: LC_X16_Y11_N6
\U_CLK_GEN|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~5_combout\ = (\U_CLK_GEN|cnt\(13)) # ((\U_CLK_GEN|cnt\(14)) # ((\U_CLK_GEN|cnt\(15)) # (\U_CLK_GEN|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(13),
	datab => \U_CLK_GEN|cnt\(14),
	datac => \U_CLK_GEN|cnt\(15),
	datad => \U_CLK_GEN|cnt\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~5_combout\);

-- Location: LC_X11_Y11_N0
\U_CLK_GEN|Equal0~9\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~9_combout\ = (\U_CLK_GEN|Equal0~8_combout\) # ((\U_CLK_GEN|Equal0~7_combout\) # ((\U_CLK_GEN|Equal0~6_combout\) # (\U_CLK_GEN|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~8_combout\,
	datab => \U_CLK_GEN|Equal0~7_combout\,
	datac => \U_CLK_GEN|Equal0~6_combout\,
	datad => \U_CLK_GEN|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~9_combout\);

-- Location: LC_X14_Y11_N1
\U_CLK_GEN|Add0~85\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~85_combout\ = (\U_CLK_GEN|cnt\(17) $ (((!\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~93\) # (\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~93COUT1_205\))))
-- \U_CLK_GEN|Add0~87\ = CARRY(((!\U_CLK_GEN|Add0~93\) # (!\U_CLK_GEN|cnt\(17))))
-- \U_CLK_GEN|Add0~87COUT1_206\ = CARRY(((!\U_CLK_GEN|Add0~93COUT1_205\) # (!\U_CLK_GEN|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(17),
	cin => \U_CLK_GEN|Add0~99\,
	cin0 => \U_CLK_GEN|Add0~93\,
	cin1 => \U_CLK_GEN|Add0~93COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~85_combout\,
	cout0 => \U_CLK_GEN|Add0~87\,
	cout1 => \U_CLK_GEN|Add0~87COUT1_206\);

-- Location: LC_X9_Y11_N4
\U_CLK_GEN|cnt[17]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(17) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~85_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~85_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(17));

-- Location: LC_X14_Y11_N2
\U_CLK_GEN|Add0~79\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~79_combout\ = (\U_CLK_GEN|cnt\(18) $ ((!(!\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~87\) # (\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~87COUT1_206\))))
-- \U_CLK_GEN|Add0~81\ = CARRY(((\U_CLK_GEN|cnt\(18) & !\U_CLK_GEN|Add0~87\)))
-- \U_CLK_GEN|Add0~81COUT1_207\ = CARRY(((\U_CLK_GEN|cnt\(18) & !\U_CLK_GEN|Add0~87COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(18),
	cin => \U_CLK_GEN|Add0~99\,
	cin0 => \U_CLK_GEN|Add0~87\,
	cin1 => \U_CLK_GEN|Add0~87COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~79_combout\,
	cout0 => \U_CLK_GEN|Add0~81\,
	cout1 => \U_CLK_GEN|Add0~81COUT1_207\);

-- Location: LC_X9_Y11_N1
\U_CLK_GEN|cnt[18]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(18) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~79_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~79_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(18));

-- Location: LC_X14_Y11_N3
\U_CLK_GEN|Add0~73\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~73_combout\ = (\U_CLK_GEN|cnt\(19) $ (((!\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~81\) # (\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~81COUT1_207\))))
-- \U_CLK_GEN|Add0~75\ = CARRY(((!\U_CLK_GEN|Add0~81\) # (!\U_CLK_GEN|cnt\(19))))
-- \U_CLK_GEN|Add0~75COUT1_208\ = CARRY(((!\U_CLK_GEN|Add0~81COUT1_207\) # (!\U_CLK_GEN|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(19),
	cin => \U_CLK_GEN|Add0~99\,
	cin0 => \U_CLK_GEN|Add0~81\,
	cin1 => \U_CLK_GEN|Add0~81COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~73_combout\,
	cout0 => \U_CLK_GEN|Add0~75\,
	cout1 => \U_CLK_GEN|Add0~75COUT1_208\);

-- Location: LC_X9_Y11_N7
\U_CLK_GEN|cnt[19]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(19) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~73_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~73_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(19));

-- Location: LC_X14_Y11_N4
\U_CLK_GEN|Add0~67\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~67_combout\ = (\U_CLK_GEN|cnt\(20) $ ((!(!\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~75\) # (\U_CLK_GEN|Add0~99\ & \U_CLK_GEN|Add0~75COUT1_208\))))
-- \U_CLK_GEN|Add0~69\ = CARRY(((\U_CLK_GEN|cnt\(20) & !\U_CLK_GEN|Add0~75COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(20),
	cin => \U_CLK_GEN|Add0~99\,
	cin0 => \U_CLK_GEN|Add0~75\,
	cin1 => \U_CLK_GEN|Add0~75COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~67_combout\,
	cout => \U_CLK_GEN|Add0~69\);

-- Location: LC_X9_Y11_N2
\U_CLK_GEN|cnt[20]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(20) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~67_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~67_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(20));

-- Location: LC_X9_Y11_N8
\U_CLK_GEN|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~3_combout\ = (\U_CLK_GEN|cnt\(17)) # ((\U_CLK_GEN|cnt\(18)) # ((\U_CLK_GEN|cnt\(19)) # (\U_CLK_GEN|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(17),
	datab => \U_CLK_GEN|cnt\(18),
	datac => \U_CLK_GEN|cnt\(19),
	datad => \U_CLK_GEN|cnt\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~3_combout\);

-- Location: LC_X14_Y11_N5
\U_CLK_GEN|Add0~61\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~61_combout\ = \U_CLK_GEN|cnt\(21) $ ((((\U_CLK_GEN|Add0~69\))))
-- \U_CLK_GEN|Add0~63\ = CARRY(((!\U_CLK_GEN|Add0~69\)) # (!\U_CLK_GEN|cnt\(21)))
-- \U_CLK_GEN|Add0~63COUT1_209\ = CARRY(((!\U_CLK_GEN|Add0~69\)) # (!\U_CLK_GEN|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(21),
	cin => \U_CLK_GEN|Add0~69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~61_combout\,
	cout0 => \U_CLK_GEN|Add0~63\,
	cout1 => \U_CLK_GEN|Add0~63COUT1_209\);

-- Location: LC_X10_Y11_N4
\U_CLK_GEN|cnt[21]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(21) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~61_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~61_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(21));

-- Location: LC_X14_Y11_N6
\U_CLK_GEN|Add0~55\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~55_combout\ = (\U_CLK_GEN|cnt\(22) $ ((!(!\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~63\) # (\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~63COUT1_209\))))
-- \U_CLK_GEN|Add0~57\ = CARRY(((\U_CLK_GEN|cnt\(22) & !\U_CLK_GEN|Add0~63\)))
-- \U_CLK_GEN|Add0~57COUT1_210\ = CARRY(((\U_CLK_GEN|cnt\(22) & !\U_CLK_GEN|Add0~63COUT1_209\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(22),
	cin => \U_CLK_GEN|Add0~69\,
	cin0 => \U_CLK_GEN|Add0~63\,
	cin1 => \U_CLK_GEN|Add0~63COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~55_combout\,
	cout0 => \U_CLK_GEN|Add0~57\,
	cout1 => \U_CLK_GEN|Add0~57COUT1_210\);

-- Location: LC_X10_Y11_N3
\U_CLK_GEN|cnt[22]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(22) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~55_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~55_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(22));

-- Location: LC_X14_Y11_N7
\U_CLK_GEN|Add0~49\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~49_combout\ = (\U_CLK_GEN|cnt\(23) $ (((!\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~57\) # (\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~57COUT1_210\))))
-- \U_CLK_GEN|Add0~51\ = CARRY(((!\U_CLK_GEN|Add0~57\) # (!\U_CLK_GEN|cnt\(23))))
-- \U_CLK_GEN|Add0~51COUT1_211\ = CARRY(((!\U_CLK_GEN|Add0~57COUT1_210\) # (!\U_CLK_GEN|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(23),
	cin => \U_CLK_GEN|Add0~69\,
	cin0 => \U_CLK_GEN|Add0~57\,
	cin1 => \U_CLK_GEN|Add0~57COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~49_combout\,
	cout0 => \U_CLK_GEN|Add0~51\,
	cout1 => \U_CLK_GEN|Add0~51COUT1_211\);

-- Location: LC_X10_Y11_N9
\U_CLK_GEN|cnt[23]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(23) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~49_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~49_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(23));

-- Location: LC_X14_Y11_N8
\U_CLK_GEN|Add0~43\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~43_combout\ = (\U_CLK_GEN|cnt\(24) $ ((!(!\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~51\) # (\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~51COUT1_211\))))
-- \U_CLK_GEN|Add0~45\ = CARRY(((\U_CLK_GEN|cnt\(24) & !\U_CLK_GEN|Add0~51\)))
-- \U_CLK_GEN|Add0~45COUT1_212\ = CARRY(((\U_CLK_GEN|cnt\(24) & !\U_CLK_GEN|Add0~51COUT1_211\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(24),
	cin => \U_CLK_GEN|Add0~69\,
	cin0 => \U_CLK_GEN|Add0~51\,
	cin1 => \U_CLK_GEN|Add0~51COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~43_combout\,
	cout0 => \U_CLK_GEN|Add0~45\,
	cout1 => \U_CLK_GEN|Add0~45COUT1_212\);

-- Location: LC_X10_Y11_N8
\U_CLK_GEN|cnt[24]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(24) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~43_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~43_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(24));

-- Location: LC_X10_Y11_N2
\U_CLK_GEN|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~2_combout\ = (\U_CLK_GEN|cnt\(22)) # ((\U_CLK_GEN|cnt\(23)) # ((\U_CLK_GEN|cnt\(21)) # (\U_CLK_GEN|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(22),
	datab => \U_CLK_GEN|cnt\(23),
	datac => \U_CLK_GEN|cnt\(21),
	datad => \U_CLK_GEN|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~2_combout\);

-- Location: LC_X14_Y11_N9
\U_CLK_GEN|Add0~37\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~37_combout\ = (\U_CLK_GEN|cnt\(25) $ (((!\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~45\) # (\U_CLK_GEN|Add0~69\ & \U_CLK_GEN|Add0~45COUT1_212\))))
-- \U_CLK_GEN|Add0~39\ = CARRY(((!\U_CLK_GEN|Add0~45COUT1_212\) # (!\U_CLK_GEN|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(25),
	cin => \U_CLK_GEN|Add0~69\,
	cin0 => \U_CLK_GEN|Add0~45\,
	cin1 => \U_CLK_GEN|Add0~45COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~37_combout\,
	cout => \U_CLK_GEN|Add0~39\);

-- Location: LC_X10_Y11_N6
\U_CLK_GEN|cnt[25]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(25) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~37_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~37_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(25));

-- Location: LC_X15_Y11_N0
\U_CLK_GEN|Add0~31\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~31_combout\ = \U_CLK_GEN|cnt\(26) $ ((((!\U_CLK_GEN|Add0~39\))))
-- \U_CLK_GEN|Add0~33\ = CARRY((\U_CLK_GEN|cnt\(26) & ((!\U_CLK_GEN|Add0~39\))))
-- \U_CLK_GEN|Add0~33COUT1_213\ = CARRY((\U_CLK_GEN|cnt\(26) & ((!\U_CLK_GEN|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(26),
	cin => \U_CLK_GEN|Add0~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~31_combout\,
	cout0 => \U_CLK_GEN|Add0~33\,
	cout1 => \U_CLK_GEN|Add0~33COUT1_213\);

-- Location: LC_X15_Y11_N6
\U_CLK_GEN|cnt[26]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(26) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~31_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Add0~31_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(26));

-- Location: LC_X15_Y11_N1
\U_CLK_GEN|Add0~25\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~25_combout\ = (\U_CLK_GEN|cnt\(27) $ (((!\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~33\) # (\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~33COUT1_213\))))
-- \U_CLK_GEN|Add0~27\ = CARRY(((!\U_CLK_GEN|Add0~33\) # (!\U_CLK_GEN|cnt\(27))))
-- \U_CLK_GEN|Add0~27COUT1_214\ = CARRY(((!\U_CLK_GEN|Add0~33COUT1_213\) # (!\U_CLK_GEN|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(27),
	cin => \U_CLK_GEN|Add0~39\,
	cin0 => \U_CLK_GEN|Add0~33\,
	cin1 => \U_CLK_GEN|Add0~33COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~25_combout\,
	cout0 => \U_CLK_GEN|Add0~27\,
	cout1 => \U_CLK_GEN|Add0~27COUT1_214\);

-- Location: LC_X15_Y11_N9
\U_CLK_GEN|cnt[27]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(27) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~25_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~25_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(27));

-- Location: LC_X15_Y11_N2
\U_CLK_GEN|Add0~19\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~19_combout\ = \U_CLK_GEN|cnt\(28) $ ((((!(!\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~27\) # (\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~27COUT1_214\)))))
-- \U_CLK_GEN|Add0~21\ = CARRY((\U_CLK_GEN|cnt\(28) & ((!\U_CLK_GEN|Add0~27\))))
-- \U_CLK_GEN|Add0~21COUT1_215\ = CARRY((\U_CLK_GEN|cnt\(28) & ((!\U_CLK_GEN|Add0~27COUT1_214\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(28),
	cin => \U_CLK_GEN|Add0~39\,
	cin0 => \U_CLK_GEN|Add0~27\,
	cin1 => \U_CLK_GEN|Add0~27COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~19_combout\,
	cout0 => \U_CLK_GEN|Add0~21\,
	cout1 => \U_CLK_GEN|Add0~21COUT1_215\);

-- Location: LC_X15_Y11_N8
\U_CLK_GEN|cnt[28]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(28) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~19_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~19_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(28));

-- Location: LC_X10_Y11_N7
\U_CLK_GEN|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~1_combout\ = (\U_CLK_GEN|cnt\(25)) # ((\U_CLK_GEN|cnt\(28)) # ((\U_CLK_GEN|cnt\(27)) # (\U_CLK_GEN|cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(25),
	datab => \U_CLK_GEN|cnt\(28),
	datac => \U_CLK_GEN|cnt\(27),
	datad => \U_CLK_GEN|cnt\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~1_combout\);

-- Location: LC_X15_Y11_N3
\U_CLK_GEN|Add0~6\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~6_combout\ = (\U_CLK_GEN|cnt\(29) $ (((!\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~21\) # (\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~21COUT1_215\))))
-- \U_CLK_GEN|Add0~8\ = CARRY(((!\U_CLK_GEN|Add0~21\) # (!\U_CLK_GEN|cnt\(29))))
-- \U_CLK_GEN|Add0~8COUT1_216\ = CARRY(((!\U_CLK_GEN|Add0~21COUT1_215\) # (!\U_CLK_GEN|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(29),
	cin => \U_CLK_GEN|Add0~39\,
	cin0 => \U_CLK_GEN|Add0~21\,
	cin1 => \U_CLK_GEN|Add0~21COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~6_combout\,
	cout0 => \U_CLK_GEN|Add0~8\,
	cout1 => \U_CLK_GEN|Add0~8COUT1_216\);

-- Location: LC_X10_Y11_N5
\U_CLK_GEN|cnt[29]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(29) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~6_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~6_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(29));

-- Location: LC_X15_Y11_N4
\U_CLK_GEN|Add0~0\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~0_combout\ = (\U_CLK_GEN|cnt\(30) $ ((!(!\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~8\) # (\U_CLK_GEN|Add0~39\ & \U_CLK_GEN|Add0~8COUT1_216\))))
-- \U_CLK_GEN|Add0~2\ = CARRY(((\U_CLK_GEN|cnt\(30) & !\U_CLK_GEN|Add0~8COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|cnt\(30),
	cin => \U_CLK_GEN|Add0~39\,
	cin0 => \U_CLK_GEN|Add0~8\,
	cin1 => \U_CLK_GEN|Add0~8COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~0_combout\,
	cout => \U_CLK_GEN|Add0~2\);

-- Location: LC_X15_Y11_N7
\U_CLK_GEN|cnt[30]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(30) = DFFEAS((!\button~combout\(1) & (\U_CLK_GEN|Add0~0_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\)))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~0_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(30));

-- Location: LC_X15_Y11_N5
\U_CLK_GEN|Add0~13\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~13_combout\ = ((\U_CLK_GEN|Add0~2\ $ (!\U_CLK_GEN|cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U_CLK_GEN|cnt\(31),
	cin => \U_CLK_GEN|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~13_combout\);

-- Location: LC_X16_Y11_N3
\U_CLK_GEN|Add0~18\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Add0~18_combout\ = (!\button~combout\(1) & (\U_CLK_GEN|Add0~13_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(1),
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Equal0~9_combout\,
	datad => \U_CLK_GEN|Add0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Add0~18_combout\);

-- Location: LC_X16_Y11_N4
\U_CLK_GEN|cnt[31]\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|cnt\(31) = DFFEAS((((!\U_CLK_GEN|Add0~18_combout\))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), VCC, , , VCC, GLOBAL(\rst~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	datac => VCC,
	datad => \U_CLK_GEN|Add0~18_combout\,
	aclr => GND,
	aload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|cnt\(31));

-- Location: LC_X10_Y11_N0
\U_CLK_GEN|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~0_combout\ = (\U_CLK_GEN|cnt\(29)) # (((\U_CLK_GEN|cnt\(30)) # (!\U_CLK_GEN|cnt\(31))) # (!\U_CLK_GEN|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|cnt\(29),
	datab => \U_CLK_GEN|cnt\(0),
	datac => \U_CLK_GEN|cnt\(30),
	datad => \U_CLK_GEN|cnt\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~0_combout\);

-- Location: LC_X10_Y11_N1
\U_CLK_GEN|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|Equal0~4_combout\ = (\U_CLK_GEN|Equal0~3_combout\) # ((\U_CLK_GEN|Equal0~2_combout\) # ((\U_CLK_GEN|Equal0~1_combout\) # (\U_CLK_GEN|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~3_combout\,
	datab => \U_CLK_GEN|Equal0~2_combout\,
	datac => \U_CLK_GEN|Equal0~1_combout\,
	datad => \U_CLK_GEN|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_CLK_GEN|Equal0~4_combout\);

-- Location: LC_X12_Y7_N2
\U_CLK_GEN|temp\ : maxii_lcell
-- Equation(s):
-- \U_CLK_GEN|temp~regout\ = DFFEAS(((!\button~combout\(1) & (!\U_CLK_GEN|Equal0~4_combout\ & !\U_CLK_GEN|Equal0~9_combout\))), GLOBAL(\U_CLK_GEN|U_CD|temp~regout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|temp~regout\,
	datab => \button~combout\(1),
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_CLK_GEN|temp~regout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(9),
	combout => \switch~combout\(9));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(4),
	combout => \switch~combout\(4));

-- Location: LC_X20_Y13_N1
\U_COUNTER|cnt[3]\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux3~0\ = (\U_COUNTER|cnt\(0) & (\U_COUNTER|cnt\(2) $ (((!\U_COUNTER|cnt\(1)))))) # (!\U_COUNTER|cnt\(0) & ((\U_COUNTER|cnt\(2) & (!C1_cnt[3] & !\U_COUNTER|cnt\(1))) # (!\U_COUNTER|cnt\(2) & (C1_cnt[3] & \U_COUNTER|cnt\(1)))))
-- \U_COUNTER|cnt\(3) = DFFEAS(\U_LED4|Mux3~0\, GLOBAL(\U_CLK_GEN|temp~regout\), !GLOBAL(\rst~combout\), , !\switch~combout\(4), \switch~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9846",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp~regout\,
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(0),
	datac => \switch~combout\(9),
	datad => \U_COUNTER|cnt\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux3~0\,
	regout => \U_COUNTER|cnt\(3));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(6),
	combout => \switch~combout\(6));

-- Location: LC_X20_Y13_N9
\U_COUNTER|cnt[0]\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux6~0\ = (C1_cnt[0] & ((\U_COUNTER|cnt\(3)) # (\U_COUNTER|cnt\(2) $ (\U_COUNTER|cnt\(1))))) # (!C1_cnt[0] & ((\U_COUNTER|cnt\(1)) # (\U_COUNTER|cnt\(2) $ (\U_COUNTER|cnt\(3)))))
-- \U_COUNTER|cnt\(0) = DFFEAS(\U_LED4|Mux6~0\, GLOBAL(\U_CLK_GEN|temp~regout\), !GLOBAL(\rst~combout\), , !\switch~combout\(4), \switch~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfe6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp~regout\,
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(3),
	datac => \switch~combout\(6),
	datad => \U_COUNTER|cnt\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux6~0\,
	regout => \U_COUNTER|cnt\(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(7),
	combout => \switch~combout\(7));

-- Location: LC_X20_Y13_N3
\U_COUNTER|cnt[1]\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux5~0\ = (\U_COUNTER|cnt\(2) & (\U_COUNTER|cnt\(0) & (C1_cnt[1] $ (\U_COUNTER|cnt\(3))))) # (!\U_COUNTER|cnt\(2) & (!\U_COUNTER|cnt\(3) & ((\U_COUNTER|cnt\(0)) # (C1_cnt[1]))))
-- \U_COUNTER|cnt\(1) = DFFEAS(\U_LED4|Mux5~0\, GLOBAL(\U_CLK_GEN|temp~regout\), !GLOBAL(\rst~combout\), , !\switch~combout\(4), \switch~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08d4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp~regout\,
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(0),
	datac => \switch~combout\(7),
	datad => \U_COUNTER|cnt\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux5~0\,
	regout => \U_COUNTER|cnt\(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(8),
	combout => \switch~combout\(8));

-- Location: LC_X20_Y13_N8
\U_COUNTER|cnt[2]\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux4~0\ = (\U_COUNTER|cnt\(1) & (\U_COUNTER|cnt\(0) & ((!\U_COUNTER|cnt\(3))))) # (!\U_COUNTER|cnt\(1) & ((C1_cnt[2] & ((!\U_COUNTER|cnt\(3)))) # (!C1_cnt[2] & (\U_COUNTER|cnt\(0)))))
-- \U_COUNTER|cnt\(2) = DFFEAS(\U_LED4|Mux4~0\, GLOBAL(\U_CLK_GEN|temp~regout\), !GLOBAL(\rst~combout\), , !\switch~combout\(4), \switch~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04dc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp~regout\,
	dataa => \U_COUNTER|cnt\(1),
	datab => \U_COUNTER|cnt\(0),
	datac => \switch~combout\(8),
	datad => \U_COUNTER|cnt\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \ALT_INV_switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux4~0\,
	regout => \U_COUNTER|cnt\(2));

-- Location: LC_X20_Y13_N5
\U_LED4|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\U_COUNTER|cnt\(2) & (\U_COUNTER|cnt\(3) & ((\U_COUNTER|cnt\(1)) # (!\U_COUNTER|cnt\(0))))) # (!\U_COUNTER|cnt\(2) & (!\U_COUNTER|cnt\(0) & (!\U_COUNTER|cnt\(3) & \U_COUNTER|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(0),
	datac => \U_COUNTER|cnt\(3),
	datad => \U_COUNTER|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LC_X20_Y13_N7
\U_LED4|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\U_COUNTER|cnt\(3) & ((\U_COUNTER|cnt\(0) & ((\U_COUNTER|cnt\(1)))) # (!\U_COUNTER|cnt\(0) & (\U_COUNTER|cnt\(2))))) # (!\U_COUNTER|cnt\(3) & (\U_COUNTER|cnt\(2) & (\U_COUNTER|cnt\(0) $ (\U_COUNTER|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(0),
	datac => \U_COUNTER|cnt\(3),
	datad => \U_COUNTER|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LC_X20_Y13_N2
\U_LED4|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\U_COUNTER|cnt\(2) & (!\U_COUNTER|cnt\(1) & (\U_COUNTER|cnt\(0) $ (!\U_COUNTER|cnt\(3))))) # (!\U_COUNTER|cnt\(2) & (\U_COUNTER|cnt\(0) & (\U_COUNTER|cnt\(3) $ (!\U_COUNTER|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4086",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|cnt\(2),
	datab => \U_COUNTER|cnt\(0),
	datac => \U_COUNTER|cnt\(3),
	datad => \U_COUNTER|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U_LED4|Mux0~0_combout\);

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(0));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(1));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(2));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(0));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led0(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(1));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(2));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(3));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(4));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(5));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led0(6));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led0_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led0_dp);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led1(0));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(3));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(4));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(5));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1(6));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led1_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led1_dp);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led2(0));

-- Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(2));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(5));

-- Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led2(6));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led2_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led2_dp);

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led3(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(2));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(3));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(4));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(5));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led3(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led3_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led3_dp);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|ALT_INV_Mux6~0\,
	oe => VCC,
	padio => ww_led4(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux5~0\,
	oe => VCC,
	padio => ww_led4(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux4~0\,
	oe => VCC,
	padio => ww_led4(2));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux3~0\,
	oe => VCC,
	padio => ww_led4(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux2~0_combout\,
	oe => VCC,
	padio => ww_led4(4));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux1~0_combout\,
	oe => VCC,
	padio => ww_led4(5));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U_LED4|Mux0~0_combout\,
	oe => VCC,
	padio => ww_led4(6));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led4_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led4_dp);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led5(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(1));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(3));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(4));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(5));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led5(6));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led5_dp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_led5_dp);
END structure;


