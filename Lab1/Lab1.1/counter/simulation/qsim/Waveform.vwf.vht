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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/11/2020 11:09:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_vhd_vec_tst IS
END counter_vhd_vec_tst;
ARCHITECTURE counter_arch OF counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr_n : STD_LOGIC;
SIGNAL data0 : STD_LOGIC;
SIGNAL data1 : STD_LOGIC;
SIGNAL data2 : STD_LOGIC;
SIGNAL data3 : STD_LOGIC;
SIGNAL data4 : STD_LOGIC;
SIGNAL data5 : STD_LOGIC;
SIGNAL data6 : STD_LOGIC;
SIGNAL data7 : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL ld_n : STD_LOGIC;
SIGNAL output0 : STD_LOGIC;
SIGNAL output1 : STD_LOGIC;
SIGNAL output2 : STD_LOGIC;
SIGNAL output3 : STD_LOGIC;
SIGNAL output4 : STD_LOGIC;
SIGNAL output5 : STD_LOGIC;
SIGNAL output6 : STD_LOGIC;
SIGNAL output7 : STD_LOGIC;
SIGNAL rco : STD_LOGIC;
COMPONENT counter
	PORT (
	clk : IN STD_LOGIC;
	clr_n : IN STD_LOGIC;
	data0 : IN STD_LOGIC;
	data1 : IN STD_LOGIC;
	data2 : IN STD_LOGIC;
	data3 : IN STD_LOGIC;
	data4 : IN STD_LOGIC;
	data5 : IN STD_LOGIC;
	data6 : IN STD_LOGIC;
	data7 : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	ld_n : IN STD_LOGIC;
	output0 : OUT STD_LOGIC;
	output1 : OUT STD_LOGIC;
	output2 : OUT STD_LOGIC;
	output3 : OUT STD_LOGIC;
	output4 : OUT STD_LOGIC;
	output5 : OUT STD_LOGIC;
	output6 : OUT STD_LOGIC;
	output7 : OUT STD_LOGIC;
	rco : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr_n => clr_n,
	data0 => data0,
	data1 => data1,
	data2 => data2,
	data3 => data3,
	data4 => data4,
	data5 => data5,
	data6 => data6,
	data7 => data7,
	enable => enable,
	ld_n => ld_n,
	output0 => output0,
	output1 => output1,
	output2 => output2,
	output3 => output3,
	output4 => output4,
	output5 => output5,
	output6 => output6,
	output7 => output7,
	rco => rco
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clr_n
t_prcs_clr_n: PROCESS
BEGIN
	clr_n <= '0';
WAIT;
END PROCESS t_prcs_clr_n;

-- ld_n
t_prcs_ld_n: PROCESS
BEGIN
	ld_n <= '0';
WAIT;
END PROCESS t_prcs_ld_n;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- data0
t_prcs_data0: PROCESS
BEGIN
	data0 <= '0';
WAIT;
END PROCESS t_prcs_data0;

-- data1
t_prcs_data1: PROCESS
BEGIN
	data1 <= '0';
WAIT;
END PROCESS t_prcs_data1;

-- data2
t_prcs_data2: PROCESS
BEGIN
	data2 <= '0';
WAIT;
END PROCESS t_prcs_data2;

-- data3
t_prcs_data3: PROCESS
BEGIN
	data3 <= '0';
WAIT;
END PROCESS t_prcs_data3;

-- data4
t_prcs_data4: PROCESS
BEGIN
	data4 <= '0';
WAIT;
END PROCESS t_prcs_data4;

-- data5
t_prcs_data5: PROCESS
BEGIN
	data5 <= '0';
WAIT;
END PROCESS t_prcs_data5;

-- data6
t_prcs_data6: PROCESS
BEGIN
	data6 <= '0';
WAIT;
END PROCESS t_prcs_data6;

-- data7
t_prcs_data7: PROCESS
BEGIN
	data7 <= '0';
WAIT;
END PROCESS t_prcs_data7;
END counter_arch;
