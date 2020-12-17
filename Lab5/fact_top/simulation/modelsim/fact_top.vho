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

-- DATE "10/20/2020 19:20:37"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	rst : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic;
	led4 : OUT std_logic_vector(6 DOWNTO 0);
	led4_dp : OUT std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	led5_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- rst	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_FACT|U_CT|Selector0~0_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state0~q\ : std_logic;
SIGNAL \U_FACT|U_CT|next_state.state1~0_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state1~q\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|regN_sel~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[244]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[243]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[242]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[241]~15_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[240]~16_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[0]~15_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~1\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~2_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[1]~14_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~3\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~4_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[2]~13_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~5\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~6_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[3]~12_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~7\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~8_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[4]~11_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~9\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[245]~17_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[5]~10_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~11\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[246]~12_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[6]~9_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~13\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~14_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[7]~8_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~15\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~16_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[8]~7_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[8]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~17\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~18_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[9]~6_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[9]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~19\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[10]~5_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[10]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~21\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~22_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[11]~4_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[11]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_COMP|LessThan0~1_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_COMP|LessThan0~3_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_COMP|LessThan0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~23\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~24_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[12]~3_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[12]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~25\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~26_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[13]~2_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[13]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~27\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~28_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[14]~1_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[14]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~29\ : std_logic;
SIGNAL \U_FACT|U_DP|U_DECREMENTOR|Add0~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[15]~0_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output[15]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_COMP|LessThan0~0_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_COMP|LessThan0~4_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|Selector1~0_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state2~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state2~q\ : std_logic;
SIGNAL \U_FACT|U_CT|next_state.state3~0_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state3~q\ : std_logic;
SIGNAL \U_FACT|U_CT|Selector2~0_combout\ : std_logic;
SIGNAL \U_FACT|U_CT|state.state4~q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[15]~2_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[14]~3_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[13]~4_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[12]~5_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[11]~6_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[10]~7_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[9]~8_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[8]~9_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[7]~10_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[6]~11_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[5]~12_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[4]~13_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[3]~14_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[1]~1_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[0]~0_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \U_FACT|U_DP|U_MUX_tempFact|output[2]~15_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_output|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_output|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_output|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_output|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_tempFact|output[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_output|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux6~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux4~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux3~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux1~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|Mux0~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~4_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~5_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|LessThan82~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux6~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux4~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux3~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux1~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|Mux0~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux6~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux4~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux3~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux1~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|Mux0~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux6~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux4~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux3~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux1~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|Mux0~0_combout\ : std_logic;
SIGNAL \U_FACT|U_DP|U_REG_regN|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_FACT|U_DP|U_REG_output|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_SEG_CONTL|displ3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_SEG_CONTL|displ0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_switch[8]~input_o\ : std_logic;
SIGNAL \U_FACT|U_CT|ALT_INV_Selector1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT29\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT25\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT21\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT17\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT13\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT9\
& \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~dataout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~3\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~2\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~1\ & 
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~0\);

\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~0\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~1\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~2\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~3\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~dataout\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\U_FACT|U_DP|U_REG_regN|output\(15) & \U_FACT|U_DP|U_REG_regN|output\(14) & \U_FACT|U_DP|U_REG_regN|output\(13) & \U_FACT|U_DP|U_REG_regN|output\(12) & 
\U_FACT|U_DP|U_REG_regN|output\(11) & \U_FACT|U_DP|U_REG_regN|output\(10) & \U_FACT|U_DP|U_REG_regN|output\(9) & \U_FACT|U_DP|U_REG_regN|output\(8) & \U_FACT|U_DP|U_REG_regN|output\(7) & \U_FACT|U_DP|U_REG_regN|output\(6) & 
\U_FACT|U_DP|U_REG_regN|output\(5) & \U_FACT|U_DP|U_REG_regN|output\(4) & \U_FACT|U_DP|U_REG_regN|output\(3) & \U_FACT|U_DP|U_REG_regN|output\(2) & \U_FACT|U_DP|U_REG_regN|output\(1) & \U_FACT|U_DP|U_REG_regN|output\(0) & gnd & gnd);

\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\U_FACT|U_DP|U_MUX_tempFact|output[15]~2_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[14]~3_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[13]~4_combout\ & 
\U_FACT|U_DP|U_MUX_tempFact|output[12]~5_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[11]~6_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[10]~7_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[9]~8_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[8]~9_combout\
& \U_FACT|U_DP|U_MUX_tempFact|output[7]~10_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[6]~11_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[5]~12_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[4]~13_combout\ & 
\U_FACT|U_DP|U_MUX_tempFact|output[3]~14_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[2]~15_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[1]~1_combout\ & \U_FACT|U_DP|U_MUX_tempFact|output[0]~0_combout\ & gnd & gnd);

\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~0\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~1\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~2\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~3\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~dataout\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_SEG_CONTL|displ3|ALT_INV_Mux2~0_combout\ <= NOT \U_SEG_CONTL|displ3|Mux2~0_combout\;
\U_SEG_CONTL|displ3|ALT_INV_Mux5~0_combout\ <= NOT \U_SEG_CONTL|displ3|Mux5~0_combout\;
\U_SEG_CONTL|displ2|ALT_INV_Mux2~0_combout\ <= NOT \U_SEG_CONTL|displ2|Mux2~0_combout\;
\U_SEG_CONTL|displ2|ALT_INV_Mux5~0_combout\ <= NOT \U_SEG_CONTL|displ2|Mux5~0_combout\;
\U_SEG_CONTL|displ1|ALT_INV_Mux2~0_combout\ <= NOT \U_SEG_CONTL|displ1|Mux2~0_combout\;
\U_SEG_CONTL|displ1|ALT_INV_Mux5~0_combout\ <= NOT \U_SEG_CONTL|displ1|Mux5~0_combout\;
\U_SEG_CONTL|displ0|ALT_INV_Mux2~0_combout\ <= NOT \U_SEG_CONTL|displ0|Mux2~0_combout\;
\U_SEG_CONTL|displ0|ALT_INV_Mux5~0_combout\ <= NOT \U_SEG_CONTL|displ0|Mux5~0_combout\;
\ALT_INV_switch[8]~input_o\ <= NOT \switch[8]~input_o\;
\U_FACT|U_CT|ALT_INV_Selector1~0_combout\ <= NOT \U_FACT|U_CT|Selector1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X74_Y54_N23
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FACT|U_CT|state.state4~q\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FACT|U_CT|state.state4~q\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FACT|U_CT|state.state4~q\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FACT|U_CT|state.state4~q\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG_CONTL|displ3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G9
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X66_Y47_N4
\U_FACT|U_CT|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|Selector0~0_combout\ = (\switch[9]~input_o\) # ((!\U_FACT|U_CT|state.state4~q\ & \U_FACT|U_CT|state.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state4~q\,
	datac => \U_FACT|U_CT|state.state0~q\,
	datad => \switch[9]~input_o\,
	combout => \U_FACT|U_CT|Selector0~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: FF_X66_Y47_N5
\U_FACT|U_CT|state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_CT|Selector0~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_CT|state.state0~q\);

-- Location: LCCOMB_X66_Y47_N14
\U_FACT|U_CT|next_state.state1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|next_state.state1~0_combout\ = (!\U_FACT|U_CT|state.state0~q\ & \switch[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FACT|U_CT|state.state0~q\,
	datad => \switch[9]~input_o\,
	combout => \U_FACT|U_CT|next_state.state1~0_combout\);

-- Location: FF_X66_Y47_N15
\U_FACT|U_CT|state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_CT|next_state.state1~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_CT|state.state1~q\);

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X63_Y47_N4
\Mod0|auto_generated|divider|divider|op_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~0_combout\ = \switch[1]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_5~1\ = CARRY(\switch[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X63_Y47_N6
\Mod0|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~2_combout\ = (\switch[2]~input_o\ & (!\Mod0|auto_generated|divider|divider|op_5~1\)) # (!\switch[2]~input_o\ & ((\Mod0|auto_generated|divider|divider|op_5~1\) # (GND)))
-- \Mod0|auto_generated|divider|divider|op_5~3\ = CARRY((!\Mod0|auto_generated|divider|divider|op_5~1\) # (!\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_5~1\,
	combout => \Mod0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X63_Y47_N8
\Mod0|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~4_combout\ = (\switch[3]~input_o\ & (\Mod0|auto_generated|divider|divider|op_5~3\ $ (GND))) # (!\switch[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|op_5~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|op_5~5\ = CARRY((\switch[3]~input_o\ & !\Mod0|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_5~3\,
	combout => \Mod0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X63_Y47_N10
\Mod0|auto_generated|divider|divider|op_5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~6_combout\ = !\Mod0|auto_generated|divider|divider|op_5~5\
-- \Mod0|auto_generated|divider|divider|op_5~7\ = CARRY(!\Mod0|auto_generated|divider|divider|op_5~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_5~5\,
	combout => \Mod0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X63_Y47_N12
\Mod0|auto_generated|divider|divider|op_5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~8_combout\ = \Mod0|auto_generated|divider|divider|op_5~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_5~9\ = CARRY(!\Mod0|auto_generated|divider|divider|op_5~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_5~7\,
	combout => \Mod0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X63_Y47_N14
\Mod0|auto_generated|divider|divider|op_5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~10_combout\ = !\Mod0|auto_generated|divider|divider|op_5~9\
-- \Mod0|auto_generated|divider|divider|op_5~11\ = CARRY(!\Mod0|auto_generated|divider|divider|op_5~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_5~9\,
	combout => \Mod0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X63_Y47_N16
\Mod0|auto_generated|divider|divider|op_5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~12_combout\ = \Mod0|auto_generated|divider|divider|op_5~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~11\,
	combout => \Mod0|auto_generated|divider|divider|op_5~12_combout\);

-- Location: LCCOMB_X63_Y47_N2
\Mod0|auto_generated|divider|divider|StageOut[228]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\ = (\Mod0|auto_generated|divider|divider|op_5~8_combout\ & !\Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\);

-- Location: LCCOMB_X63_Y47_N30
\Mod0|auto_generated|divider|divider|StageOut[227]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\ = (\Mod0|auto_generated|divider|divider|op_5~6_combout\ & !\Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\);

-- Location: LCCOMB_X63_Y47_N28
\Mod0|auto_generated|divider|divider|StageOut[226]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\ = (\Mod0|auto_generated|divider|divider|op_5~4_combout\ & !\Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\);

-- Location: LCCOMB_X64_Y48_N8
\Mod0|auto_generated|divider|divider|StageOut[226]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\ = (\switch[3]~input_o\ & \Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\);

-- Location: LCCOMB_X63_Y47_N18
\Mod0|auto_generated|divider|divider|StageOut[225]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\ = (\switch[2]~input_o\ & \Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[2]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\);

-- Location: LCCOMB_X63_Y47_N20
\Mod0|auto_generated|divider|divider|StageOut[225]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\ = (\Mod0|auto_generated|divider|divider|op_5~2_combout\ & !\Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\);

-- Location: LCCOMB_X63_Y47_N26
\Mod0|auto_generated|divider|divider|StageOut[224]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\ = (\Mod0|auto_generated|divider|divider|op_5~0_combout\ & !\Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\);

-- Location: LCCOMB_X64_Y48_N2
\Mod0|auto_generated|divider|divider|StageOut[224]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\ = (\switch[1]~input_o\ & \Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X64_Y48_N16
\Mod0|auto_generated|divider|divider|op_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~0_combout\ = \switch[0]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(\switch[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X64_Y48_N18
\Mod0|auto_generated|divider|divider|op_6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\ & (((!\Mod0|auto_generated|divider|divider|op_6~1\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\ & ((\Mod0|auto_generated|divider|divider|op_6~1\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_6~3\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\)) # (!\Mod0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X64_Y48_N20
\Mod0|auto_generated|divider|divider|op_6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\Mod0|auto_generated|divider|divider|op_6~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_6~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X64_Y48_N22
\Mod0|auto_generated|divider|divider|op_6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\Mod0|auto_generated|divider|divider|op_6~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\)))
-- \Mod0|auto_generated|divider|divider|op_6~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\ & !\Mod0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X64_Y48_N24
\Mod0|auto_generated|divider|divider|op_6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|op_6~7\))) # (!\Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\) # (!\Mod0|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[227]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X64_Y48_N26
\Mod0|auto_generated|divider|divider|op_6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\ & (\Mod0|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|op_6~9\))
-- \Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\ & !\Mod0|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[228]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X64_Y48_N28
\Mod0|auto_generated|divider|divider|op_6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~12_combout\ = (\Mod0|auto_generated|divider|divider|op_6~11\ & ((((!\Mod0|auto_generated|divider|divider|op_5~12_combout\ & \Mod0|auto_generated|divider|divider|op_5~10_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~11\ & (((!\Mod0|auto_generated|divider|divider|op_5~12_combout\ & \Mod0|auto_generated|divider|divider|op_5~10_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|op_6~13\ = CARRY(((!\Mod0|auto_generated|divider|divider|op_5~12_combout\ & \Mod0|auto_generated|divider|divider|op_5~10_combout\)) # (!\Mod0|auto_generated|divider|divider|op_6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \Mod0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X64_Y48_N30
\Mod0|auto_generated|divider|divider|op_6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~14_combout\ = !\Mod0|auto_generated|divider|divider|op_6~13\
-- \Mod0|auto_generated|divider|divider|op_6~15\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~13\,
	combout => \Mod0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X64_Y47_N0
\Mod0|auto_generated|divider|divider|op_6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~16_combout\ = \Mod0|auto_generated|divider|divider|op_6~15\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_6~17\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~15\,
	combout => \Mod0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X64_Y47_N2
\Mod0|auto_generated|divider|divider|op_6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~18_combout\ = !\Mod0|auto_generated|divider|divider|op_6~17\
-- \Mod0|auto_generated|divider|divider|op_6~19\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~17\,
	combout => \Mod0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X64_Y47_N4
\Mod0|auto_generated|divider|divider|op_6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~20_combout\ = \Mod0|auto_generated|divider|divider|op_6~19\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_6~21\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~19\,
	combout => \Mod0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X64_Y47_N6
\Mod0|auto_generated|divider|divider|op_6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~22_combout\ = !\Mod0|auto_generated|divider|divider|op_6~21\
-- \Mod0|auto_generated|divider|divider|op_6~23\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~21\,
	combout => \Mod0|auto_generated|divider|divider|op_6~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~23\);

-- Location: LCCOMB_X66_Y47_N26
\U_FACT|U_CT|regN_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|regN_sel~0_combout\ = (\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_COMP|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	combout => \U_FACT|U_CT|regN_sel~0_combout\);

-- Location: LCCOMB_X64_Y47_N8
\Mod0|auto_generated|divider|divider|op_6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~24_combout\ = \Mod0|auto_generated|divider|divider|op_6~23\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_6~25\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~23\,
	combout => \Mod0|auto_generated|divider|divider|op_6~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~25\);

-- Location: LCCOMB_X64_Y47_N10
\Mod0|auto_generated|divider|divider|op_6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~26_combout\ = !\Mod0|auto_generated|divider|divider|op_6~25\
-- \Mod0|auto_generated|divider|divider|op_6~27\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~25\,
	combout => \Mod0|auto_generated|divider|divider|op_6~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~27\);

-- Location: LCCOMB_X64_Y47_N12
\Mod0|auto_generated|divider|divider|op_6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~28_combout\ = \Mod0|auto_generated|divider|divider|op_6~27\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_6~29\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~27\,
	combout => \Mod0|auto_generated|divider|divider|op_6~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~29\);

-- Location: LCCOMB_X64_Y47_N14
\Mod0|auto_generated|divider|divider|op_6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~30_combout\ = !\Mod0|auto_generated|divider|divider|op_6~29\
-- \Mod0|auto_generated|divider|divider|op_6~31\ = CARRY(!\Mod0|auto_generated|divider|divider|op_6~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_6~29\,
	combout => \Mod0|auto_generated|divider|divider|op_6~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~31\);

-- Location: LCCOMB_X64_Y47_N16
\Mod0|auto_generated|divider|divider|op_6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~32_combout\ = \Mod0|auto_generated|divider|divider|op_6~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~31\,
	combout => \Mod0|auto_generated|divider|divider|op_6~32_combout\);

-- Location: LCCOMB_X63_Y47_N22
\Mod0|auto_generated|divider|divider|StageOut[244]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[244]~18_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (\Mod0|auto_generated|divider|divider|op_5~6_combout\ & ((!\Mod0|auto_generated|divider|divider|op_5~12_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[244]~18_combout\);

-- Location: LCCOMB_X64_Y48_N14
\Mod0|auto_generated|divider|divider|StageOut[243]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[243]~13_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[226]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[226]~7_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[243]~13_combout\);

-- Location: LCCOMB_X64_Y48_N4
\Mod0|auto_generated|divider|divider|StageOut[242]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[242]~14_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[225]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[225]~9_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[242]~14_combout\);

-- Location: LCCOMB_X64_Y48_N6
\Mod0|auto_generated|divider|divider|StageOut[241]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[241]~15_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[224]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[224]~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[241]~15_combout\);

-- Location: LCCOMB_X65_Y47_N0
\U_FACT|U_DP|U_DECREMENTOR|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~0_combout\ = \U_FACT|U_DP|U_REG_regN|output\(0) $ (VCC)
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~1\ = CARRY(\U_FACT|U_DP|U_REG_regN|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(0),
	datad => VCC,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~0_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~1\);

-- Location: LCCOMB_X64_Y48_N0
\Mod0|auto_generated|divider|divider|StageOut[240]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[240]~16_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (\switch[0]~input_o\)) # (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \switch[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_6~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[240]~16_combout\);

-- Location: LCCOMB_X67_Y47_N4
\U_FACT|U_DP|U_REG_regN|output[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[0]~15_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (\U_FACT|U_DP|U_DECREMENTOR|Add0~0_combout\)) # (!\U_FACT|U_CT|regN_sel~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[240]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_DECREMENTOR|Add0~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[240]~16_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[0]~15_combout\);

-- Location: FF_X67_Y47_N5
\U_FACT|U_DP|U_REG_regN|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[0]~15_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(0),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(0));

-- Location: LCCOMB_X65_Y47_N2
\U_FACT|U_DP|U_DECREMENTOR|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~2_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(1) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~1\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(1) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~1\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~3\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(1) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(1),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~1\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~2_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~3\);

-- Location: LCCOMB_X67_Y47_N2
\U_FACT|U_DP|U_REG_regN|output[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[1]~14_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & ((\U_FACT|U_DP|U_DECREMENTOR|Add0~2_combout\))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[241]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|regN_sel~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[241]~15_combout\,
	datad => \U_FACT|U_DP|U_DECREMENTOR|Add0~2_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[1]~14_combout\);

-- Location: FF_X67_Y47_N3
\U_FACT|U_DP|U_REG_regN|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[1]~14_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(1),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(1));

-- Location: LCCOMB_X65_Y47_N4
\U_FACT|U_DP|U_DECREMENTOR|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~4_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(2) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~3\))) # (!\U_FACT|U_DP|U_REG_regN|output\(2) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~3\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~5\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(2)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(2),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~3\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~4_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~5\);

-- Location: LCCOMB_X67_Y47_N12
\U_FACT|U_DP|U_REG_regN|output[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[2]~13_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & ((\U_FACT|U_DP|U_DECREMENTOR|Add0~4_combout\))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[242]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[242]~14_combout\,
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~4_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[2]~13_combout\);

-- Location: FF_X67_Y47_N13
\U_FACT|U_DP|U_REG_regN|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[2]~13_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(2),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(2));

-- Location: LCCOMB_X65_Y47_N6
\U_FACT|U_DP|U_DECREMENTOR|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~6_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(3) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~5\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(3) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~5\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~7\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(3) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(3),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~5\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~6_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~7\);

-- Location: LCCOMB_X67_Y47_N22
\U_FACT|U_DP|U_REG_regN|output[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[3]~12_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & ((\U_FACT|U_DP|U_DECREMENTOR|Add0~6_combout\))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[243]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[243]~13_combout\,
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~6_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[3]~12_combout\);

-- Location: FF_X67_Y47_N23
\U_FACT|U_DP|U_REG_regN|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[3]~12_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(3),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(3));

-- Location: LCCOMB_X65_Y47_N8
\U_FACT|U_DP|U_DECREMENTOR|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~8_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(4) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~7\))) # (!\U_FACT|U_DP|U_REG_regN|output\(4) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~7\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~9\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(4)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(4),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~7\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~8_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~9\);

-- Location: LCCOMB_X63_Y47_N24
\U_FACT|U_DP|U_REG_regN|output[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[4]~11_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & ((\U_FACT|U_DP|U_DECREMENTOR|Add0~8_combout\))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[244]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[244]~18_combout\,
	datac => \U_FACT|U_DP|U_DECREMENTOR|Add0~8_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[4]~11_combout\);

-- Location: LCCOMB_X67_Y47_N8
\U_FACT|U_DP|U_REG_regN|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[4]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output[4]~11_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[4]~feeder_combout\);

-- Location: FF_X67_Y47_N9
\U_FACT|U_DP|U_REG_regN|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[4]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(4),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(4));

-- Location: LCCOMB_X65_Y47_N10
\U_FACT|U_DP|U_DECREMENTOR|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~10_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(5) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~9\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(5) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~9\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~11\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(5) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(5),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~9\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~10_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~11\);

-- Location: LCCOMB_X63_Y47_N0
\Mod0|auto_generated|divider|divider|StageOut[245]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[245]~17_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (\Mod0|auto_generated|divider|divider|op_5~8_combout\ & (!\Mod0|auto_generated|divider|divider|op_5~12_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[245]~17_combout\);

-- Location: LCCOMB_X64_Y47_N22
\U_FACT|U_DP|U_REG_regN|output[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[5]~10_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (\U_FACT|U_DP|U_DECREMENTOR|Add0~10_combout\)) # (!\U_FACT|U_CT|regN_sel~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[245]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~10_combout\,
	datac => \U_FACT|U_CT|regN_sel~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[245]~17_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[5]~10_combout\);

-- Location: LCCOMB_X66_Y47_N24
\U_FACT|U_DP|U_REG_regN|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[5]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[5]~10_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[5]~feeder_combout\);

-- Location: FF_X66_Y47_N25
\U_FACT|U_DP|U_REG_regN|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[5]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(5),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(5));

-- Location: LCCOMB_X65_Y47_N12
\U_FACT|U_DP|U_DECREMENTOR|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~12_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(6) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~11\))) # (!\U_FACT|U_DP|U_REG_regN|output\(6) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~11\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~13\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(6)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(6),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~11\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~12_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~13\);

-- Location: LCCOMB_X64_Y48_N12
\Mod0|auto_generated|divider|divider|StageOut[246]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[246]~12_combout\ = (\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (!\Mod0|auto_generated|divider|divider|op_5~12_combout\ & ((\Mod0|auto_generated|divider|divider|op_5~10_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[246]~12_combout\);

-- Location: LCCOMB_X67_Y47_N18
\U_FACT|U_DP|U_REG_regN|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[6]~9_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (\U_FACT|U_DP|U_DECREMENTOR|Add0~12_combout\)) # (!\U_FACT|U_CT|regN_sel~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[246]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|regN_sel~0_combout\,
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[246]~12_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[6]~9_combout\);

-- Location: FF_X67_Y47_N19
\U_FACT|U_DP|U_REG_regN|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[6]~9_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(6),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(6));

-- Location: LCCOMB_X65_Y47_N14
\U_FACT|U_DP|U_DECREMENTOR|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~14_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(7) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~13\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(7) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~13\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~15\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(7) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(7),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~13\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~14_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~15\);

-- Location: LCCOMB_X67_Y47_N26
\U_FACT|U_DP|U_REG_regN|output[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[7]~8_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~14_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|op_6~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|regN_sel~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \U_FACT|U_DP|U_DECREMENTOR|Add0~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[7]~8_combout\);

-- Location: LCCOMB_X66_Y47_N30
\U_FACT|U_DP|U_REG_regN|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[7]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[7]~8_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[7]~feeder_combout\);

-- Location: FF_X66_Y47_N31
\U_FACT|U_DP|U_REG_regN|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[7]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(7),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(7));

-- Location: LCCOMB_X65_Y47_N16
\U_FACT|U_DP|U_DECREMENTOR|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~16_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(8) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~15\))) # (!\U_FACT|U_DP|U_REG_regN|output\(8) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~15\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~17\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(8)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(8),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~15\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~16_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~17\);

-- Location: LCCOMB_X66_Y47_N16
\U_FACT|U_DP|U_REG_regN|output[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[8]~7_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~16_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|op_6~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \U_FACT|U_DP|U_DECREMENTOR|Add0~16_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[8]~7_combout\);

-- Location: LCCOMB_X67_Y47_N0
\U_FACT|U_DP|U_REG_regN|output[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[8]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[8]~7_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[8]~feeder_combout\);

-- Location: FF_X67_Y47_N1
\U_FACT|U_DP|U_REG_regN|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[8]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(8),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(8));

-- Location: LCCOMB_X65_Y47_N18
\U_FACT|U_DP|U_DECREMENTOR|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~18_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(9) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~17\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(9) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~17\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~19\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(9) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(9),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~17\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~18_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~19\);

-- Location: LCCOMB_X64_Y47_N20
\U_FACT|U_DP|U_REG_regN|output[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[9]~6_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~18_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|regN_sel~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_6~18_combout\,
	datad => \U_FACT|U_DP|U_DECREMENTOR|Add0~18_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[9]~6_combout\);

-- Location: LCCOMB_X67_Y47_N30
\U_FACT|U_DP|U_REG_regN|output[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[9]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[9]~6_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[9]~feeder_combout\);

-- Location: FF_X67_Y47_N31
\U_FACT|U_DP|U_REG_regN|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[9]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(9),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(9));

-- Location: LCCOMB_X65_Y47_N20
\U_FACT|U_DP|U_DECREMENTOR|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~20_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(10) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~19\))) # (!\U_FACT|U_DP|U_REG_regN|output\(10) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~19\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~21\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(10)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(10),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~19\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~20_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~21\);

-- Location: LCCOMB_X64_Y47_N26
\U_FACT|U_DP|U_REG_regN|output[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[10]~5_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (\U_FACT|U_DP|U_DECREMENTOR|Add0~20_combout\)) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (((!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_DECREMENTOR|Add0~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \U_FACT|U_CT|regN_sel~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[10]~5_combout\);

-- Location: LCCOMB_X66_Y47_N12
\U_FACT|U_DP|U_REG_regN|output[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[10]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output[10]~5_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[10]~feeder_combout\);

-- Location: FF_X66_Y47_N13
\U_FACT|U_DP|U_REG_regN|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[10]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(10),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(10));

-- Location: LCCOMB_X65_Y47_N22
\U_FACT|U_DP|U_DECREMENTOR|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~22_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(11) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~21\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(11) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~21\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~23\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(11) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(11),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~21\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~22_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~23\);

-- Location: LCCOMB_X64_Y47_N24
\U_FACT|U_DP|U_REG_regN|output[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[11]~4_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~22_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|op_6~22_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|op_6~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~22_combout\,
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~22_combout\,
	datac => \U_FACT|U_CT|regN_sel~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[11]~4_combout\);

-- Location: LCCOMB_X67_Y47_N20
\U_FACT|U_DP|U_REG_regN|output[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[11]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[11]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[11]~4_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[11]~feeder_combout\);

-- Location: FF_X67_Y47_N21
\U_FACT|U_DP|U_REG_regN|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[11]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(11),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(11));

-- Location: LCCOMB_X67_Y47_N10
\U_FACT|U_DP|U_COMP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_COMP|LessThan0~1_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(11)) # ((\U_FACT|U_DP|U_REG_regN|output\(10)) # ((\U_FACT|U_DP|U_REG_regN|output\(9)) # (\U_FACT|U_DP|U_REG_regN|output\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(11),
	datab => \U_FACT|U_DP|U_REG_regN|output\(10),
	datac => \U_FACT|U_DP|U_REG_regN|output\(9),
	datad => \U_FACT|U_DP|U_REG_regN|output\(8),
	combout => \U_FACT|U_DP|U_COMP|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y47_N16
\U_FACT|U_DP|U_COMP|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_COMP|LessThan0~3_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(2)) # ((\U_FACT|U_DP|U_REG_regN|output\(0)) # ((\U_FACT|U_DP|U_REG_regN|output\(3)) # (\U_FACT|U_DP|U_REG_regN|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(2),
	datab => \U_FACT|U_DP|U_REG_regN|output\(0),
	datac => \U_FACT|U_DP|U_REG_regN|output\(3),
	datad => \U_FACT|U_DP|U_REG_regN|output\(1),
	combout => \U_FACT|U_DP|U_COMP|LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y47_N6
\U_FACT|U_DP|U_COMP|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_COMP|LessThan0~2_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(5)) # ((\U_FACT|U_DP|U_REG_regN|output\(7)) # ((\U_FACT|U_DP|U_REG_regN|output\(4)) # (\U_FACT|U_DP|U_REG_regN|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(5),
	datab => \U_FACT|U_DP|U_REG_regN|output\(7),
	datac => \U_FACT|U_DP|U_REG_regN|output\(4),
	datad => \U_FACT|U_DP|U_REG_regN|output\(6),
	combout => \U_FACT|U_DP|U_COMP|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y47_N24
\U_FACT|U_DP|U_DECREMENTOR|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~24_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(12) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~23\))) # (!\U_FACT|U_DP|U_REG_regN|output\(12) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~23\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~25\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(12)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(12),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~23\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~24_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~25\);

-- Location: LCCOMB_X64_Y47_N18
\U_FACT|U_DP|U_REG_regN|output[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[12]~3_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~24_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_6~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|regN_sel~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_6~24_combout\,
	datad => \U_FACT|U_DP|U_DECREMENTOR|Add0~24_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[12]~3_combout\);

-- Location: LCCOMB_X66_Y47_N2
\U_FACT|U_DP|U_REG_regN|output[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[12]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[12]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[12]~3_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[12]~feeder_combout\);

-- Location: FF_X66_Y47_N3
\U_FACT|U_DP|U_REG_regN|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[12]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(12),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(12));

-- Location: LCCOMB_X65_Y47_N26
\U_FACT|U_DP|U_DECREMENTOR|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~26_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(13) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~25\ & VCC)) # (!\U_FACT|U_DP|U_REG_regN|output\(13) & (!\U_FACT|U_DP|U_DECREMENTOR|Add0~25\))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~27\ = CARRY((!\U_FACT|U_DP|U_REG_regN|output\(13) & !\U_FACT|U_DP|U_DECREMENTOR|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(13),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~25\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~26_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~27\);

-- Location: LCCOMB_X66_Y47_N10
\U_FACT|U_DP|U_REG_regN|output[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[13]~2_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~26_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|op_6~26_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|op_6~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \U_FACT|U_DP|U_DECREMENTOR|Add0~26_combout\,
	datad => \U_FACT|U_CT|regN_sel~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[13]~2_combout\);

-- Location: LCCOMB_X67_Y47_N14
\U_FACT|U_DP|U_REG_regN|output[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[13]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[13]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[13]~2_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[13]~feeder_combout\);

-- Location: FF_X67_Y47_N15
\U_FACT|U_DP|U_REG_regN|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[13]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(13),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(13));

-- Location: LCCOMB_X65_Y47_N28
\U_FACT|U_DP|U_DECREMENTOR|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~28_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(14) & ((GND) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~27\))) # (!\U_FACT|U_DP|U_REG_regN|output\(14) & (\U_FACT|U_DP|U_DECREMENTOR|Add0~27\ $ (GND)))
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~29\ = CARRY((\U_FACT|U_DP|U_REG_regN|output\(14)) # (!\U_FACT|U_DP|U_DECREMENTOR|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_REG_regN|output\(14),
	datad => VCC,
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~27\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~28_combout\,
	cout => \U_FACT|U_DP|U_DECREMENTOR|Add0~29\);

-- Location: LCCOMB_X64_Y47_N28
\U_FACT|U_DP|U_REG_regN|output[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[14]~1_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (((\U_FACT|U_DP|U_DECREMENTOR|Add0~28_combout\)))) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (\Mod0|auto_generated|divider|divider|op_6~28_combout\ & 
-- ((!\Mod0|auto_generated|divider|divider|op_6~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_6~28_combout\,
	datab => \U_FACT|U_DP|U_DECREMENTOR|Add0~28_combout\,
	datac => \U_FACT|U_CT|regN_sel~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[14]~1_combout\);

-- Location: LCCOMB_X66_Y47_N8
\U_FACT|U_DP|U_REG_regN|output[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[14]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[14]~1_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[14]~feeder_combout\);

-- Location: FF_X66_Y47_N9
\U_FACT|U_DP|U_REG_regN|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[14]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(14),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(14));

-- Location: LCCOMB_X65_Y47_N30
\U_FACT|U_DP|U_DECREMENTOR|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_DECREMENTOR|Add0~30_combout\ = \U_FACT|U_DP|U_DECREMENTOR|Add0~29\ $ (!\U_FACT|U_DP|U_REG_regN|output\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output\(15),
	cin => \U_FACT|U_DP|U_DECREMENTOR|Add0~29\,
	combout => \U_FACT|U_DP|U_DECREMENTOR|Add0~30_combout\);

-- Location: LCCOMB_X64_Y47_N30
\U_FACT|U_DP|U_REG_regN|output[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[15]~0_combout\ = (\U_FACT|U_CT|regN_sel~0_combout\ & (\U_FACT|U_DP|U_DECREMENTOR|Add0~30_combout\)) # (!\U_FACT|U_CT|regN_sel~0_combout\ & (((!\Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_DECREMENTOR|Add0~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \U_FACT|U_CT|regN_sel~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_6~30_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[15]~0_combout\);

-- Location: LCCOMB_X67_Y47_N28
\U_FACT|U_DP|U_REG_regN|output[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_regN|output[15]~feeder_combout\ = \U_FACT|U_DP|U_REG_regN|output[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_regN|output[15]~0_combout\,
	combout => \U_FACT|U_DP|U_REG_regN|output[15]~feeder_combout\);

-- Location: FF_X67_Y47_N29
\U_FACT|U_DP|U_REG_regN|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_regN|output[15]~feeder_combout\,
	asdata => \U_FACT|U_DP|U_REG_regN|output\(15),
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => \U_FACT|U_CT|ALT_INV_Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_regN|output\(15));

-- Location: LCCOMB_X67_Y47_N24
\U_FACT|U_DP|U_COMP|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_COMP|LessThan0~0_combout\ = (\U_FACT|U_DP|U_REG_regN|output\(14)) # ((\U_FACT|U_DP|U_REG_regN|output\(15)) # ((\U_FACT|U_DP|U_REG_regN|output\(13)) # (\U_FACT|U_DP|U_REG_regN|output\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_regN|output\(14),
	datab => \U_FACT|U_DP|U_REG_regN|output\(15),
	datac => \U_FACT|U_DP|U_REG_regN|output\(13),
	datad => \U_FACT|U_DP|U_REG_regN|output\(12),
	combout => \U_FACT|U_DP|U_COMP|LessThan0~0_combout\);

-- Location: LCCOMB_X67_Y47_N6
\U_FACT|U_DP|U_COMP|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_COMP|LessThan0~4_combout\ = (\U_FACT|U_DP|U_COMP|LessThan0~1_combout\) # ((\U_FACT|U_DP|U_COMP|LessThan0~3_combout\) # ((\U_FACT|U_DP|U_COMP|LessThan0~2_combout\) # (\U_FACT|U_DP|U_COMP|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_COMP|LessThan0~1_combout\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~3_combout\,
	datac => \U_FACT|U_DP|U_COMP|LessThan0~2_combout\,
	datad => \U_FACT|U_DP|U_COMP|LessThan0~0_combout\,
	combout => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y47_N20
\U_FACT|U_CT|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|Selector1~0_combout\ = (\U_FACT|U_CT|state.state1~q\) # ((\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_COMP|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_CT|state.state2~q\,
	datac => \U_FACT|U_CT|state.state1~q\,
	datad => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	combout => \U_FACT|U_CT|Selector1~0_combout\);

-- Location: LCCOMB_X66_Y47_N28
\U_FACT|U_CT|state.state2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|state.state2~feeder_combout\ = \U_FACT|U_CT|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_CT|Selector1~0_combout\,
	combout => \U_FACT|U_CT|state.state2~feeder_combout\);

-- Location: FF_X66_Y47_N29
\U_FACT|U_CT|state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_CT|state.state2~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_CT|state.state2~q\);

-- Location: LCCOMB_X66_Y47_N0
\U_FACT|U_CT|next_state.state3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|next_state.state3~0_combout\ = (\U_FACT|U_CT|state.state2~q\ & !\U_FACT|U_DP|U_COMP|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	combout => \U_FACT|U_CT|next_state.state3~0_combout\);

-- Location: FF_X66_Y47_N1
\U_FACT|U_CT|state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_CT|next_state.state3~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_CT|state.state3~q\);

-- Location: LCCOMB_X66_Y47_N22
\U_FACT|U_CT|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_CT|Selector2~0_combout\ = (\U_FACT|U_CT|state.state3~q\) # ((\U_FACT|U_CT|state.state4~q\ & \switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_CT|state.state3~q\,
	datac => \U_FACT|U_CT|state.state4~q\,
	datad => \switch[9]~input_o\,
	combout => \U_FACT|U_CT|Selector2~0_combout\);

-- Location: FF_X66_Y47_N23
\U_FACT|U_CT|state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_CT|Selector2~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_CT|state.state4~q\);

-- Location: DSPMULT_X68_Y47_N0
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk50MHz~inputclkctrl_outclk\,
	aclr => \switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	dataa => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X68_Y47_N2
\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X69_Y47_N8
\U_FACT|U_DP|U_MUX_tempFact|output[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[15]~2_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[15]~2_combout\);

-- Location: LCCOMB_X69_Y47_N26
\U_FACT|U_DP|U_MUX_tempFact|output[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[14]~3_combout\ = (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & (\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[14]~3_combout\);

-- Location: LCCOMB_X69_Y47_N16
\U_FACT|U_DP|U_MUX_tempFact|output[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[13]~4_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[13]~4_combout\);

-- Location: LCCOMB_X69_Y47_N14
\U_FACT|U_DP|U_MUX_tempFact|output[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[12]~5_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[12]~5_combout\);

-- Location: LCCOMB_X69_Y47_N4
\U_FACT|U_DP|U_MUX_tempFact|output[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[11]~6_combout\ = (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & (\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[11]~6_combout\);

-- Location: LCCOMB_X69_Y47_N22
\U_FACT|U_DP|U_MUX_tempFact|output[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[10]~7_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[10]~7_combout\);

-- Location: LCCOMB_X69_Y47_N28
\U_FACT|U_DP|U_MUX_tempFact|output[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[9]~8_combout\ = (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & (\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[9]~8_combout\);

-- Location: LCCOMB_X69_Y47_N6
\U_FACT|U_DP|U_MUX_tempFact|output[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[8]~9_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[8]~9_combout\);

-- Location: LCCOMB_X69_Y47_N0
\U_FACT|U_DP|U_MUX_tempFact|output[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[7]~10_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[7]~10_combout\);

-- Location: LCCOMB_X69_Y47_N18
\U_FACT|U_DP|U_MUX_tempFact|output[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[6]~11_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[6]~11_combout\);

-- Location: LCCOMB_X69_Y47_N20
\U_FACT|U_DP|U_MUX_tempFact|output[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[5]~12_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[5]~12_combout\);

-- Location: LCCOMB_X69_Y47_N2
\U_FACT|U_DP|U_MUX_tempFact|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[4]~13_combout\ = (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & (\U_FACT|U_CT|state.state2~q\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[4]~13_combout\);

-- Location: LCCOMB_X69_Y47_N24
\U_FACT|U_DP|U_MUX_tempFact|output[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[3]~14_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[3]~14_combout\);

-- Location: LCCOMB_X69_Y47_N10
\U_FACT|U_DP|U_MUX_tempFact|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[1]~1_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[1]~1_combout\);

-- Location: LCCOMB_X69_Y47_N12
\U_FACT|U_DP|U_MUX_tempFact|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[0]~0_combout\ = ((\U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~dataout\) # (!\U_FACT|U_CT|state.state2~q\)) # (!\U_FACT|U_DP|U_COMP|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datac => \U_FACT|U_CT|state.state2~q\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~dataout\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[0]~0_combout\);

-- Location: LCCOMB_X69_Y47_N30
\U_FACT|U_DP|U_MUX_tempFact|output[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_MUX_tempFact|output[2]~15_combout\ = (\U_FACT|U_CT|state.state2~q\ & (\U_FACT|U_DP|U_COMP|LessThan0~4_combout\ & \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_CT|state.state2~q\,
	datab => \U_FACT|U_DP|U_COMP|LessThan0~4_combout\,
	datad => \U_FACT|U_DP|U_MULT|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \U_FACT|U_DP|U_MUX_tempFact|output[2]~15_combout\);

-- Location: FF_X69_Y47_N31
\U_FACT|U_DP|U_REG_tempFact|output[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[2]~15_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X71_Y47_N10
\U_FACT|U_DP|U_REG_output|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_output|output[2]~feeder_combout\ = \U_FACT|U_DP|U_REG_tempFact|output[2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FACT|U_DP|U_REG_tempFact|output[2]~_Duplicate_1_q\,
	combout => \U_FACT|U_DP|U_REG_output|output[2]~feeder_combout\);

-- Location: FF_X71_Y47_N11
\U_FACT|U_DP|U_REG_output|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_output|output[2]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(2));

-- Location: FF_X69_Y47_N29
\U_FACT|U_DP|U_REG_tempFact|output[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[9]~8_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[9]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N3
\U_FACT|U_DP|U_REG_output|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[9]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(9));

-- Location: FF_X69_Y47_N9
\U_FACT|U_DP|U_REG_tempFact|output[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[15]~2_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[15]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N13
\U_FACT|U_DP|U_REG_output|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[15]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(15));

-- Location: FF_X69_Y47_N17
\U_FACT|U_DP|U_REG_tempFact|output[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[13]~4_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[13]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N1
\U_FACT|U_DP|U_REG_output|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[13]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(13));

-- Location: FF_X69_Y47_N27
\U_FACT|U_DP|U_REG_tempFact|output[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[14]~3_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[14]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N23
\U_FACT|U_DP|U_REG_output|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[14]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(14));

-- Location: FF_X69_Y47_N15
\U_FACT|U_DP|U_REG_tempFact|output[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[12]~5_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[12]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N19
\U_FACT|U_DP|U_REG_output|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[12]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(12));

-- Location: LCCOMB_X70_Y46_N26
\U_SEG_CONTL|bcd_conv|s_digit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ = (\U_FACT|U_DP|U_REG_output|output\(14) & ((\U_FACT|U_DP|U_REG_output|output\(15) & ((\U_FACT|U_DP|U_REG_output|output\(13)) # (!\U_FACT|U_DP|U_REG_output|output\(12)))) # (!\U_FACT|U_DP|U_REG_output|output\(15) 
-- & ((\U_FACT|U_DP|U_REG_output|output\(12)) # (!\U_FACT|U_DP|U_REG_output|output\(13)))))) # (!\U_FACT|U_DP|U_REG_output|output\(14) & (\U_FACT|U_DP|U_REG_output|output\(12) $ (((\U_FACT|U_DP|U_REG_output|output\(13)) # 
-- (!\U_FACT|U_DP|U_REG_output|output\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(15),
	datab => \U_FACT|U_DP|U_REG_output|output\(13),
	datac => \U_FACT|U_DP|U_REG_output|output\(14),
	datad => \U_FACT|U_DP|U_REG_output|output\(12),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\);

-- Location: LCCOMB_X70_Y46_N16
\U_SEG_CONTL|bcd_conv|s_digit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ = (\U_FACT|U_DP|U_REG_output|output\(14) & (!\U_FACT|U_DP|U_REG_output|output\(12) & (\U_FACT|U_DP|U_REG_output|output\(15) $ (!\U_FACT|U_DP|U_REG_output|output\(13))))) # (!\U_FACT|U_DP|U_REG_output|output\(14) 
-- & (\U_FACT|U_DP|U_REG_output|output\(15) & (!\U_FACT|U_DP|U_REG_output|output\(13) & \U_FACT|U_DP|U_REG_output|output\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(15),
	datab => \U_FACT|U_DP|U_REG_output|output\(13),
	datac => \U_FACT|U_DP|U_REG_output|output\(14),
	datad => \U_FACT|U_DP|U_REG_output|output\(12),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\);

-- Location: LCCOMB_X70_Y46_N8
\U_SEG_CONTL|bcd_conv|s_digit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ = (\U_FACT|U_DP|U_REG_output|output\(15) & (!\U_FACT|U_DP|U_REG_output|output\(13) & ((\U_FACT|U_DP|U_REG_output|output\(14)) # (!\U_FACT|U_DP|U_REG_output|output\(12))))) # 
-- (!\U_FACT|U_DP|U_REG_output|output\(15) & (\U_FACT|U_DP|U_REG_output|output\(13) & ((\U_FACT|U_DP|U_REG_output|output\(12)) # (!\U_FACT|U_DP|U_REG_output|output\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(15),
	datab => \U_FACT|U_DP|U_REG_output|output\(13),
	datac => \U_FACT|U_DP|U_REG_output|output\(14),
	datad => \U_FACT|U_DP|U_REG_output|output\(12),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\);

-- Location: FF_X69_Y47_N5
\U_FACT|U_DP|U_REG_tempFact|output[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[11]~6_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[11]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N11
\U_FACT|U_DP|U_REG_output|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[11]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(11));

-- Location: LCCOMB_X70_Y46_N6
\U_SEG_CONTL|bcd_conv|s_digit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ & (((\U_FACT|U_DP|U_REG_output|output\(11))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\) # (\U_FACT|U_DP|U_REG_output|output\(11)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(11),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\);

-- Location: FF_X69_Y47_N23
\U_FACT|U_DP|U_REG_tempFact|output[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[10]~7_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[10]~_Duplicate_1_q\);

-- Location: FF_X70_Y46_N15
\U_FACT|U_DP|U_REG_output|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[10]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(10));

-- Location: LCCOMB_X70_Y46_N4
\U_SEG_CONTL|bcd_conv|s_digit_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(11))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(11)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(11),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\);

-- Location: LCCOMB_X70_Y46_N20
\U_SEG_CONTL|bcd_conv|s_digit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(11))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(11)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(11),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\);

-- Location: LCCOMB_X70_Y46_N28
\U_SEG_CONTL|bcd_conv|s_digit_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ & (!\U_FACT|U_DP|U_REG_output|output\(10) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(10)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\,
	datab => \U_FACT|U_DP|U_REG_output|output\(10),
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\);

-- Location: LCCOMB_X70_Y46_N30
\U_SEG_CONTL|bcd_conv|s_digit_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\ = (\U_FACT|U_DP|U_REG_output|output\(10) & (((\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(10) & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\,
	datab => \U_FACT|U_DP|U_REG_output|output\(10),
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\);

-- Location: LCCOMB_X70_Y46_N24
\U_SEG_CONTL|bcd_conv|s_digit_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ & (!\U_FACT|U_DP|U_REG_output|output\(10)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(10)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\,
	datab => \U_FACT|U_DP|U_REG_output|output\(10),
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\);

-- Location: LCCOMB_X69_Y46_N24
\U_SEG_CONTL|bcd_conv|s_digit_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ = (\U_FACT|U_DP|U_REG_output|output\(9) & (((!\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(9) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(9),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\);

-- Location: LCCOMB_X69_Y46_N16
\U_SEG_CONTL|bcd_conv|s_digit_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\ & (!\U_FACT|U_DP|U_REG_output|output\(9) & (\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(9)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(9),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\);

-- Location: FF_X69_Y47_N7
\U_FACT|U_DP|U_REG_tempFact|output[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[8]~9_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[8]~_Duplicate_1_q\);

-- Location: FF_X70_Y47_N9
\U_FACT|U_DP|U_REG_output|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[8]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(8));

-- Location: LCCOMB_X69_Y46_N2
\U_SEG_CONTL|bcd_conv|s_digit_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\ = (\U_FACT|U_DP|U_REG_output|output\(9) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\) # ((\U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(9) & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(9),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\);

-- Location: LCCOMB_X70_Y47_N18
\U_SEG_CONTL|bcd_conv|s_digit_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(8) $ (\U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(8)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(8),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\);

-- Location: LCCOMB_X70_Y47_N24
\U_SEG_CONTL|bcd_conv|s_digit_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(8)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ $ ((!\U_FACT|U_DP|U_REG_output|output\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(8),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\);

-- Location: LCCOMB_X70_Y47_N30
\U_SEG_CONTL|bcd_conv|s_digit_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ & (((!\U_FACT|U_DP|U_REG_output|output\(8) & \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(8)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(8),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\);

-- Location: FF_X69_Y47_N1
\U_FACT|U_DP|U_REG_tempFact|output[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[7]~10_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[7]~_Duplicate_1_q\);

-- Location: FF_X70_Y47_N17
\U_FACT|U_DP|U_REG_output|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[7]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(7));

-- Location: LCCOMB_X70_Y47_N22
\U_SEG_CONTL|bcd_conv|s_digit_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ & !\U_FACT|U_DP|U_REG_output|output\(7))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(7)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(7),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\);

-- Location: LCCOMB_X70_Y47_N20
\U_SEG_CONTL|bcd_conv|s_digit_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(7)) # ((\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ $ (!\U_FACT|U_DP|U_REG_output|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(7),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\);

-- Location: LCCOMB_X70_Y47_N26
\U_SEG_CONTL|bcd_conv|s_digit_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(7))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(7)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(7),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\);

-- Location: FF_X69_Y47_N19
\U_FACT|U_DP|U_REG_tempFact|output[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[6]~11_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[6]~_Duplicate_1_q\);

-- Location: FF_X70_Y47_N13
\U_FACT|U_DP|U_REG_output|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[6]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(6));

-- Location: LCCOMB_X70_Y47_N10
\U_SEG_CONTL|bcd_conv|s_digit_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(6))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(6)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(6),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\);

-- Location: LCCOMB_X70_Y47_N0
\U_SEG_CONTL|bcd_conv|s_digit_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(6)) # ((\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ $ (!\U_FACT|U_DP|U_REG_output|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(6),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\);

-- Location: FF_X69_Y47_N21
\U_FACT|U_DP|U_REG_tempFact|output[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[5]~12_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[5]~_Duplicate_1_q\);

-- Location: FF_X70_Y47_N5
\U_FACT|U_DP|U_REG_output|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_FACT|U_DP|U_REG_tempFact|output[5]~_Duplicate_1_q\,
	clrn => \ALT_INV_switch[8]~input_o\,
	sload => VCC,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(5));

-- Location: LCCOMB_X70_Y47_N2
\U_SEG_CONTL|bcd_conv|s_digit_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ & !\U_FACT|U_DP|U_REG_output|output\(6))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(6)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(6),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\);

-- Location: LCCOMB_X70_Y47_N14
\U_SEG_CONTL|bcd_conv|s_digit_0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ & !\U_FACT|U_DP|U_REG_output|output\(5))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(5)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(5),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\);

-- Location: LCCOMB_X70_Y47_N28
\U_SEG_CONTL|bcd_conv|s_digit_0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ & (((\U_FACT|U_DP|U_REG_output|output\(5))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(5) & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\))) # (!\U_FACT|U_DP|U_REG_output|output\(5) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(5),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\);

-- Location: LCCOMB_X70_Y47_N6
\U_SEG_CONTL|bcd_conv|s_digit_0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ $ ((\U_FACT|U_DP|U_REG_output|output\(5))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(5)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(5),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\);

-- Location: FF_X69_Y47_N3
\U_FACT|U_DP|U_REG_tempFact|output[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[4]~13_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X71_Y47_N28
\U_FACT|U_DP|U_REG_output|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_output|output[4]~feeder_combout\ = \U_FACT|U_DP|U_REG_tempFact|output[4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FACT|U_DP|U_REG_tempFact|output[4]~_Duplicate_1_q\,
	combout => \U_FACT|U_DP|U_REG_output|output[4]~feeder_combout\);

-- Location: FF_X71_Y47_N29
\U_FACT|U_DP|U_REG_output|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_output|output[4]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(4));

-- Location: LCCOMB_X71_Y47_N6
\U_SEG_CONTL|bcd_conv|s_digit_0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ & !\U_FACT|U_DP|U_REG_output|output\(4))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(4)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(4),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\);

-- Location: LCCOMB_X71_Y47_N24
\U_SEG_CONTL|bcd_conv|s_digit_0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ & (((\U_FACT|U_DP|U_REG_output|output\(4))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\) # (\U_FACT|U_DP|U_REG_output|output\(4)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(4),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\);

-- Location: LCCOMB_X71_Y47_N30
\U_SEG_CONTL|bcd_conv|s_digit_0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ $ (((\U_FACT|U_DP|U_REG_output|output\(4)))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(4)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(4),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\);

-- Location: FF_X69_Y47_N25
\U_FACT|U_DP|U_REG_tempFact|output[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[3]~14_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X71_Y47_N20
\U_FACT|U_DP|U_REG_output|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_output|output[3]~feeder_combout\ = \U_FACT|U_DP|U_REG_tempFact|output[3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_tempFact|output[3]~_Duplicate_1_q\,
	combout => \U_FACT|U_DP|U_REG_output|output[3]~feeder_combout\);

-- Location: FF_X71_Y47_N21
\U_FACT|U_DP|U_REG_output|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_output|output[3]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(3));

-- Location: LCCOMB_X71_Y47_N16
\U_SEG_CONTL|bcd_conv|s_digit_0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ $ (((\U_FACT|U_DP|U_REG_output|output\(3)))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(3)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(3),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\);

-- Location: LCCOMB_X71_Y47_N14
\U_SEG_CONTL|bcd_conv|s_digit_0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ & !\U_FACT|U_DP|U_REG_output|output\(3))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(3)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(3),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\);

-- Location: LCCOMB_X71_Y47_N0
\U_SEG_CONTL|bcd_conv|s_digit_0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ & (((\U_FACT|U_DP|U_REG_output|output\(3))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\) # (\U_FACT|U_DP|U_REG_output|output\(3)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\ & ((!\U_FACT|U_DP|U_REG_output|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(3),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\);

-- Location: LCCOMB_X71_Y47_N4
\U_SEG_CONTL|bcd_conv|s_digit_0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ = (\U_FACT|U_DP|U_REG_output|output\(2) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\) # ((\U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(2) & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(2),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\);

-- Location: LCCOMB_X71_Y47_N26
\U_SEG_CONTL|bcd_conv|s_digit_0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ = (\U_FACT|U_DP|U_REG_output|output\(2) & (((!\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(2) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(2),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\);

-- Location: FF_X69_Y47_N11
\U_FACT|U_DP|U_REG_tempFact|output[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[1]~1_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N22
\U_FACT|U_DP|U_REG_output|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_output|output[1]~feeder_combout\ = \U_FACT|U_DP|U_REG_tempFact|output[1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_tempFact|output[1]~_Duplicate_1_q\,
	combout => \U_FACT|U_DP|U_REG_output|output[1]~feeder_combout\);

-- Location: FF_X70_Y50_N23
\U_FACT|U_DP|U_REG_output|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_output|output[1]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(1));

-- Location: LCCOMB_X71_Y47_N18
\U_SEG_CONTL|bcd_conv|s_digit_0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\ & (!\U_FACT|U_DP|U_REG_output|output\(2) & ((\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(2)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(2),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\);

-- Location: LCCOMB_X70_Y50_N26
\U_SEG_CONTL|bcd_conv|digit_0[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ & (((!\U_FACT|U_DP|U_REG_output|output\(1) & \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(1)) # ((!\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(1),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\);

-- Location: LCCOMB_X70_Y50_N24
\U_SEG_CONTL|bcd_conv|digit_0[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(1)) # ((\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(1) $ (!\U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(1),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\);

-- Location: LCCOMB_X70_Y50_N4
\U_SEG_CONTL|bcd_conv|digit_0[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ & (!\U_FACT|U_DP|U_REG_output|output\(1)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(1)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(1),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\);

-- Location: FF_X69_Y47_N13
\U_FACT|U_DP|U_REG_tempFact|output[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_MUX_tempFact|output[0]~0_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_tempFact|output[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y50_N20
\U_FACT|U_DP|U_REG_output|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FACT|U_DP|U_REG_output|output[0]~feeder_combout\ = \U_FACT|U_DP|U_REG_tempFact|output[0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_FACT|U_DP|U_REG_tempFact|output[0]~_Duplicate_1_q\,
	combout => \U_FACT|U_DP|U_REG_output|output[0]~feeder_combout\);

-- Location: FF_X70_Y50_N21
\U_FACT|U_DP|U_REG_output|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_FACT|U_DP|U_REG_output|output[0]~feeder_combout\,
	clrn => \ALT_INV_switch[8]~input_o\,
	ena => \U_FACT|U_CT|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FACT|U_DP|U_REG_output|output\(0));

-- Location: LCCOMB_X70_Y50_N6
\U_SEG_CONTL|displ0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux6~0_combout\ = (\U_FACT|U_DP|U_REG_output|output\(0) & (!\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\)))) # 
-- (!\U_FACT|U_DP|U_REG_output|output\(0) & (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y50_N0
\U_SEG_CONTL|displ0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux5~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\)) # (!\U_FACT|U_DP|U_REG_output|output\(0)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\) # ((\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & !\U_FACT|U_DP|U_REG_output|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N18
\U_SEG_CONTL|displ0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux4~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & 
-- ((\U_FACT|U_DP|U_REG_output|output\(0)))))) # (!\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & (((!\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ & \U_FACT|U_DP|U_REG_output|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y50_N8
\U_SEG_CONTL|displ0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux3~0_combout\ = (\U_FACT|U_DP|U_REG_output|output\(0) & (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ $ ((\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\)))) # (!\U_FACT|U_DP|U_REG_output|output\(0) & 
-- ((\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & !\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & 
-- \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y50_N30
\U_SEG_CONTL|displ0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux2~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (((\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & \U_FACT|U_DP|U_REG_output|output\(0))) # (!\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\) # ((\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\) # (\U_FACT|U_DP|U_REG_output|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y50_N16
\U_SEG_CONTL|displ0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux1~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ $ (\U_FACT|U_DP|U_REG_output|output\(0))))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & ((\U_FACT|U_DP|U_REG_output|output\(0) & ((\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\))) # (!\U_FACT|U_DP|U_REG_output|output\(0) & (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y50_N10
\U_SEG_CONTL|displ0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ0|Mux0~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\ $ (!\U_FACT|U_DP|U_REG_output|output\(0))))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\ & (\U_FACT|U_DP|U_REG_output|output\(0) & (\U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_0[2]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_0[1]~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_0[3]~2_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(0),
	combout => \U_SEG_CONTL|displ0|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y47_N16
\U_SEG_CONTL|bcd_conv|s_digit_0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\ & !\U_FACT|U_DP|U_REG_output|output\(7))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~12_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~13_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(7),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~14_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\);

-- Location: LCCOMB_X70_Y46_N12
\U_SEG_CONTL|bcd_conv|LessThan56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ = (\U_FACT|U_DP|U_REG_output|output\(15) & ((\U_FACT|U_DP|U_REG_output|output\(14)) # (\U_FACT|U_DP|U_REG_output|output\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(14),
	datac => \U_FACT|U_DP|U_REG_output|output\(15),
	datad => \U_FACT|U_DP|U_REG_output|output\(13),
	combout => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\);

-- Location: LCCOMB_X70_Y46_N22
\U_SEG_CONTL|bcd_conv|s_digit_0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\ = (\U_FACT|U_DP|U_REG_output|output\(15) & ((\U_FACT|U_DP|U_REG_output|output\(13) & (\U_FACT|U_DP|U_REG_output|output\(14) & \U_FACT|U_DP|U_REG_output|output\(12))) # (!\U_FACT|U_DP|U_REG_output|output\(13) & 
-- (!\U_FACT|U_DP|U_REG_output|output\(14))))) # (!\U_FACT|U_DP|U_REG_output|output\(15) & (\U_FACT|U_DP|U_REG_output|output\(14) & ((\U_FACT|U_DP|U_REG_output|output\(13)) # (\U_FACT|U_DP|U_REG_output|output\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(15),
	datab => \U_FACT|U_DP|U_REG_output|output\(13),
	datac => \U_FACT|U_DP|U_REG_output|output\(14),
	datad => \U_FACT|U_DP|U_REG_output|output\(12),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\);

-- Location: LCCOMB_X70_Y46_N10
\U_SEG_CONTL|bcd_conv|s_digit_0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\ & !\U_FACT|U_DP|U_REG_output|output\(11))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~2_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(11),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~0_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\);

-- Location: LCCOMB_X71_Y46_N6
\U_SEG_CONTL|bcd_conv|s_digit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\) # (!\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\);

-- Location: LCCOMB_X71_Y46_N28
\U_SEG_CONTL|bcd_conv|s_digit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ = (\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\);

-- Location: LCCOMB_X71_Y46_N4
\U_SEG_CONTL|bcd_conv|s_digit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\ = (\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\)) # (!\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ & 
-- ((!\U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\);

-- Location: LCCOMB_X70_Y46_N14
\U_SEG_CONTL|bcd_conv|s_digit_0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\ & !\U_FACT|U_DP|U_REG_output|output\(10))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~4_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~5_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(10),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\);

-- Location: LCCOMB_X71_Y46_N22
\U_SEG_CONTL|bcd_conv|s_digit_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ $ (((!\U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\);

-- Location: LCCOMB_X70_Y46_N18
\U_SEG_CONTL|bcd_conv|s_digit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~4_combout\ = (\U_FACT|U_DP|U_REG_output|output\(14) & (\U_FACT|U_DP|U_REG_output|output\(13) & (\U_FACT|U_DP|U_REG_output|output\(12) & \U_FACT|U_DP|U_REG_output|output\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(14),
	datab => \U_FACT|U_DP|U_REG_output|output\(13),
	datac => \U_FACT|U_DP|U_REG_output|output\(12),
	datad => \U_FACT|U_DP|U_REG_output|output\(15),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~4_combout\);

-- Location: LCCOMB_X71_Y46_N12
\U_SEG_CONTL|bcd_conv|s_digit_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~5_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~4_combout\) # ((!\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~4_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~5_combout\);

-- Location: LCCOMB_X71_Y46_N2
\U_SEG_CONTL|bcd_conv|LessThan82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|LessThan82~0_combout\ = (!\U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\,
	combout => \U_SEG_CONTL|bcd_conv|LessThan82~0_combout\);

-- Location: LCCOMB_X71_Y46_N16
\U_SEG_CONTL|bcd_conv|s_digit_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ = (\U_SEG_CONTL|bcd_conv|LessThan82~0_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~5_combout\)) # (!\U_SEG_CONTL|bcd_conv|LessThan82~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\ $ 
-- (\U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~5_combout\,
	datab => \U_SEG_CONTL|bcd_conv|LessThan82~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\);

-- Location: LCCOMB_X69_Y46_N10
\U_SEG_CONTL|bcd_conv|s_digit_0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\ $ ((((!\U_FACT|U_DP|U_REG_output|output\(9) & \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(9),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~8_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~7_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~6_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\);

-- Location: LCCOMB_X71_Y46_N18
\U_SEG_CONTL|bcd_conv|s_digit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\);

-- Location: LCCOMB_X71_Y46_N30
\U_SEG_CONTL|bcd_conv|s_digit_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\);

-- Location: LCCOMB_X71_Y46_N24
\U_SEG_CONTL|bcd_conv|s_digit_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\);

-- Location: LCCOMB_X70_Y47_N8
\U_SEG_CONTL|bcd_conv|s_digit_0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\ $ ((((!\U_FACT|U_DP|U_REG_output|output\(8) & \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~11_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~9_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(8),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~10_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\);

-- Location: LCCOMB_X71_Y46_N8
\U_SEG_CONTL|bcd_conv|s_digit_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\);

-- Location: LCCOMB_X71_Y44_N28
\U_SEG_CONTL|bcd_conv|s_digit_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\);

-- Location: LCCOMB_X71_Y44_N22
\U_SEG_CONTL|bcd_conv|s_digit_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\);

-- Location: LCCOMB_X71_Y44_N12
\U_SEG_CONTL|bcd_conv|s_digit_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\);

-- Location: LCCOMB_X71_Y44_N10
\U_SEG_CONTL|bcd_conv|s_digit_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\) # ((\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\);

-- Location: LCCOMB_X71_Y44_N20
\U_SEG_CONTL|bcd_conv|s_digit_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\);

-- Location: LCCOMB_X70_Y47_N12
\U_SEG_CONTL|bcd_conv|s_digit_0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\ & !\U_FACT|U_DP|U_REG_output|output\(6))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~15_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~16_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(6),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~17_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\);

-- Location: LCCOMB_X71_Y44_N18
\U_SEG_CONTL|bcd_conv|s_digit_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\);

-- Location: LCCOMB_X71_Y44_N14
\U_SEG_CONTL|bcd_conv|s_digit_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\);

-- Location: LCCOMB_X71_Y44_N4
\U_SEG_CONTL|bcd_conv|s_digit_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\);

-- Location: LCCOMB_X70_Y47_N4
\U_SEG_CONTL|bcd_conv|s_digit_0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\ & !\U_FACT|U_DP|U_REG_output|output\(5))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~19_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(5),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~20_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\);

-- Location: LCCOMB_X71_Y44_N24
\U_SEG_CONTL|bcd_conv|s_digit_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\);

-- Location: LCCOMB_X72_Y44_N6
\U_SEG_CONTL|bcd_conv|s_digit_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ $ (\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\);

-- Location: LCCOMB_X72_Y44_N20
\U_SEG_CONTL|bcd_conv|s_digit_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\);

-- Location: LCCOMB_X71_Y47_N22
\U_SEG_CONTL|bcd_conv|s_digit_0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\ & !\U_FACT|U_DP|U_REG_output|output\(4))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~22_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~23_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(4),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\);

-- Location: LCCOMB_X72_Y44_N0
\U_SEG_CONTL|bcd_conv|s_digit_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ $ ((!\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\);

-- Location: LCCOMB_X72_Y44_N10
\U_SEG_CONTL|bcd_conv|s_digit_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ $ ((!\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\);

-- Location: LCCOMB_X72_Y44_N8
\U_SEG_CONTL|bcd_conv|s_digit_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ $ (\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\);

-- Location: LCCOMB_X71_Y47_N8
\U_SEG_CONTL|bcd_conv|s_digit_0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\ & !\U_FACT|U_DP|U_REG_output|output\(3))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~24_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~25_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~26_combout\,
	datad => \U_FACT|U_DP|U_REG_output|output\(3),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\);

-- Location: LCCOMB_X72_Y44_N18
\U_SEG_CONTL|bcd_conv|s_digit_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\);

-- Location: LCCOMB_X72_Y44_N12
\U_SEG_CONTL|bcd_conv|s_digit_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\);

-- Location: LCCOMB_X72_Y44_N14
\U_SEG_CONTL|bcd_conv|s_digit_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\);

-- Location: LCCOMB_X71_Y47_N12
\U_SEG_CONTL|bcd_conv|s_digit_0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\ $ ((((!\U_FACT|U_DP|U_REG_output|output\(2) & \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(2),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~28_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~27_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~29_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\);

-- Location: LCCOMB_X72_Y44_N28
\U_SEG_CONTL|bcd_conv|s_digit_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\);

-- Location: LCCOMB_X72_Y44_N30
\U_SEG_CONTL|bcd_conv|digit_1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\);

-- Location: LCCOMB_X72_Y44_N16
\U_SEG_CONTL|bcd_conv|digit_1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ $ ((\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\);

-- Location: LCCOMB_X70_Y50_N12
\U_SEG_CONTL|bcd_conv|digit_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\ & !\U_FACT|U_DP|U_REG_output|output\(1))) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~31_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~30_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(1),
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\);

-- Location: LCCOMB_X72_Y44_N2
\U_SEG_CONTL|bcd_conv|digit_1[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\);

-- Location: LCCOMB_X74_Y44_N24
\U_SEG_CONTL|displ1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux6~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y44_N6
\U_SEG_CONTL|displ1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux5~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\) # (\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\) # ((\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & !\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y44_N8
\U_SEG_CONTL|displ1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux4~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & ((!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & ((!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y44_N10
\U_SEG_CONTL|displ1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux3~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & !\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ $ 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y44_N16
\U_SEG_CONTL|displ1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux2~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (((!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & !\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\) # ((!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\) # (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y44_N2
\U_SEG_CONTL|displ1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux1~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\))))) # (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y44_N12
\U_SEG_CONTL|displ1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ1|Mux0~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_1[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_1[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_1[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_1[1]~1_combout\,
	combout => \U_SEG_CONTL|displ1|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y46_N20
\U_SEG_CONTL|bcd_conv|LessThan75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ = (\U_SEG_CONTL|bcd_conv|LessThan56~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan56~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_0~35_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~34_combout\,
	combout => \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\);

-- Location: LCCOMB_X71_Y46_N10
\U_SEG_CONTL|bcd_conv|s_digit_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\ $ (((\U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~0_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~2_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_0~36_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\);

-- Location: LCCOMB_X71_Y46_N26
\U_SEG_CONTL|bcd_conv|s_digit_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~7_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~37_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\);

-- Location: LCCOMB_X71_Y44_N6
\U_SEG_CONTL|bcd_conv|s_digit_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~9_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~10_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~8_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\);

-- Location: LCCOMB_X75_Y44_N6
\U_SEG_CONTL|bcd_conv|s_digit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & (\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ & (!\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\);

-- Location: LCCOMB_X75_Y44_N8
\U_SEG_CONTL|bcd_conv|s_digit_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & ((\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ $ 
-- (((!\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\) # (!\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\);

-- Location: LCCOMB_X71_Y44_N8
\U_SEG_CONTL|bcd_conv|s_digit_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_0~39_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~11_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~12_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~13_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\);

-- Location: LCCOMB_X75_Y44_N0
\U_SEG_CONTL|bcd_conv|s_digit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\ & (\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ $ (\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & (\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\);

-- Location: LCCOMB_X75_Y44_N10
\U_SEG_CONTL|bcd_conv|s_digit_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\);

-- Location: LCCOMB_X75_Y44_N4
\U_SEG_CONTL|bcd_conv|s_digit_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\);

-- Location: LCCOMB_X71_Y44_N26
\U_SEG_CONTL|bcd_conv|s_digit_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~16_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~15_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~40_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~14_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\);

-- Location: LCCOMB_X75_Y44_N18
\U_SEG_CONTL|bcd_conv|s_digit_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\);

-- Location: LCCOMB_X75_Y44_N12
\U_SEG_CONTL|bcd_conv|s_digit_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\);

-- Location: LCCOMB_X75_Y44_N16
\U_SEG_CONTL|bcd_conv|s_digit_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\);

-- Location: LCCOMB_X72_Y44_N4
\U_SEG_CONTL|bcd_conv|s_digit_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~18_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~41_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~19_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\);

-- Location: LCCOMB_X75_Y44_N2
\U_SEG_CONTL|bcd_conv|s_digit_2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\);

-- Location: LCCOMB_X75_Y44_N20
\U_SEG_CONTL|bcd_conv|s_digit_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\);

-- Location: LCCOMB_X75_Y44_N22
\U_SEG_CONTL|bcd_conv|s_digit_2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\);

-- Location: LCCOMB_X72_Y44_N22
\U_SEG_CONTL|bcd_conv|s_digit_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~21_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~20_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~42_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~22_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\);

-- Location: LCCOMB_X75_Y44_N26
\U_SEG_CONTL|bcd_conv|s_digit_2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\);

-- Location: LCCOMB_X75_Y40_N26
\U_SEG_CONTL|bcd_conv|s_digit_2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ $ ((!\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\);

-- Location: LCCOMB_X75_Y40_N24
\U_SEG_CONTL|bcd_conv|s_digit_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ $ (\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\);

-- Location: LCCOMB_X72_Y44_N26
\U_SEG_CONTL|bcd_conv|s_digit_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~25_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~24_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~43_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~23_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\);

-- Location: LCCOMB_X75_Y40_N12
\U_SEG_CONTL|bcd_conv|s_digit_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\);

-- Location: LCCOMB_X75_Y40_N10
\U_SEG_CONTL|bcd_conv|digit_2[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\);

-- Location: LCCOMB_X75_Y40_N28
\U_SEG_CONTL|bcd_conv|digit_2[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\);

-- Location: LCCOMB_X72_Y44_N24
\U_SEG_CONTL|bcd_conv|digit_2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_1~26_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~27_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_0~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~28_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\);

-- Location: LCCOMB_X75_Y40_N18
\U_SEG_CONTL|bcd_conv|digit_2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\);

-- Location: LCCOMB_X75_Y40_N4
\U_SEG_CONTL|displ2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux6~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y40_N6
\U_SEG_CONTL|displ2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux5~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\) # (\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\) # ((\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & !\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y40_N0
\U_SEG_CONTL|displ2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux4~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & ((!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & ((!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y40_N2
\U_SEG_CONTL|displ2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux3~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & !\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ $ 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y40_N16
\U_SEG_CONTL|displ2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux2~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (((!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & !\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\) # ((!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\) # (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y40_N14
\U_SEG_CONTL|displ2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux1~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\))))) # (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y40_N20
\U_SEG_CONTL|displ2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ2|Mux0~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_2[3]~3_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_2[2]~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_2[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_2[1]~1_combout\,
	combout => \U_SEG_CONTL|displ2|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y44_N14
\U_SEG_CONTL|bcd_conv|s_digit_2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~8_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~6_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~7_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\);

-- Location: LCCOMB_X75_Y44_N30
\U_SEG_CONTL|bcd_conv|s_digit_2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~2_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~31_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~0_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\);

-- Location: LCCOMB_X70_Y46_N2
\U_SEG_CONTL|bcd_conv|s_digit_3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~3_combout\ = (\U_FACT|U_DP|U_REG_output|output\(11) & (\U_FACT|U_DP|U_REG_output|output\(12) & ((\U_FACT|U_DP|U_REG_output|output\(10)) # (\U_FACT|U_DP|U_REG_output|output\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(11),
	datab => \U_FACT|U_DP|U_REG_output|output\(10),
	datac => \U_FACT|U_DP|U_REG_output|output\(9),
	datad => \U_FACT|U_DP|U_REG_output|output\(12),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~3_combout\);

-- Location: LCCOMB_X70_Y46_N0
\U_SEG_CONTL|bcd_conv|s_digit_3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\ = (\U_FACT|U_DP|U_REG_output|output\(14) & (\U_SEG_CONTL|bcd_conv|s_digit_3~3_combout\ & (\U_FACT|U_DP|U_REG_output|output\(13) & \U_FACT|U_DP|U_REG_output|output\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FACT|U_DP|U_REG_output|output\(14),
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~3_combout\,
	datac => \U_FACT|U_DP|U_REG_output|output\(13),
	datad => \U_FACT|U_DP|U_REG_output|output\(15),
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\);

-- Location: LCCOMB_X75_Y44_N28
\U_SEG_CONTL|bcd_conv|s_digit_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\ = (\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\)))) # (!\U_SEG_CONTL|bcd_conv|LessThan75~0_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|LessThan75~0_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_1~35_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~36_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_1~30_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\);

-- Location: LCCOMB_X76_Y44_N12
\U_SEG_CONTL|bcd_conv|s_digit_3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ = (!\U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\);

-- Location: LCCOMB_X75_Y44_N24
\U_SEG_CONTL|bcd_conv|s_digit_2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~5_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~4_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~32_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~3_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\);

-- Location: LCCOMB_X76_Y44_N10
\U_SEG_CONTL|bcd_conv|s_digit_3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~17_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~16_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\);

-- Location: LCCOMB_X76_Y44_N28
\U_SEG_CONTL|bcd_conv|s_digit_3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ $ ((!\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\);

-- Location: LCCOMB_X76_Y44_N22
\U_SEG_CONTL|bcd_conv|s_digit_3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\ & 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\);

-- Location: LCCOMB_X76_Y44_N16
\U_SEG_CONTL|bcd_conv|s_digit_3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\ & ((!\U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\)))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\ & 
-- (((\U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~30_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~18_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~38_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~31_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\);

-- Location: LCCOMB_X76_Y44_N18
\U_SEG_CONTL|bcd_conv|s_digit_3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\))))) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\);

-- Location: LCCOMB_X76_Y44_N4
\U_SEG_CONTL|bcd_conv|s_digit_3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\) # ((\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\);

-- Location: LCCOMB_X75_Y40_N8
\U_SEG_CONTL|bcd_conv|s_digit_2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\ $ ((((\U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~10_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~9_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~34_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~11_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\);

-- Location: LCCOMB_X76_Y44_N30
\U_SEG_CONTL|bcd_conv|s_digit_3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~19_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~34_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_3~33_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~32_combout\,
	combout => \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\);

-- Location: LCCOMB_X77_Y40_N12
\U_SEG_CONTL|bcd_conv|digit_3[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\) # (\U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\ $ (!\U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\);

-- Location: LCCOMB_X77_Y40_N28
\U_SEG_CONTL|bcd_conv|digit_3[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ & (!\U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\ & (\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\))) # (!\U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\ & ((\U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\);

-- Location: LCCOMB_X75_Y40_N22
\U_SEG_CONTL|bcd_conv|digit_3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ = \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\ $ ((((!\U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_2~13_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_2~14_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_1~29_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_2~12_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\);

-- Location: LCCOMB_X77_Y40_N10
\U_SEG_CONTL|bcd_conv|digit_3[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\ = (\U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\ & (((!\U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\ & !\U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\)) # (!\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\ & (((\U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\ & \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|s_digit_3~37_combout\,
	datab => \U_SEG_CONTL|bcd_conv|s_digit_3~36_combout\,
	datac => \U_SEG_CONTL|bcd_conv|s_digit_2~15_combout\,
	datad => \U_SEG_CONTL|bcd_conv|s_digit_3~35_combout\,
	combout => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\);

-- Location: LCCOMB_X77_Y40_N30
\U_SEG_CONTL|displ3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux6~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N16
\U_SEG_CONTL|displ3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux5~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\) # ((\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\) # (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\U_SEG_CONTL|displ3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux4~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\))) # (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & 
-- ((\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\ & ((!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\U_SEG_CONTL|displ3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux3~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & !\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ $ 
-- (((!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\U_SEG_CONTL|displ3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux2~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (((!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & !\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (((\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\) # (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\)) # (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\U_SEG_CONTL|displ3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux1~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & ((\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\))) # (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & 
-- (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\)))) # (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\U_SEG_CONTL|displ3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SEG_CONTL|displ3|Mux0~0_combout\ = (\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ $ (\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\)))) # 
-- (!\U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\ & (!\U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\ & (\U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\ $ (!\U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SEG_CONTL|bcd_conv|digit_3[1]~1_combout\,
	datab => \U_SEG_CONTL|bcd_conv|digit_3[3]~3_combout\,
	datac => \U_SEG_CONTL|bcd_conv|digit_3[0]~0_combout\,
	datad => \U_SEG_CONTL|bcd_conv|digit_3[2]~2_combout\,
	combout => \U_SEG_CONTL|displ3|Mux0~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;
END structure;


