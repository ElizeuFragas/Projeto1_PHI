-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "09/26/2022 00:01:03"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ULA IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	sel : IN STD.STANDARD.natural range 0 TO 8;
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END ULA;

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \sub|sub[0]~0_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \mux|saida[0]~2_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sum|soma[0]~0_combout\ : std_logic;
SIGNAL \mux|saida[0]~27_combout\ : std_logic;
SIGNAL \mux|saida[0]~28_combout\ : std_logic;
SIGNAL \mux|saida[0]~3_combout\ : std_logic;
SIGNAL \mux|saida[0]~4_combout\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \mux|saida[0]~5_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \mux|saida[1]~25_combout\ : std_logic;
SIGNAL \mux|saida[1]~26_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \sub|sub[0]~1\ : std_logic;
SIGNAL \sub|sub[1]~2_combout\ : std_logic;
SIGNAL \sum|soma[0]~1\ : std_logic;
SIGNAL \sum|soma[1]~2_combout\ : std_logic;
SIGNAL \mux|saida[1]~6_combout\ : std_logic;
SIGNAL \mux|saida[1]~7_combout\ : std_logic;
SIGNAL \mux|saida[1]~8_combout\ : std_logic;
SIGNAL \mux|saida[1]~24_combout\ : std_logic;
SIGNAL \mux|saida[2]~9_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \mux|saida[0]~10_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \sub|sub[1]~3\ : std_logic;
SIGNAL \sub|sub[2]~4_combout\ : std_logic;
SIGNAL \mux|saida[0]~11_combout\ : std_logic;
SIGNAL \sum|soma[1]~3\ : std_logic;
SIGNAL \sum|soma[2]~4_combout\ : std_logic;
SIGNAL \mux|saida[0]~12_combout\ : std_logic;
SIGNAL \mux|saida[2]~13_combout\ : std_logic;
SIGNAL \mux|saida[0]~14_combout\ : std_logic;
SIGNAL \mux|saida[0]~15_combout\ : std_logic;
SIGNAL \mux|saida[2]~16_combout\ : std_logic;
SIGNAL \mux|saida[2]~17_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \sub|sub[2]~5\ : std_logic;
SIGNAL \sub|sub[3]~6_combout\ : std_logic;
SIGNAL \sum|soma[2]~5\ : std_logic;
SIGNAL \sum|soma[3]~6_combout\ : std_logic;
SIGNAL \mux|saida[3]~18_combout\ : std_logic;
SIGNAL \mux|saida[3]~19_combout\ : std_logic;
SIGNAL \dec|Add0~0_combout\ : std_logic;
SIGNAL \mux|saida[3]~20_combout\ : std_logic;
SIGNAL \mux|saida[3]~21_combout\ : std_logic;
SIGNAL \mux|saida[3]~22_combout\ : std_logic;
SIGNAL \mux|saida[3]~23_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_sel <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(sel, 4);
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|saida[0]~5_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|saida[1]~24_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|saida[2]~17_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|saida[3]~23_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\sub|sub[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub|sub[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \sub|sub[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \sub|sub[0]~0_combout\,
	cout => \sub|sub[0]~1\);

\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

\mux|saida[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~2_combout\ = (\sel[2]~input_o\ & (\a[1]~input_o\)) # (!\sel[2]~input_o\ & ((\sub|sub[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \sub|sub[0]~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \mux|saida[0]~2_combout\);

\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

\sum|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|soma[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & VCC))
-- \sum|soma[0]~1\ = CARRY((\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \sum|soma[0]~0_combout\,
	cout => \sum|soma[0]~1\);

\mux|saida[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~27_combout\ = (\sel[1]~input_o\ & (((!\sel[2]~input_o\ & \a[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[2]~input_o\ & ((!\a[0]~input_o\))) # (!\sel[2]~input_o\ & (\sum|soma[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sum|soma[0]~0_combout\,
	datac => \sel[2]~input_o\,
	datad => \a[0]~input_o\,
	combout => \mux|saida[0]~27_combout\);

\mux|saida[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~28_combout\ = (\sel[0]~input_o\ & (\sel[1]~input_o\)) # (!\sel[0]~input_o\ & (\mux|saida[0]~27_combout\ & ((\b[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux|saida[0]~27_combout\,
	datac => \b[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \mux|saida[0]~28_combout\);

\mux|saida[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~3_combout\ = (\a[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\a[0]~input_o\ & ((\b[0]~input_o\) # (\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \mux|saida[0]~3_combout\);

\mux|saida[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~4_combout\ = (\sel[0]~input_o\ & ((\mux|saida[0]~28_combout\ & ((\mux|saida[0]~3_combout\))) # (!\mux|saida[0]~28_combout\ & (\mux|saida[0]~2_combout\)))) # (!\sel[0]~input_o\ & (((\mux|saida[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[0]~2_combout\,
	datab => \sel[0]~input_o\,
	datac => \mux|saida[0]~28_combout\,
	datad => \mux|saida[0]~3_combout\,
	combout => \mux|saida[0]~4_combout\);

\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

\mux|saida[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~5_combout\ = (\sel[3]~input_o\ & ((!\a[0]~input_o\))) # (!\sel[3]~input_o\ & (\mux|saida[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[0]~4_combout\,
	datac => \sel[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \mux|saida[0]~5_combout\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\mux|saida[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~25_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\) # (\a[2]~input_o\)))) # (!\sel[0]~input_o\ & (!\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \mux|saida[1]~25_combout\);

\mux|saida[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~26_combout\ = (\a[1]~input_o\ & (\mux|saida[1]~25_combout\ $ (((\sel[1]~input_o\ & \a[0]~input_o\))))) # (!\a[1]~input_o\ & (\mux|saida[1]~25_combout\ & ((\a[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \mux|saida[1]~25_combout\,
	datac => \sel[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \mux|saida[1]~26_combout\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\sub|sub[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub|sub[1]~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (!\sub|sub[0]~1\)) # (!\a[1]~input_o\ & ((\sub|sub[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (\sub|sub[0]~1\ & VCC)) # (!\a[1]~input_o\ & (!\sub|sub[0]~1\))))
-- \sub|sub[1]~3\ = CARRY((\b[1]~input_o\ & ((!\sub|sub[0]~1\) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (!\a[1]~input_o\ & !\sub|sub[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \sub|sub[0]~1\,
	combout => \sub|sub[1]~2_combout\,
	cout => \sub|sub[1]~3\);

\sum|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|soma[1]~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (\sum|soma[0]~1\ & VCC)) # (!\a[1]~input_o\ & (!\sum|soma[0]~1\)))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (!\sum|soma[0]~1\)) # (!\a[1]~input_o\ & ((\sum|soma[0]~1\) # (GND)))))
-- \sum|soma[1]~3\ = CARRY((\b[1]~input_o\ & (!\a[1]~input_o\ & !\sum|soma[0]~1\)) # (!\b[1]~input_o\ & ((!\sum|soma[0]~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \sum|soma[0]~1\,
	combout => \sum|soma[1]~2_combout\,
	cout => \sum|soma[1]~3\);

\mux|saida[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~6_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\sub|sub[1]~2_combout\)) # (!\sel[0]~input_o\ & ((\sum|soma[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sub|sub[1]~2_combout\,
	datac => \sel[0]~input_o\,
	datad => \sum|soma[1]~2_combout\,
	combout => \mux|saida[1]~6_combout\);

\mux|saida[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~7_combout\ = (\b[1]~input_o\ & ((\mux|saida[1]~6_combout\) # ((\a[1]~input_o\ & \sel[1]~input_o\)))) # (!\b[1]~input_o\ & (\mux|saida[1]~6_combout\ & ((\a[1]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \mux|saida[1]~6_combout\,
	datad => \sel[1]~input_o\,
	combout => \mux|saida[1]~7_combout\);

\mux|saida[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~8_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\mux|saida[1]~26_combout\)) # (!\sel[2]~input_o\ & ((\mux|saida[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[1]~26_combout\,
	datab => \mux|saida[1]~7_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \mux|saida[1]~8_combout\);

\mux|saida[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[1]~24_combout\ = (\mux|saida[1]~8_combout\) # ((\sel[3]~input_o\ & (\a[0]~input_o\ $ (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \mux|saida[1]~8_combout\,
	datad => \sel[3]~input_o\,
	combout => \mux|saida[1]~24_combout\);

\mux|saida[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[2]~9_combout\ = (\sel[3]~input_o\ & (\a[2]~input_o\ $ (((!\a[0]~input_o\ & !\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \mux|saida[2]~9_combout\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\mux|saida[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~10_combout\ = (\sel[2]~input_o\ & (\a[1]~input_o\)) # (!\sel[2]~input_o\ & (((\a[2]~input_o\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \mux|saida[0]~10_combout\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\sub|sub[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub|sub[2]~4_combout\ = ((\b[2]~input_o\ $ (\a[2]~input_o\ $ (\sub|sub[1]~3\)))) # (GND)
-- \sub|sub[2]~5\ = CARRY((\b[2]~input_o\ & (\a[2]~input_o\ & !\sub|sub[1]~3\)) # (!\b[2]~input_o\ & ((\a[2]~input_o\) # (!\sub|sub[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \sub|sub[1]~3\,
	combout => \sub|sub[2]~4_combout\,
	cout => \sub|sub[2]~5\);

\mux|saida[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~11_combout\ = (\sel[2]~input_o\ & (\a[3]~input_o\)) # (!\sel[2]~input_o\ & ((\sub|sub[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \sub|sub[2]~4_combout\,
	datad => \sel[2]~input_o\,
	combout => \mux|saida[0]~11_combout\);

\sum|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|soma[2]~4_combout\ = ((\b[2]~input_o\ $ (\a[2]~input_o\ $ (!\sum|soma[1]~3\)))) # (GND)
-- \sum|soma[2]~5\ = CARRY((\b[2]~input_o\ & ((\a[2]~input_o\) # (!\sum|soma[1]~3\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & !\sum|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \sum|soma[1]~3\,
	combout => \sum|soma[2]~4_combout\,
	cout => \sum|soma[2]~5\);

\mux|saida[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~12_combout\ = (\sel[2]~input_o\ & ((!\a[2]~input_o\))) # (!\sel[2]~input_o\ & (\sum|soma[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|soma[2]~4_combout\,
	datac => \sel[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \mux|saida[0]~12_combout\);

\mux|saida[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[2]~13_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\mux|saida[0]~11_combout\)) # (!\sel[0]~input_o\ & ((\mux|saida[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \mux|saida[0]~11_combout\,
	datac => \sel[0]~input_o\,
	datad => \mux|saida[0]~12_combout\,
	combout => \mux|saida[2]~13_combout\);

\mux|saida[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~14_combout\ = (\sel[2]~input_o\ & (\a[2]~input_o\ $ (((\a[0]~input_o\ & \a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \mux|saida[0]~14_combout\);

\mux|saida[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[0]~15_combout\ = (\mux|saida[0]~14_combout\) # ((!\sel[2]~input_o\ & ((\a[2]~input_o\) # (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[0]~14_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \mux|saida[0]~15_combout\);

\mux|saida[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[2]~16_combout\ = (\sel[1]~input_o\ & ((\mux|saida[2]~13_combout\ & ((\mux|saida[0]~15_combout\))) # (!\mux|saida[2]~13_combout\ & (\mux|saida[0]~10_combout\)))) # (!\sel[1]~input_o\ & (((\mux|saida[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[0]~10_combout\,
	datab => \sel[1]~input_o\,
	datac => \mux|saida[2]~13_combout\,
	datad => \mux|saida[0]~15_combout\,
	combout => \mux|saida[2]~16_combout\);

\mux|saida[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[2]~17_combout\ = (\mux|saida[2]~9_combout\) # ((\mux|saida[2]~16_combout\ & !\sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[2]~9_combout\,
	datab => \mux|saida[2]~16_combout\,
	datad => \sel[3]~input_o\,
	combout => \mux|saida[2]~17_combout\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\sub|sub[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub|sub[3]~6_combout\ = \b[3]~input_o\ $ (\a[3]~input_o\ $ (!\sub|sub[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	cin => \sub|sub[2]~5\,
	combout => \sub|sub[3]~6_combout\);

\sum|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|soma[3]~6_combout\ = \b[3]~input_o\ $ (\a[3]~input_o\ $ (\sum|soma[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	cin => \sum|soma[2]~5\,
	combout => \sum|soma[3]~6_combout\);

\mux|saida[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~18_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\sub|sub[3]~6_combout\)) # (!\sel[0]~input_o\ & ((\sum|soma[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sub|sub[3]~6_combout\,
	datac => \sel[0]~input_o\,
	datad => \sum|soma[3]~6_combout\,
	combout => \mux|saida[3]~18_combout\);

\mux|saida[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~19_combout\ = (\b[3]~input_o\ & ((\mux|saida[3]~18_combout\) # ((\a[3]~input_o\ & \sel[1]~input_o\)))) # (!\b[3]~input_o\ & (\mux|saida[3]~18_combout\ & ((\a[3]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \mux|saida[3]~18_combout\,
	datad => \sel[1]~input_o\,
	combout => \mux|saida[3]~19_combout\);

\dec|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|Add0~0_combout\ = \a[3]~input_o\ $ (((\a[0]~input_o\) # ((\a[1]~input_o\) # (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \dec|Add0~0_combout\);

\mux|saida[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~20_combout\ = (\sel[3]~input_o\ & (((!\dec|Add0~0_combout\)))) # (!\sel[3]~input_o\ & (\mux|saida[3]~19_combout\ & (!\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[3]~19_combout\,
	datab => \sel[3]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \dec|Add0~0_combout\,
	combout => \mux|saida[3]~20_combout\);

\mux|saida[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~21_combout\ = (\a[2]~input_o\ & (((\a[0]~input_o\ & \a[1]~input_o\)) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \mux|saida[3]~21_combout\);

\mux|saida[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~22_combout\ = (\sel[1]~input_o\ & (\mux|saida[3]~21_combout\ $ (((\a[3]~input_o\ & \sel[0]~input_o\))))) # (!\sel[1]~input_o\ & (!\a[3]~input_o\ & (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \mux|saida[3]~21_combout\,
	combout => \mux|saida[3]~22_combout\);

\mux|saida[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|saida[3]~23_combout\ = (\mux|saida[3]~20_combout\) # ((\sel[2]~input_o\ & (\mux|saida[3]~22_combout\ & !\sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|saida[3]~20_combout\,
	datab => \sel[2]~input_o\,
	datac => \mux|saida[3]~22_combout\,
	datad => \sel[3]~input_o\,
	combout => \mux|saida[3]~23_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;
END structure;


