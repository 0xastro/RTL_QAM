-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jun 14 17:07:09 2019
-- Host        : DESKTOP-0K7MQOL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/rewal/Desktop/RTL_QAM-master/QAM_Vivado/QAM_Vivado.sim/sim_1/impl/func/xsim/tb_QAM_Hierarchical_func_impl.vhd
-- Design      : QAM_Hierarchical
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PhaseGenerator is
  port (
    \phase_int_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \phase_int_reg[4]_0\ : out STD_LOGIC;
    \accum_reg_rep[3]_0\ : out STD_LOGIC;
    \accum_reg_rep[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \accum_reg_rep[4]_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fcw_IBUF : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end PhaseGenerator;

architecture STRUCTURE of PhaseGenerator is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal accum0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \accum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \accum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \accum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \accum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \accum0_carry__0_n_0\ : STD_LOGIC;
  signal \accum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \accum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \accum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \accum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal accum0_carry_i_1_n_0 : STD_LOGIC;
  signal accum0_carry_i_2_n_0 : STD_LOGIC;
  signal accum0_carry_i_3_n_0 : STD_LOGIC;
  signal accum0_carry_i_4_n_0 : STD_LOGIC;
  signal accum0_carry_n_0 : STD_LOGIC;
  signal \accum[0]_i_2_n_0\ : STD_LOGIC;
  signal \accum[0]_i_3_n_0\ : STD_LOGIC;
  signal \accum[0]_i_4_n_0\ : STD_LOGIC;
  signal \accum[0]_i_5_n_0\ : STD_LOGIC;
  signal \accum[4]_i_2_n_0\ : STD_LOGIC;
  signal \accum[4]_i_3_n_0\ : STD_LOGIC;
  signal \accum[4]_i_4_n_0\ : STD_LOGIC;
  signal \accum[4]_i_5_n_0\ : STD_LOGIC;
  signal \accum[8]_i_2_n_0\ : STD_LOGIC;
  signal \accum[8]_i_3_n_0\ : STD_LOGIC;
  signal \accum[8]_i_4_n_0\ : STD_LOGIC;
  signal \accum[8]_i_5_n_0\ : STD_LOGIC;
  signal accum_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \accum_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \accum_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \accum_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \accum_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \accum_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \accum_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \accum_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \accum_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \accum_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \accum_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \accum_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \accum_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \accum_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \accum_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \accum_reg__0\ : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^accum_reg_rep[11]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal phase_int0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \phase_int0_carry__0_n_0\ : STD_LOGIC;
  signal \phase_int0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal phase_int0_carry_n_0 : STD_LOGIC;
  signal NLW_accum0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_accum0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_accum0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_accum_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_accum_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_phase_int0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_phase_int0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_phase_int0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phase_int0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of accum0_carry : label is "SWEEP ";
  attribute OPT_MODIFIED of \accum0_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \accum0_carry__1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \accum_reg[0]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \accum_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \accum_reg[8]_i_1\ : label is "SWEEP ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \accum_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[10]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[11]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \accum_reg_rep[9]\ : label is "no";
  attribute OPT_MODIFIED of phase_int0_carry : label is "SWEEP ";
  attribute OPT_MODIFIED of \phase_int0_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \phase_int0_carry__1\ : label is "SWEEP ";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  \accum_reg_rep[11]_0\(11 downto 0) <= \^accum_reg_rep[11]_0\(11 downto 0);
accum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => accum0_carry_n_0,
      CO(2 downto 0) => NLW_accum0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \accum_reg__0\(3 downto 1),
      DI(0) => accum_reg(0),
      O(3 downto 0) => accum0(3 downto 0),
      S(3) => accum0_carry_i_1_n_0,
      S(2) => accum0_carry_i_2_n_0,
      S(1) => accum0_carry_i_3_n_0,
      S(0) => accum0_carry_i_4_n_0
    );
\accum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => accum0_carry_n_0,
      CO(3) => \accum0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_accum0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \accum_reg__0\(7 downto 4),
      O(3 downto 0) => accum0(7 downto 4),
      S(3) => \accum0_carry__0_i_1_n_0\,
      S(2) => \accum0_carry__0_i_2_n_0\,
      S(1) => \accum0_carry__0_i_3_n_0\,
      S(0) => \accum0_carry__0_i_4_n_0\
    );
\accum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(7),
      I1 => i_fcw_IBUF(7),
      O => \accum0_carry__0_i_1_n_0\
    );
\accum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(6),
      I1 => i_fcw_IBUF(6),
      O => \accum0_carry__0_i_2_n_0\
    );
\accum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(5),
      I1 => i_fcw_IBUF(5),
      O => \accum0_carry__0_i_3_n_0\
    );
\accum0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(4),
      I1 => i_fcw_IBUF(4),
      O => \accum0_carry__0_i_4_n_0\
    );
\accum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_accum0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \accum_reg__0\(10 downto 8),
      O(3 downto 0) => accum0(11 downto 8),
      S(3) => \accum0_carry__1_i_1_n_0\,
      S(2) => \accum0_carry__1_i_2_n_0\,
      S(1) => \accum0_carry__1_i_3_n_0\,
      S(0) => \accum0_carry__1_i_4_n_0\
    );
\accum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(11),
      I1 => i_fcw_IBUF(11),
      O => \accum0_carry__1_i_1_n_0\
    );
\accum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(10),
      I1 => i_fcw_IBUF(10),
      O => \accum0_carry__1_i_2_n_0\
    );
\accum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(9),
      I1 => i_fcw_IBUF(9),
      O => \accum0_carry__1_i_3_n_0\
    );
\accum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(8),
      I1 => i_fcw_IBUF(8),
      O => \accum0_carry__1_i_4_n_0\
    );
accum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(3),
      I1 => i_fcw_IBUF(3),
      O => accum0_carry_i_1_n_0
    );
accum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(2),
      I1 => i_fcw_IBUF(2),
      O => accum0_carry_i_2_n_0
    );
accum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \accum_reg__0\(1),
      I1 => i_fcw_IBUF(1),
      O => accum0_carry_i_3_n_0
    );
accum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(0),
      I1 => i_fcw_IBUF(0),
      O => accum0_carry_i_4_n_0
    );
\accum[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(3),
      I1 => \accum_reg__0\(3),
      O => \accum[0]_i_2_n_0\
    );
\accum[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(2),
      I1 => \accum_reg__0\(2),
      O => \accum[0]_i_3_n_0\
    );
\accum[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(1),
      I1 => \accum_reg__0\(1),
      O => \accum[0]_i_4_n_0\
    );
\accum[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(0),
      I1 => accum_reg(0),
      O => \accum[0]_i_5_n_0\
    );
\accum[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(7),
      I1 => \accum_reg__0\(7),
      O => \accum[4]_i_2_n_0\
    );
\accum[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(6),
      I1 => \accum_reg__0\(6),
      O => \accum[4]_i_3_n_0\
    );
\accum[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(5),
      I1 => \accum_reg__0\(5),
      O => \accum[4]_i_4_n_0\
    );
\accum[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(4),
      I1 => \accum_reg__0\(4),
      O => \accum[4]_i_5_n_0\
    );
\accum[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(11),
      I1 => \accum_reg__0\(11),
      O => \accum[8]_i_2_n_0\
    );
\accum[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(10),
      I1 => \accum_reg__0\(10),
      O => \accum[8]_i_3_n_0\
    );
\accum[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(9),
      I1 => \accum_reg__0\(9),
      O => \accum[8]_i_4_n_0\
    );
\accum[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fcw_IBUF(8),
      I1 => \accum_reg__0\(8),
      O => \accum[8]_i_5_n_0\
    );
\accum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[0]_i_1_n_7\,
      Q => accum_reg(0)
    );
\accum_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \accum_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_accum_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => i_fcw_IBUF(3 downto 0),
      O(3) => \accum_reg[0]_i_1_n_4\,
      O(2) => \accum_reg[0]_i_1_n_5\,
      O(1) => \accum_reg[0]_i_1_n_6\,
      O(0) => \accum_reg[0]_i_1_n_7\,
      S(3) => \accum[0]_i_2_n_0\,
      S(2) => \accum[0]_i_3_n_0\,
      S(1) => \accum[0]_i_4_n_0\,
      S(0) => \accum[0]_i_5_n_0\
    );
\accum_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[8]_i_1_n_5\,
      Q => \accum_reg__0\(10)
    );
\accum_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[8]_i_1_n_4\,
      Q => \accum_reg__0\(11)
    );
\accum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[0]_i_1_n_6\,
      Q => \accum_reg__0\(1)
    );
\accum_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[0]_i_1_n_5\,
      Q => \accum_reg__0\(2)
    );
\accum_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[0]_i_1_n_4\,
      Q => \accum_reg__0\(3)
    );
\accum_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[4]_i_1_n_7\,
      Q => \accum_reg__0\(4)
    );
\accum_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg[0]_i_1_n_0\,
      CO(3) => \accum_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_accum_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => i_fcw_IBUF(7 downto 4),
      O(3) => \accum_reg[4]_i_1_n_4\,
      O(2) => \accum_reg[4]_i_1_n_5\,
      O(1) => \accum_reg[4]_i_1_n_6\,
      O(0) => \accum_reg[4]_i_1_n_7\,
      S(3) => \accum[4]_i_2_n_0\,
      S(2) => \accum[4]_i_3_n_0\,
      S(1) => \accum[4]_i_4_n_0\,
      S(0) => \accum[4]_i_5_n_0\
    );
\accum_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[4]_i_1_n_6\,
      Q => \accum_reg__0\(5)
    );
\accum_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[4]_i_1_n_5\,
      Q => \accum_reg__0\(6)
    );
\accum_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[4]_i_1_n_4\,
      Q => \accum_reg__0\(7)
    );
\accum_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[8]_i_1_n_7\,
      Q => \accum_reg__0\(8)
    );
\accum_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg[4]_i_1_n_0\,
      CO(3 downto 0) => \NLW_accum_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => i_fcw_IBUF(10 downto 8),
      O(3) => \accum_reg[8]_i_1_n_4\,
      O(2) => \accum_reg[8]_i_1_n_5\,
      O(1) => \accum_reg[8]_i_1_n_6\,
      O(0) => \accum_reg[8]_i_1_n_7\,
      S(3) => \accum[8]_i_2_n_0\,
      S(2) => \accum[8]_i_3_n_0\,
      S(1) => \accum[8]_i_4_n_0\,
      S(0) => \accum[8]_i_5_n_0\
    );
\accum_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \accum_reg[8]_i_1_n_6\,
      Q => \accum_reg__0\(9)
    );
\accum_reg_rep[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(0),
      Q => \^accum_reg_rep[11]_0\(0)
    );
\accum_reg_rep[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(10),
      Q => \^accum_reg_rep[11]_0\(10)
    );
\accum_reg_rep[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(11),
      Q => \^accum_reg_rep[11]_0\(11)
    );
\accum_reg_rep[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(1),
      Q => \^accum_reg_rep[11]_0\(1)
    );
\accum_reg_rep[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(2),
      Q => \^accum_reg_rep[11]_0\(2)
    );
\accum_reg_rep[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(3),
      Q => \^accum_reg_rep[11]_0\(3)
    );
\accum_reg_rep[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(4),
      Q => \^accum_reg_rep[11]_0\(4)
    );
\accum_reg_rep[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(5),
      Q => \^accum_reg_rep[11]_0\(5)
    );
\accum_reg_rep[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(6),
      Q => \^accum_reg_rep[11]_0\(6)
    );
\accum_reg_rep[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(7),
      Q => \^accum_reg_rep[11]_0\(7)
    );
\accum_reg_rep[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(8),
      Q => \^accum_reg_rep[11]_0\(8)
    );
\accum_reg_rep[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum0(9),
      Q => \^accum_reg_rep[11]_0\(9)
    );
\cos_out[1]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \phase_int_reg[3]_0\
    );
\cos_out[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \phase_int_reg[4]_0\
    );
phase_int0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => phase_int0_carry_n_0,
      CO(2 downto 0) => NLW_phase_int0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \accum_reg__0\(1),
      DI(3 downto 0) => \accum_reg__0\(5 downto 2),
      O(3 downto 0) => phase_int0(5 downto 2),
      S(3 downto 0) => \accum_reg__0\(5 downto 2)
    );
\phase_int0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => phase_int0_carry_n_0,
      CO(3) => \phase_int0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_phase_int0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \accum_reg__0\(9 downto 6),
      O(3 downto 0) => phase_int0(9 downto 6),
      S(3 downto 0) => \accum_reg__0\(9 downto 6)
    );
\phase_int0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_int0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_phase_int0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \accum_reg__0\(10),
      O(3 downto 2) => \NLW_phase_int0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => phase_int0(11 downto 10),
      S(3 downto 2) => B"00",
      S(1) => \accum_reg__0\(11),
      S(0) => \phase_int0_carry__1_i_1_n_0\
    );
\phase_int0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \accum_reg__0\(10),
      O => \phase_int0_carry__1_i_1_n_0\
    );
\phase_int[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \accum_reg__0\(1),
      O => phase_int0(1)
    );
\phase_int_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => accum_reg(0),
      Q => \^q\(0)
    );
\phase_int_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(10),
      Q => \^q\(10)
    );
\phase_int_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(11),
      Q => \^q\(11)
    );
\phase_int_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(1),
      Q => \^q\(1)
    );
\phase_int_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(2),
      Q => \^q\(2)
    );
\phase_int_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(3),
      Q => \^q\(3)
    );
\phase_int_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(4),
      Q => \^q\(4)
    );
\phase_int_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(5),
      Q => \^q\(5)
    );
\phase_int_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(6),
      Q => \^q\(6)
    );
\phase_int_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(7),
      Q => \^q\(7)
    );
\phase_int_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(8),
      Q => \^q\(8)
    );
\phase_int_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => phase_int0(9),
      Q => \^q\(9)
    );
\sine_out[1]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^accum_reg_rep[11]_0\(3),
      I1 => \^accum_reg_rep[11]_0\(4),
      O => \accum_reg_rep[3]_0\
    );
\sine_out[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^accum_reg_rep[11]_0\(4),
      I1 => \^accum_reg_rep[11]_0\(5),
      O => \accum_reg_rep[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddfs_lut_4096 is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \cos_out_reg[3]_i_2_0\ : in STD_LOGIC;
    \cos_out[1]_i_4_0\ : in STD_LOGIC
  );
end ddfs_lut_4096;

architecture STRUCTURE of ddfs_lut_4096 is
  signal \cos_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_11_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_12_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_13_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_14_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_15_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_16_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_17_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_18_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_19_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_24_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_25_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_26_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_27_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_28_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_29_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_30_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_31_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_32_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_33_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_34_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_35_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_36_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_37_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_38_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_39_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_10_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_12_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_13_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_14_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_15_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_17_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_18_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_19_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_20_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_21_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_22_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_23_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_25_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_26_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_27_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_28_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_29_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_30_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_31_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_32_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_33_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_34_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_35_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_36_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_37_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_38_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_39_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_40_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_41_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_42_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_43_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_44_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_45_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_46_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_47_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_48_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_49_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_50_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_51_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_52_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \cos_out[1]_i_9_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_10_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_11_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_14_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_15_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_16_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_17_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_18_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_19_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_20_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_21_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_22_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_23_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_24_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_25_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_26_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_27_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_28_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_29_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_30_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_31_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_32_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_33_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_34_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \cos_out[2]_i_9_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_12_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_13_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_14_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_15_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_16_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_17_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \cos_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \cos_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \cos_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \cos_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \cos_out_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \cos_out_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \cos_out_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \cos_out_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \cos_out_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \cos_out_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \cos_out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \cos_out_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \cos_out_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \cos_out_reg[3]_i_3_n_0\ : STD_LOGIC;
begin
\cos_out[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFBCB"
    )
        port map (
      I0 => \cos_out[5]_i_5_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \cos_out[0]_i_24_n_0\,
      I4 => Q(6),
      O => \cos_out[0]_i_10_n_0\
    );
\cos_out[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[0]_i_25_n_0\,
      I1 => \cos_out[0]_i_26_n_0\,
      I2 => Q(7),
      I3 => \cos_out[0]_i_27_n_0\,
      I4 => Q(6),
      I5 => \cos_out[0]_i_28_n_0\,
      O => \cos_out[0]_i_11_n_0\
    );
\cos_out[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30CC30CC30CC74FF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(6),
      I2 => \cos_out[1]_i_23_n_0\,
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_12_n_0\
    );
\cos_out[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF10CFCFBF10C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(6),
      I3 => \cos_out[4]_i_6_n_0\,
      I4 => Q(5),
      I5 => \cos_out[5]_i_5_n_0\,
      O => \cos_out[0]_i_13_n_0\
    );
\cos_out[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      O => \cos_out[0]_i_14_n_0\
    );
\cos_out[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDADFDADEF4AEA4A"
    )
        port map (
      I0 => Q(6),
      I1 => \cos_out[0]_i_29_n_0\,
      I2 => Q(5),
      I3 => \cos_out[0]_i_30_n_0\,
      I4 => Q(0),
      I5 => Q(4),
      O => \cos_out[0]_i_15_n_0\
    );
\cos_out[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34CCFFFF34CC0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(6),
      I5 => \cos_out[0]_i_31_n_0\,
      O => \cos_out[0]_i_16_n_0\
    );
\cos_out[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D955999BAA9AA2"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \cos_out[0]_i_17_n_0\
    );
\cos_out[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400A020AAFAFAFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(4),
      O => \cos_out[0]_i_18_n_0\
    );
\cos_out[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD5555400000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_19_n_0\
    );
\cos_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out_reg[0]_i_4_n_0\,
      I1 => \cos_out[0]_i_5_n_0\,
      I2 => Q(10),
      I3 => \cos_out_reg[0]_i_6_n_0\,
      I4 => Q(8),
      I5 => \cos_out[0]_i_7_n_0\,
      O => \cos_out[0]_i_2_n_0\
    );
\cos_out[0]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0133FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(4),
      O => \cos_out[0]_i_24_n_0\
    );
\cos_out[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000000000FF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_25_n_0\
    );
\cos_out[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[0]_i_26_n_0\
    );
\cos_out[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555577EAAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_27_n_0\
    );
\cos_out[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333334CCCCCCCC"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_28_n_0\
    );
\cos_out[0]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      O => \cos_out[0]_i_29_n_0\
    );
\cos_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out_reg[0]_i_8_n_0\,
      I1 => \cos_out_reg[0]_i_9_n_0\,
      I2 => Q(10),
      I3 => \cos_out[0]_i_10_n_0\,
      I4 => Q(8),
      I5 => \cos_out[0]_i_11_n_0\,
      O => \cos_out[0]_i_3_n_0\
    );
\cos_out[0]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      O => \cos_out[0]_i_30_n_0\
    );
\cos_out[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300FF00FF00FEFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_31_n_0\
    );
\cos_out[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFF5FFD555005400"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \cos_out[0]_i_32_n_0\
    );
\cos_out[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A00AAAAFFBFFD"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_33_n_0\
    );
\cos_out[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F0F0F000030"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[0]_i_34_n_0\
    );
\cos_out[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003000F0F0FFFFEF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_35_n_0\
    );
\cos_out[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554AA02AA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_36_n_0\
    );
\cos_out[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5D555545050"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_37_n_0\
    );
\cos_out[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFFF55D555"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[0]_i_38_n_0\
    );
\cos_out[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA40AA00AA22BF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(4),
      I4 => Q(2),
      I5 => Q(3),
      O => \cos_out[0]_i_39_n_0\
    );
\cos_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBCB3333"
    )
        port map (
      I0 => \cos_out[0]_i_14_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \cos_out[5]_i_4_n_0\,
      I4 => Q(6),
      O => \cos_out[0]_i_5_n_0\
    );
\cos_out[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \cos_out[0]_i_17_n_0\,
      I1 => Q(7),
      I2 => \cos_out[0]_i_18_n_0\,
      I3 => Q(6),
      I4 => \cos_out[0]_i_19_n_0\,
      O => \cos_out[0]_i_7_n_0\
    );
\cos_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out_reg[1]_i_2_n_0\,
      I1 => \cos_out[1]_i_3_n_0\,
      I2 => Q(9),
      I3 => \cos_out[1]_i_4_n_0\,
      I4 => Q(10),
      I5 => \cos_out[1]_i_5_n_0\,
      O => D(1)
    );
\cos_out[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[4]_i_8_n_0\,
      I1 => \cos_out[1]_i_26_n_0\,
      I2 => Q(6),
      I3 => \cos_out[1]_i_27_n_0\,
      I4 => Q(11),
      I5 => \cos_out[2]_i_19_n_0\,
      O => \cos_out[1]_i_10_n_0\
    );
\cos_out[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \cos_out[1]_i_28_n_0\,
      I1 => \cos_out_reg[3]_i_2_0\,
      I2 => Q(6),
      I3 => \cos_out[1]_i_29_n_0\,
      I4 => Q(11),
      I5 => \cos_out[1]_i_30_n_0\,
      O => \cos_out[1]_i_11_n_0\
    );
\cos_out[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FF88CC30CC30CC"
    )
        port map (
      I0 => \cos_out[1]_i_31_n_0\,
      I1 => Q(6),
      I2 => \cos_out[1]_i_4_0\,
      I3 => Q(11),
      I4 => \cos_out[1]_i_23_n_0\,
      I5 => Q(5),
      O => \cos_out[1]_i_12_n_0\
    );
\cos_out[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCCCCC3B3BFFFF"
    )
        port map (
      I0 => \cos_out[1]_i_32_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \cos_out[4]_i_7_n_0\,
      I4 => Q(6),
      I5 => Q(11),
      O => \cos_out[1]_i_13_n_0\
    );
\cos_out[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \cos_out[1]_i_33_n_0\,
      I1 => Q(6),
      I2 => \cos_out[1]_i_34_n_0\,
      I3 => Q(11),
      I4 => \cos_out[1]_i_35_n_0\,
      O => \cos_out[1]_i_14_n_0\
    );
\cos_out[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \cos_out[3]_i_8_n_0\,
      I1 => Q(6),
      I2 => \cos_out[1]_i_36_n_0\,
      I3 => Q(11),
      I4 => \cos_out[1]_i_37_n_0\,
      I5 => Q(5),
      O => \cos_out[1]_i_15_n_0\
    );
\cos_out[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[1]_i_40_n_0\,
      I1 => \cos_out[1]_i_41_n_0\,
      I2 => Q(6),
      I3 => \cos_out[1]_i_42_n_0\,
      I4 => Q(11),
      I5 => Q(5),
      O => \cos_out[1]_i_17_n_0\
    );
\cos_out[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC33BBBBFC338888"
    )
        port map (
      I0 => \cos_out[1]_i_43_n_0\,
      I1 => Q(6),
      I2 => \cos_out[2]_i_29_n_0\,
      I3 => Q(5),
      I4 => Q(11),
      I5 => \cos_out[1]_i_44_n_0\,
      O => \cos_out[1]_i_18_n_0\
    );
\cos_out[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[1]_i_45_n_0\,
      I1 => \cos_out[1]_i_46_n_0\,
      I2 => Q(6),
      I3 => \cos_out[3]_i_12_n_0\,
      I4 => Q(11),
      I5 => \cos_out[1]_i_47_n_0\,
      O => \cos_out[1]_i_19_n_0\
    );
\cos_out[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[1]_i_48_n_0\,
      I1 => \cos_out[2]_i_28_n_0\,
      I2 => Q(6),
      I3 => \cos_out[1]_i_40_n_0\,
      I4 => Q(11),
      I5 => \cos_out[1]_i_49_n_0\,
      O => \cos_out[1]_i_20_n_0\
    );
\cos_out[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[1]_i_50_n_0\,
      I1 => \cos_out[1]_i_34_n_0\,
      I2 => Q(6),
      I3 => \cos_out[1]_i_51_n_0\,
      I4 => Q(11),
      I5 => \cos_out[1]_i_52_n_0\,
      O => \cos_out[1]_i_21_n_0\
    );
\cos_out[1]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECC0000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(4),
      O => \cos_out[1]_i_22_n_0\
    );
\cos_out[1]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E00000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(4),
      O => \cos_out[1]_i_23_n_0\
    );
\cos_out[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7FFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[1]_i_25_n_0\
    );
\cos_out[1]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(5),
      O => \cos_out[1]_i_26_n_0\
    );
\cos_out[1]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \cos_out[1]_i_27_n_0\
    );
\cos_out[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[1]_i_28_n_0\
    );
\cos_out[1]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \cos_out[1]_i_29_n_0\
    );
\cos_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \cos_out[1]_i_8_n_0\,
      I1 => Q(8),
      I2 => \cos_out[1]_i_9_n_0\,
      I3 => Q(7),
      I4 => \cos_out[1]_i_10_n_0\,
      O => \cos_out[1]_i_3_n_0\
    );
\cos_out[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005151515"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[1]_i_30_n_0\
    );
\cos_out[1]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      O => \cos_out[1]_i_31_n_0\
    );
\cos_out[1]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      O => \cos_out[1]_i_32_n_0\
    );
\cos_out[1]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA8080"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(5),
      O => \cos_out[1]_i_33_n_0\
    );
\cos_out[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \cos_out[1]_i_34_n_0\
    );
\cos_out[1]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFC"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      O => \cos_out[1]_i_35_n_0\
    );
\cos_out[1]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFEAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(4),
      O => \cos_out[1]_i_36_n_0\
    );
\cos_out[1]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \cos_out[1]_i_37_n_0\
    );
\cos_out[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA0000000057FFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(4),
      I4 => Q(11),
      I5 => Q(5),
      O => \cos_out[1]_i_38_n_0\
    );
\cos_out[1]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F3F3F3F3C3C7C"
    )
        port map (
      I0 => Q(1),
      I1 => Q(11),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[1]_i_39_n_0\
    );
\cos_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \cos_out[1]_i_11_n_0\,
      I1 => Q(7),
      I2 => \cos_out[1]_i_12_n_0\,
      I3 => Q(8),
      I4 => \cos_out[1]_i_13_n_0\,
      O => \cos_out[1]_i_4_n_0\
    );
\cos_out[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(5),
      O => \cos_out[1]_i_40_n_0\
    );
\cos_out[1]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0C8C003030333"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(4),
      O => \cos_out[1]_i_41_n_0\
    );
\cos_out[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557FFFFEAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[1]_i_42_n_0\
    );
\cos_out[1]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F7FFFFEFAFA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[1]_i_43_n_0\
    );
\cos_out[1]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015151555"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[1]_i_44_n_0\
    );
\cos_out[1]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555577FFFFFFEA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \cos_out[1]_i_45_n_0\
    );
\cos_out[1]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F7F7F7F"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[1]_i_46_n_0\
    );
\cos_out[1]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEAEA00000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[1]_i_47_n_0\
    );
\cos_out[1]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AA0000551555"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[1]_i_48_n_0\
    );
\cos_out[1]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F557FFFAAFEAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \cos_out[1]_i_49_n_0\
    );
\cos_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out[1]_i_14_n_0\,
      I1 => \cos_out[1]_i_15_n_0\,
      I2 => Q(8),
      I3 => \cos_out_reg[1]_i_16_n_0\,
      I4 => Q(7),
      I5 => \cos_out[1]_i_17_n_0\,
      O => \cos_out[1]_i_5_n_0\
    );
\cos_out[1]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"337FFCCC"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => \cos_out[1]_i_50_n_0\
    );
\cos_out[1]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \cos_out[1]_i_51_n_0\
    );
\cos_out[1]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F000000F0F0F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \cos_out[1]_i_52_n_0\
    );
\cos_out[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3F3F3F3F3CBCBC"
    )
        port map (
      I0 => \cos_out[4]_i_9_n_0\,
      I1 => Q(7),
      I2 => Q(11),
      I3 => \cos_out[1]_i_22_n_0\,
      I4 => Q(5),
      I5 => Q(6),
      O => \cos_out[1]_i_8_n_0\
    );
\cos_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0FFA0000CFF0CFF"
    )
        port map (
      I0 => \cos_out[1]_i_23_n_0\,
      I1 => \cos_out[1]_i_4_0\,
      I2 => Q(5),
      I3 => Q(6),
      I4 => \cos_out[1]_i_25_n_0\,
      I5 => Q(11),
      O => \cos_out[1]_i_9_n_0\
    );
\cos_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_out_reg[2]_i_2_n_0\,
      I1 => \cos_out[2]_i_3_n_0\,
      I2 => Q(9),
      I3 => \cos_out[2]_i_4_n_0\,
      I4 => Q(10),
      I5 => \cos_out[2]_i_5_n_0\,
      O => D(2)
    );
\cos_out[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111555AAAA8888"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(1),
      I3 => \cos_out[2]_i_20_n_0\,
      I4 => Q(4),
      I5 => Q(11),
      O => \cos_out[2]_i_10_n_0\
    );
\cos_out[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFBFFFFDDDD"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => \cos_out[2]_i_18_n_0\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(5),
      O => \cos_out[2]_i_11_n_0\
    );
\cos_out[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCCBBBB"
    )
        port map (
      I0 => \cos_out[2]_i_25_n_0\,
      I1 => Q(6),
      I2 => Q(5),
      I3 => \cos_out[2]_i_26_n_0\,
      I4 => Q(11),
      O => \cos_out[2]_i_14_n_0\
    );
\cos_out[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CC30CC30CC"
    )
        port map (
      I0 => \cos_out[2]_i_27_n_0\,
      I1 => Q(6),
      I2 => \cos_out[3]_i_12_n_0\,
      I3 => Q(11),
      I4 => \cos_out[5]_i_5_n_0\,
      I5 => Q(5),
      O => \cos_out[2]_i_15_n_0\
    );
\cos_out[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FAF0FAFC0CFC0C0"
    )
        port map (
      I0 => \cos_out[4]_i_9_n_0\,
      I1 => \cos_out[2]_i_28_n_0\,
      I2 => Q(6),
      I3 => Q(5),
      I4 => \cos_out[2]_i_29_n_0\,
      I5 => Q(11),
      O => \cos_out[2]_i_16_n_0\
    );
\cos_out[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8CC3333B8CC0000"
    )
        port map (
      I0 => \cos_out[5]_i_4_n_0\,
      I1 => Q(6),
      I2 => \cos_out[2]_i_30_n_0\,
      I3 => Q(5),
      I4 => Q(11),
      I5 => \cos_out[2]_i_31_n_0\,
      O => \cos_out[2]_i_17_n_0\
    );
\cos_out[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      O => \cos_out[2]_i_18_n_0\
    );
\cos_out[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557FFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[2]_i_19_n_0\
    );
\cos_out[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \cos_out[2]_i_20_n_0\
    );
\cos_out[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFA0F0C0F0C0"
    )
        port map (
      I0 => \cos_out[2]_i_32_n_0\,
      I1 => \cos_out[2]_i_33_n_0\,
      I2 => Q(6),
      I3 => Q(5),
      I4 => \cos_out[5]_i_5_n_0\,
      I5 => Q(11),
      O => \cos_out[2]_i_21_n_0\
    );
\cos_out[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF08080F0F00F0F"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(6),
      I3 => \cos_out[4]_i_7_n_0\,
      I4 => Q(11),
      I5 => Q(5),
      O => \cos_out[2]_i_22_n_0\
    );
\cos_out[2]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88BBBB"
    )
        port map (
      I0 => \cos_out[3]_i_8_n_0\,
      I1 => Q(6),
      I2 => Q(5),
      I3 => \cos_out[2]_i_34_n_0\,
      I4 => Q(11),
      O => \cos_out[2]_i_23_n_0\
    );
\cos_out[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55777777EAAAAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(11),
      O => \cos_out[2]_i_24_n_0\
    );
\cos_out[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000110015"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[2]_i_25_n_0\
    );
\cos_out[2]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF0E0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(4),
      O => \cos_out[2]_i_26_n_0\
    );
\cos_out[2]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      O => \cos_out[2]_i_27_n_0\
    );
\cos_out[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(5),
      O => \cos_out[2]_i_28_n_0\
    );
\cos_out[2]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003337"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(4),
      O => \cos_out[2]_i_29_n_0\
    );
\cos_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45EA55FF45EA00AA"
    )
        port map (
      I0 => Q(8),
      I1 => \cos_out[2]_i_8_n_0\,
      I2 => Q(6),
      I3 => Q(11),
      I4 => Q(7),
      I5 => \cos_out[2]_i_9_n_0\,
      O => \cos_out[2]_i_3_n_0\
    );
\cos_out[2]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      O => \cos_out[2]_i_30_n_0\
    );
\cos_out[2]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37777777FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[2]_i_31_n_0\
    );
\cos_out[2]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \cos_out[2]_i_32_n_0\
    );
\cos_out[2]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(4),
      O => \cos_out[2]_i_33_n_0\
    );
\cos_out[2]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(4),
      O => \cos_out[2]_i_34_n_0\
    );
\cos_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB800008B88FFFF"
    )
        port map (
      I0 => \cos_out[2]_i_10_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \cos_out[2]_i_11_n_0\,
      I4 => Q(8),
      I5 => Q(11),
      O => \cos_out[2]_i_4_n_0\
    );
\cos_out[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => Q(8),
      I1 => \cos_out_reg[2]_i_12_n_0\,
      I2 => \cos_out_reg[2]_i_13_n_0\,
      O => \cos_out[2]_i_5_n_0\
    );
\cos_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FEFFFFFFFFFFFF0"
    )
        port map (
      I0 => \cos_out[2]_i_18_n_0\,
      I1 => Q(0),
      I2 => Q(11),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \cos_out[2]_i_8_n_0\
    );
\cos_out[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \cos_out[4]_i_8_n_0\,
      I1 => Q(6),
      I2 => \cos_out[2]_i_19_n_0\,
      I3 => Q(11),
      O => \cos_out[2]_i_9_n_0\
    );
\cos_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => Q(9),
      I1 => \cos_out_reg[3]_i_2_n_0\,
      I2 => \cos_out_reg[3]_i_3_n_0\,
      O => D(3)
    );
\cos_out[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(5),
      O => \cos_out[3]_i_11_n_0\
    );
\cos_out[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055575757"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[3]_i_12_n_0\
    );
\cos_out[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \cos_out[3]_i_13_n_0\
    );
\cos_out[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8CCCC33003333"
    )
        port map (
      I0 => \cos_out[3]_i_16_n_0\,
      I1 => Q(7),
      I2 => \cos_out[3]_i_17_n_0\,
      I3 => \cos_out[1]_i_34_n_0\,
      I4 => Q(6),
      I5 => Q(11),
      O => \cos_out[3]_i_14_n_0\
    );
\cos_out[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \cos_out[3]_i_12_n_0\,
      I1 => Q(11),
      I2 => \cos_out[5]_i_5_n_0\,
      I3 => Q(5),
      O => \cos_out[3]_i_15_n_0\
    );
\cos_out[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(5),
      O => \cos_out[3]_i_16_n_0\
    );
\cos_out[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAEAEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[3]_i_17_n_0\
    );
\cos_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45FFFFEA450000"
    )
        port map (
      I0 => Q(7),
      I1 => \cos_out[3]_i_8_n_0\,
      I2 => Q(6),
      I3 => Q(11),
      I4 => Q(8),
      I5 => \cos_out[3]_i_9_n_0\,
      O => \cos_out[3]_i_4_n_0\
    );
\cos_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC000000BBFFFFFF"
    )
        port map (
      I0 => \cos_out_reg[3]_i_2_0\,
      I1 => Q(6),
      I2 => \cos_out[3]_i_11_n_0\,
      I3 => Q(7),
      I4 => Q(8),
      I5 => Q(11),
      O => \cos_out[3]_i_5_n_0\
    );
\cos_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10111011FFFFFFEE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => \cos_out[3]_i_12_n_0\,
      I3 => Q(6),
      I4 => \cos_out[3]_i_13_n_0\,
      I5 => Q(11),
      O => \cos_out[3]_i_6_n_0\
    );
\cos_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBBBBB88888"
    )
        port map (
      I0 => \cos_out[3]_i_14_n_0\,
      I1 => Q(8),
      I2 => Q(6),
      I3 => \cos_out[3]_i_15_n_0\,
      I4 => Q(7),
      I5 => Q(11),
      O => \cos_out[3]_i_7_n_0\
    );
\cos_out[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888811111555"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(5),
      O => \cos_out[3]_i_8_n_0\
    );
\cos_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3F3B3CCCC0CCC0"
    )
        port map (
      I0 => \cos_out[5]_i_4_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      I4 => \cos_out[5]_i_5_n_0\,
      I5 => Q(11),
      O => \cos_out[3]_i_9_n_0\
    );
\cos_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => \cos_out[4]_i_4_n_0\,
      I3 => Q(8),
      I4 => \cos_out[5]_i_3_n_0\,
      O => \cos_out[4]_i_2_n_0\
    );
\cos_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \cos_out[5]_i_2_n_0\,
      I1 => Q(8),
      I2 => \cos_out[4]_i_5_n_0\,
      I3 => Q(10),
      I4 => Q(11),
      O => \cos_out[4]_i_3_n_0\
    );
\cos_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44555555FFFAAAAA"
    )
        port map (
      I0 => Q(7),
      I1 => \cos_out[4]_i_6_n_0\,
      I2 => \cos_out[4]_i_7_n_0\,
      I3 => Q(5),
      I4 => Q(6),
      I5 => Q(11),
      O => \cos_out[4]_i_4_n_0\
    );
\cos_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE00005055FFFF"
    )
        port map (
      I0 => Q(6),
      I1 => \cos_out[4]_i_8_n_0\,
      I2 => \cos_out[4]_i_9_n_0\,
      I3 => Q(5),
      I4 => Q(7),
      I5 => Q(11),
      O => \cos_out[4]_i_5_n_0\
    );
\cos_out[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(4),
      O => \cos_out[4]_i_6_n_0\
    );
\cos_out[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \cos_out[4]_i_7_n_0\
    );
\cos_out[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8A8A8"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \cos_out[4]_i_8_n_0\
    );
\cos_out[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F7F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      O => \cos_out[4]_i_9_n_0\
    );
\cos_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FF03BF80FC00"
    )
        port map (
      I0 => \cos_out[5]_i_2_n_0\,
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      I4 => Q(8),
      I5 => \cos_out[5]_i_3_n_0\,
      O => D(5)
    );
\cos_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0000"
    )
        port map (
      I0 => Q(5),
      I1 => \cos_out[5]_i_4_n_0\,
      I2 => Q(6),
      I3 => Q(7),
      I4 => Q(11),
      O => \cos_out[5]_i_2_n_0\
    );
\cos_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      I3 => \cos_out[5]_i_5_n_0\,
      I4 => Q(11),
      O => \cos_out[5]_i_3_n_0\
    );
\cos_out[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \cos_out[5]_i_4_n_0\
    );
\cos_out[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => \cos_out[5]_i_5_n_0\
    );
\cos_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_2_n_0\,
      I1 => \cos_out[0]_i_3_n_0\,
      O => D(0),
      S => Q(9)
    );
\cos_out_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_32_n_0\,
      I1 => \cos_out[0]_i_33_n_0\,
      O => \cos_out_reg[0]_i_20_n_0\,
      S => Q(6)
    );
\cos_out_reg[0]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_34_n_0\,
      I1 => \cos_out[0]_i_35_n_0\,
      O => \cos_out_reg[0]_i_21_n_0\,
      S => Q(6)
    );
\cos_out_reg[0]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_36_n_0\,
      I1 => \cos_out[0]_i_37_n_0\,
      O => \cos_out_reg[0]_i_22_n_0\,
      S => Q(6)
    );
\cos_out_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_38_n_0\,
      I1 => \cos_out[0]_i_39_n_0\,
      O => \cos_out_reg[0]_i_23_n_0\,
      S => Q(6)
    );
\cos_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_12_n_0\,
      I1 => \cos_out[0]_i_13_n_0\,
      O => \cos_out_reg[0]_i_4_n_0\,
      S => Q(7)
    );
\cos_out_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[0]_i_15_n_0\,
      I1 => \cos_out[0]_i_16_n_0\,
      O => \cos_out_reg[0]_i_6_n_0\,
      S => Q(7)
    );
\cos_out_reg[0]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_out_reg[0]_i_20_n_0\,
      I1 => \cos_out_reg[0]_i_21_n_0\,
      O => \cos_out_reg[0]_i_8_n_0\,
      S => Q(7)
    );
\cos_out_reg[0]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_out_reg[0]_i_22_n_0\,
      I1 => \cos_out_reg[0]_i_23_n_0\,
      O => \cos_out_reg[0]_i_9_n_0\,
      S => Q(7)
    );
\cos_out_reg[1]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[1]_i_38_n_0\,
      I1 => \cos_out[1]_i_39_n_0\,
      O => \cos_out_reg[1]_i_16_n_0\,
      S => Q(6)
    );
\cos_out_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_out_reg[1]_i_6_n_0\,
      I1 => \cos_out_reg[1]_i_7_n_0\,
      O => \cos_out_reg[1]_i_2_n_0\,
      S => Q(8)
    );
\cos_out_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[1]_i_18_n_0\,
      I1 => \cos_out[1]_i_19_n_0\,
      O => \cos_out_reg[1]_i_6_n_0\,
      S => Q(7)
    );
\cos_out_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[1]_i_20_n_0\,
      I1 => \cos_out[1]_i_21_n_0\,
      O => \cos_out_reg[1]_i_7_n_0\,
      S => Q(7)
    );
\cos_out_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[2]_i_21_n_0\,
      I1 => \cos_out[2]_i_22_n_0\,
      O => \cos_out_reg[2]_i_12_n_0\,
      S => Q(7)
    );
\cos_out_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[2]_i_23_n_0\,
      I1 => \cos_out[2]_i_24_n_0\,
      O => \cos_out_reg[2]_i_13_n_0\,
      S => Q(7)
    );
\cos_out_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_out_reg[2]_i_6_n_0\,
      I1 => \cos_out_reg[2]_i_7_n_0\,
      O => \cos_out_reg[2]_i_2_n_0\,
      S => Q(8)
    );
\cos_out_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[2]_i_14_n_0\,
      I1 => \cos_out[2]_i_15_n_0\,
      O => \cos_out_reg[2]_i_6_n_0\,
      S => Q(7)
    );
\cos_out_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[2]_i_16_n_0\,
      I1 => \cos_out[2]_i_17_n_0\,
      O => \cos_out_reg[2]_i_7_n_0\,
      S => Q(7)
    );
\cos_out_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[3]_i_4_n_0\,
      I1 => \cos_out[3]_i_5_n_0\,
      O => \cos_out_reg[3]_i_2_n_0\,
      S => Q(10)
    );
\cos_out_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[3]_i_6_n_0\,
      I1 => \cos_out[3]_i_7_n_0\,
      O => \cos_out_reg[3]_i_3_n_0\,
      S => Q(10)
    );
\cos_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos_out[4]_i_2_n_0\,
      I1 => \cos_out[4]_i_3_n_0\,
      O => D(4),
      S => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddfs_lut_4096_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \sine_out_reg[3]_i_2_0\ : in STD_LOGIC;
    \sine_out[1]_i_4_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddfs_lut_4096_0 : entity is "ddfs_lut_4096";
end ddfs_lut_4096_0;

architecture STRUCTURE of ddfs_lut_4096_0 is
  signal \sine_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_11_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_12_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_13_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_14_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_15_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_16_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_17_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_18_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_19_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_24_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_25_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_26_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_27_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_28_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_29_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_30_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_31_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_32_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_33_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_34_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_35_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_36_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_37_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_38_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_39_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_10_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_12_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_13_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_14_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_15_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_17_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_18_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_19_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_20_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_21_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_22_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_23_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_25_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_26_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_27_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_28_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_29_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_30_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_31_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_32_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_33_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_34_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_35_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_36_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_37_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_38_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_39_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_40_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_41_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_42_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_43_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_44_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_45_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_46_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_47_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_48_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_49_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_50_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_51_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_52_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \sine_out[1]_i_9_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_10_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_11_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_14_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_15_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_16_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_17_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_18_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_19_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_20_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_21_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_22_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_23_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_24_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_25_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_26_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_27_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_28_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_29_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_30_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_31_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_32_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_33_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_34_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \sine_out[2]_i_9_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_12_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_13_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_14_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_15_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_16_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_17_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \sine_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \sine_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \sine_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \sine_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \sine_out_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \sine_out_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \sine_out_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \sine_out_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \sine_out_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \sine_out_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \sine_out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \sine_out_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \sine_out_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sine_out_reg[3]_i_3_n_0\ : STD_LOGIC;
begin
\sine_out[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFBCB"
    )
        port map (
      I0 => \sine_out[5]_i_5_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \sine_out[0]_i_24_n_0\,
      I4 => Q(6),
      O => \sine_out[0]_i_10_n_0\
    );
\sine_out[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[0]_i_25_n_0\,
      I1 => \sine_out[0]_i_26_n_0\,
      I2 => Q(7),
      I3 => \sine_out[0]_i_27_n_0\,
      I4 => Q(6),
      I5 => \sine_out[0]_i_28_n_0\,
      O => \sine_out[0]_i_11_n_0\
    );
\sine_out[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30CC30CC30CC74FF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(6),
      I2 => \sine_out[1]_i_23_n_0\,
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_12_n_0\
    );
\sine_out[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF10CFCFBF10C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(6),
      I3 => \sine_out[4]_i_6_n_0\,
      I4 => Q(5),
      I5 => \sine_out[5]_i_5_n_0\,
      O => \sine_out[0]_i_13_n_0\
    );
\sine_out[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      O => \sine_out[0]_i_14_n_0\
    );
\sine_out[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDADFDADEF4AEA4A"
    )
        port map (
      I0 => Q(6),
      I1 => \sine_out[0]_i_29_n_0\,
      I2 => Q(5),
      I3 => \sine_out[0]_i_30_n_0\,
      I4 => Q(0),
      I5 => Q(4),
      O => \sine_out[0]_i_15_n_0\
    );
\sine_out[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34CCFFFF34CC0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(6),
      I5 => \sine_out[0]_i_31_n_0\,
      O => \sine_out[0]_i_16_n_0\
    );
\sine_out[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D955999BAA9AA2"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \sine_out[0]_i_17_n_0\
    );
\sine_out[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400A020AAFAFAFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(4),
      O => \sine_out[0]_i_18_n_0\
    );
\sine_out[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD5555400000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_19_n_0\
    );
\sine_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out_reg[0]_i_4_n_0\,
      I1 => \sine_out[0]_i_5_n_0\,
      I2 => Q(10),
      I3 => \sine_out_reg[0]_i_6_n_0\,
      I4 => Q(8),
      I5 => \sine_out[0]_i_7_n_0\,
      O => \sine_out[0]_i_2_n_0\
    );
\sine_out[0]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0133FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(4),
      O => \sine_out[0]_i_24_n_0\
    );
\sine_out[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000000000FF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_25_n_0\
    );
\sine_out[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[0]_i_26_n_0\
    );
\sine_out[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555577EAAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_27_n_0\
    );
\sine_out[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333334CCCCCCCC"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_28_n_0\
    );
\sine_out[0]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      O => \sine_out[0]_i_29_n_0\
    );
\sine_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out_reg[0]_i_8_n_0\,
      I1 => \sine_out_reg[0]_i_9_n_0\,
      I2 => Q(10),
      I3 => \sine_out[0]_i_10_n_0\,
      I4 => Q(8),
      I5 => \sine_out[0]_i_11_n_0\,
      O => \sine_out[0]_i_3_n_0\
    );
\sine_out[0]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      O => \sine_out[0]_i_30_n_0\
    );
\sine_out[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300FF00FF00FEFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_31_n_0\
    );
\sine_out[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFF5FFD555005400"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \sine_out[0]_i_32_n_0\
    );
\sine_out[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A00AAAAFFBFFD"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_33_n_0\
    );
\sine_out[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F0F0F000030"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[0]_i_34_n_0\
    );
\sine_out[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003000F0F0FFFFEF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_35_n_0\
    );
\sine_out[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554AA02AA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_36_n_0\
    );
\sine_out[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5D555545050"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_37_n_0\
    );
\sine_out[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFFF55D555"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[0]_i_38_n_0\
    );
\sine_out[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA40AA00AA22BF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(4),
      I4 => Q(2),
      I5 => Q(3),
      O => \sine_out[0]_i_39_n_0\
    );
\sine_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBCB3333"
    )
        port map (
      I0 => \sine_out[0]_i_14_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \sine_out[5]_i_4_n_0\,
      I4 => Q(6),
      O => \sine_out[0]_i_5_n_0\
    );
\sine_out[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sine_out[0]_i_17_n_0\,
      I1 => Q(7),
      I2 => \sine_out[0]_i_18_n_0\,
      I3 => Q(6),
      I4 => \sine_out[0]_i_19_n_0\,
      O => \sine_out[0]_i_7_n_0\
    );
\sine_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out_reg[1]_i_2_n_0\,
      I1 => \sine_out[1]_i_3_n_0\,
      I2 => Q(9),
      I3 => \sine_out[1]_i_4_n_0\,
      I4 => Q(10),
      I5 => \sine_out[1]_i_5_n_0\,
      O => D(1)
    );
\sine_out[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[4]_i_8_n_0\,
      I1 => \sine_out[1]_i_26_n_0\,
      I2 => Q(6),
      I3 => \sine_out[1]_i_27_n_0\,
      I4 => Q(11),
      I5 => \sine_out[2]_i_19_n_0\,
      O => \sine_out[1]_i_10_n_0\
    );
\sine_out[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \sine_out[1]_i_28_n_0\,
      I1 => \sine_out_reg[3]_i_2_0\,
      I2 => Q(6),
      I3 => \sine_out[1]_i_29_n_0\,
      I4 => Q(11),
      I5 => \sine_out[1]_i_30_n_0\,
      O => \sine_out[1]_i_11_n_0\
    );
\sine_out[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FF88CC30CC30CC"
    )
        port map (
      I0 => \sine_out[1]_i_31_n_0\,
      I1 => Q(6),
      I2 => \sine_out[1]_i_4_0\,
      I3 => Q(11),
      I4 => \sine_out[1]_i_23_n_0\,
      I5 => Q(5),
      O => \sine_out[1]_i_12_n_0\
    );
\sine_out[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCCCCC3B3BFFFF"
    )
        port map (
      I0 => \sine_out[1]_i_32_n_0\,
      I1 => Q(7),
      I2 => Q(5),
      I3 => \sine_out[4]_i_7_n_0\,
      I4 => Q(6),
      I5 => Q(11),
      O => \sine_out[1]_i_13_n_0\
    );
\sine_out[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sine_out[1]_i_33_n_0\,
      I1 => Q(6),
      I2 => \sine_out[1]_i_34_n_0\,
      I3 => Q(11),
      I4 => \sine_out[1]_i_35_n_0\,
      O => \sine_out[1]_i_14_n_0\
    );
\sine_out[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \sine_out[3]_i_8_n_0\,
      I1 => Q(6),
      I2 => \sine_out[1]_i_36_n_0\,
      I3 => Q(11),
      I4 => \sine_out[1]_i_37_n_0\,
      I5 => Q(5),
      O => \sine_out[1]_i_15_n_0\
    );
\sine_out[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[1]_i_40_n_0\,
      I1 => \sine_out[1]_i_41_n_0\,
      I2 => Q(6),
      I3 => \sine_out[1]_i_42_n_0\,
      I4 => Q(11),
      I5 => Q(5),
      O => \sine_out[1]_i_17_n_0\
    );
\sine_out[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC33BBBBFC338888"
    )
        port map (
      I0 => \sine_out[1]_i_43_n_0\,
      I1 => Q(6),
      I2 => \sine_out[2]_i_29_n_0\,
      I3 => Q(5),
      I4 => Q(11),
      I5 => \sine_out[1]_i_44_n_0\,
      O => \sine_out[1]_i_18_n_0\
    );
\sine_out[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[1]_i_45_n_0\,
      I1 => \sine_out[1]_i_46_n_0\,
      I2 => Q(6),
      I3 => \sine_out[3]_i_12_n_0\,
      I4 => Q(11),
      I5 => \sine_out[1]_i_47_n_0\,
      O => \sine_out[1]_i_19_n_0\
    );
\sine_out[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[1]_i_48_n_0\,
      I1 => \sine_out[2]_i_28_n_0\,
      I2 => Q(6),
      I3 => \sine_out[1]_i_40_n_0\,
      I4 => Q(11),
      I5 => \sine_out[1]_i_49_n_0\,
      O => \sine_out[1]_i_20_n_0\
    );
\sine_out[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[1]_i_50_n_0\,
      I1 => \sine_out[1]_i_34_n_0\,
      I2 => Q(6),
      I3 => \sine_out[1]_i_51_n_0\,
      I4 => Q(11),
      I5 => \sine_out[1]_i_52_n_0\,
      O => \sine_out[1]_i_21_n_0\
    );
\sine_out[1]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECC0000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(4),
      O => \sine_out[1]_i_22_n_0\
    );
\sine_out[1]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E00000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(4),
      O => \sine_out[1]_i_23_n_0\
    );
\sine_out[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7FFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[1]_i_25_n_0\
    );
\sine_out[1]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(5),
      O => \sine_out[1]_i_26_n_0\
    );
\sine_out[1]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005557"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \sine_out[1]_i_27_n_0\
    );
\sine_out[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[1]_i_28_n_0\
    );
\sine_out[1]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \sine_out[1]_i_29_n_0\
    );
\sine_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sine_out[1]_i_8_n_0\,
      I1 => Q(8),
      I2 => \sine_out[1]_i_9_n_0\,
      I3 => Q(7),
      I4 => \sine_out[1]_i_10_n_0\,
      O => \sine_out[1]_i_3_n_0\
    );
\sine_out[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005151515"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[1]_i_30_n_0\
    );
\sine_out[1]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      O => \sine_out[1]_i_31_n_0\
    );
\sine_out[1]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      O => \sine_out[1]_i_32_n_0\
    );
\sine_out[1]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA8080"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(5),
      O => \sine_out[1]_i_33_n_0\
    );
\sine_out[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \sine_out[1]_i_34_n_0\
    );
\sine_out[1]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFC"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      O => \sine_out[1]_i_35_n_0\
    );
\sine_out[1]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFEAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(4),
      O => \sine_out[1]_i_36_n_0\
    );
\sine_out[1]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \sine_out[1]_i_37_n_0\
    );
\sine_out[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA0000000057FFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(4),
      I4 => Q(11),
      I5 => Q(5),
      O => \sine_out[1]_i_38_n_0\
    );
\sine_out[1]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F3F3F3F3C3C7C"
    )
        port map (
      I0 => Q(1),
      I1 => Q(11),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[1]_i_39_n_0\
    );
\sine_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \sine_out[1]_i_11_n_0\,
      I1 => Q(7),
      I2 => \sine_out[1]_i_12_n_0\,
      I3 => Q(8),
      I4 => \sine_out[1]_i_13_n_0\,
      O => \sine_out[1]_i_4_n_0\
    );
\sine_out[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(5),
      O => \sine_out[1]_i_40_n_0\
    );
\sine_out[1]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0C8C003030333"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(4),
      O => \sine_out[1]_i_41_n_0\
    );
\sine_out[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557FFFFEAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[1]_i_42_n_0\
    );
\sine_out[1]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F7FFFFEFAFA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[1]_i_43_n_0\
    );
\sine_out[1]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015151555"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[1]_i_44_n_0\
    );
\sine_out[1]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555577FFFFFFEA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \sine_out[1]_i_45_n_0\
    );
\sine_out[1]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005F7F7F7F"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[1]_i_46_n_0\
    );
\sine_out[1]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEAEA00000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[1]_i_47_n_0\
    );
\sine_out[1]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80AA0000551555"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[1]_i_48_n_0\
    );
\sine_out[1]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F557FFFAAFEAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(4),
      O => \sine_out[1]_i_49_n_0\
    );
\sine_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out[1]_i_14_n_0\,
      I1 => \sine_out[1]_i_15_n_0\,
      I2 => Q(8),
      I3 => \sine_out_reg[1]_i_16_n_0\,
      I4 => Q(7),
      I5 => \sine_out[1]_i_17_n_0\,
      O => \sine_out[1]_i_5_n_0\
    );
\sine_out[1]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"337FFCCC"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => \sine_out[1]_i_50_n_0\
    );
\sine_out[1]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      O => \sine_out[1]_i_51_n_0\
    );
\sine_out[1]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F000000F0F0F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => \sine_out[1]_i_52_n_0\
    );
\sine_out[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3F3F3F3F3CBCBC"
    )
        port map (
      I0 => \sine_out[4]_i_9_n_0\,
      I1 => Q(7),
      I2 => Q(11),
      I3 => \sine_out[1]_i_22_n_0\,
      I4 => Q(5),
      I5 => Q(6),
      O => \sine_out[1]_i_8_n_0\
    );
\sine_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0FFA0000CFF0CFF"
    )
        port map (
      I0 => \sine_out[1]_i_23_n_0\,
      I1 => \sine_out[1]_i_4_0\,
      I2 => Q(5),
      I3 => Q(6),
      I4 => \sine_out[1]_i_25_n_0\,
      I5 => Q(11),
      O => \sine_out[1]_i_9_n_0\
    );
\sine_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_out_reg[2]_i_2_n_0\,
      I1 => \sine_out[2]_i_3_n_0\,
      I2 => Q(9),
      I3 => \sine_out[2]_i_4_n_0\,
      I4 => Q(10),
      I5 => \sine_out[2]_i_5_n_0\,
      O => D(2)
    );
\sine_out[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111555AAAA8888"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(1),
      I3 => \sine_out[2]_i_20_n_0\,
      I4 => Q(4),
      I5 => Q(11),
      O => \sine_out[2]_i_10_n_0\
    );
\sine_out[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFBFFFFDDDD"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => \sine_out[2]_i_18_n_0\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(5),
      O => \sine_out[2]_i_11_n_0\
    );
\sine_out[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCCBBBB"
    )
        port map (
      I0 => \sine_out[2]_i_25_n_0\,
      I1 => Q(6),
      I2 => Q(5),
      I3 => \sine_out[2]_i_26_n_0\,
      I4 => Q(11),
      O => \sine_out[2]_i_14_n_0\
    );
\sine_out[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CC30CC30CC"
    )
        port map (
      I0 => \sine_out[2]_i_27_n_0\,
      I1 => Q(6),
      I2 => \sine_out[3]_i_12_n_0\,
      I3 => Q(11),
      I4 => \sine_out[5]_i_5_n_0\,
      I5 => Q(5),
      O => \sine_out[2]_i_15_n_0\
    );
\sine_out[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FAF0FAFC0CFC0C0"
    )
        port map (
      I0 => \sine_out[4]_i_9_n_0\,
      I1 => \sine_out[2]_i_28_n_0\,
      I2 => Q(6),
      I3 => Q(5),
      I4 => \sine_out[2]_i_29_n_0\,
      I5 => Q(11),
      O => \sine_out[2]_i_16_n_0\
    );
\sine_out[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8CC3333B8CC0000"
    )
        port map (
      I0 => \sine_out[5]_i_4_n_0\,
      I1 => Q(6),
      I2 => \sine_out[2]_i_30_n_0\,
      I3 => Q(5),
      I4 => Q(11),
      I5 => \sine_out[2]_i_31_n_0\,
      O => \sine_out[2]_i_17_n_0\
    );
\sine_out[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      O => \sine_out[2]_i_18_n_0\
    );
\sine_out[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557FFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[2]_i_19_n_0\
    );
\sine_out[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \sine_out[2]_i_20_n_0\
    );
\sine_out[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFA0F0C0F0C0"
    )
        port map (
      I0 => \sine_out[2]_i_32_n_0\,
      I1 => \sine_out[2]_i_33_n_0\,
      I2 => Q(6),
      I3 => Q(5),
      I4 => \sine_out[5]_i_5_n_0\,
      I5 => Q(11),
      O => \sine_out[2]_i_21_n_0\
    );
\sine_out[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF08080F0F00F0F"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(6),
      I3 => \sine_out[4]_i_7_n_0\,
      I4 => Q(11),
      I5 => Q(5),
      O => \sine_out[2]_i_22_n_0\
    );
\sine_out[2]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88BBBB"
    )
        port map (
      I0 => \sine_out[3]_i_8_n_0\,
      I1 => Q(6),
      I2 => Q(5),
      I3 => \sine_out[2]_i_34_n_0\,
      I4 => Q(11),
      O => \sine_out[2]_i_23_n_0\
    );
\sine_out[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55777777EAAAAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(11),
      O => \sine_out[2]_i_24_n_0\
    );
\sine_out[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000110015"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[2]_i_25_n_0\
    );
\sine_out[2]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF0E0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(4),
      O => \sine_out[2]_i_26_n_0\
    );
\sine_out[2]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      O => \sine_out[2]_i_27_n_0\
    );
\sine_out[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => Q(5),
      O => \sine_out[2]_i_28_n_0\
    );
\sine_out[2]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003337"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(4),
      O => \sine_out[2]_i_29_n_0\
    );
\sine_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45EA55FF45EA00AA"
    )
        port map (
      I0 => Q(8),
      I1 => \sine_out[2]_i_8_n_0\,
      I2 => Q(6),
      I3 => Q(11),
      I4 => Q(7),
      I5 => \sine_out[2]_i_9_n_0\,
      O => \sine_out[2]_i_3_n_0\
    );
\sine_out[2]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      O => \sine_out[2]_i_30_n_0\
    );
\sine_out[2]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37777777FFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[2]_i_31_n_0\
    );
\sine_out[2]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \sine_out[2]_i_32_n_0\
    );
\sine_out[2]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(4),
      O => \sine_out[2]_i_33_n_0\
    );
\sine_out[2]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(4),
      O => \sine_out[2]_i_34_n_0\
    );
\sine_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB800008B88FFFF"
    )
        port map (
      I0 => \sine_out[2]_i_10_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \sine_out[2]_i_11_n_0\,
      I4 => Q(8),
      I5 => Q(11),
      O => \sine_out[2]_i_4_n_0\
    );
\sine_out[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => Q(8),
      I1 => \sine_out_reg[2]_i_12_n_0\,
      I2 => \sine_out_reg[2]_i_13_n_0\,
      O => \sine_out[2]_i_5_n_0\
    );
\sine_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FEFFFFFFFFFFFF0"
    )
        port map (
      I0 => \sine_out[2]_i_18_n_0\,
      I1 => Q(0),
      I2 => Q(11),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \sine_out[2]_i_8_n_0\
    );
\sine_out[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => \sine_out[4]_i_8_n_0\,
      I1 => Q(6),
      I2 => \sine_out[2]_i_19_n_0\,
      I3 => Q(11),
      O => \sine_out[2]_i_9_n_0\
    );
\sine_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => Q(9),
      I1 => \sine_out_reg[3]_i_2_n_0\,
      I2 => \sine_out_reg[3]_i_3_n_0\,
      O => D(3)
    );
\sine_out[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(5),
      O => \sine_out[3]_i_11_n_0\
    );
\sine_out[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055575757"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[3]_i_12_n_0\
    );
\sine_out[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(5),
      O => \sine_out[3]_i_13_n_0\
    );
\sine_out[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8CCCC33003333"
    )
        port map (
      I0 => \sine_out[3]_i_16_n_0\,
      I1 => Q(7),
      I2 => \sine_out[3]_i_17_n_0\,
      I3 => \sine_out[1]_i_34_n_0\,
      I4 => Q(6),
      I5 => Q(11),
      O => \sine_out[3]_i_14_n_0\
    );
\sine_out[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sine_out[3]_i_12_n_0\,
      I1 => Q(11),
      I2 => \sine_out[5]_i_5_n_0\,
      I3 => Q(5),
      O => \sine_out[3]_i_15_n_0\
    );
\sine_out[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(5),
      O => \sine_out[3]_i_16_n_0\
    );
\sine_out[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAEAEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[3]_i_17_n_0\
    );
\sine_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45FFFFEA450000"
    )
        port map (
      I0 => Q(7),
      I1 => \sine_out[3]_i_8_n_0\,
      I2 => Q(6),
      I3 => Q(11),
      I4 => Q(8),
      I5 => \sine_out[3]_i_9_n_0\,
      O => \sine_out[3]_i_4_n_0\
    );
\sine_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC000000BBFFFFFF"
    )
        port map (
      I0 => \sine_out_reg[3]_i_2_0\,
      I1 => Q(6),
      I2 => \sine_out[3]_i_11_n_0\,
      I3 => Q(7),
      I4 => Q(8),
      I5 => Q(11),
      O => \sine_out[3]_i_5_n_0\
    );
\sine_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10111011FFFFFFEE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => \sine_out[3]_i_12_n_0\,
      I3 => Q(6),
      I4 => \sine_out[3]_i_13_n_0\,
      I5 => Q(11),
      O => \sine_out[3]_i_6_n_0\
    );
\sine_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBBBBB88888"
    )
        port map (
      I0 => \sine_out[3]_i_14_n_0\,
      I1 => Q(8),
      I2 => Q(6),
      I3 => \sine_out[3]_i_15_n_0\,
      I4 => Q(7),
      I5 => Q(11),
      O => \sine_out[3]_i_7_n_0\
    );
\sine_out[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888811111555"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(5),
      O => \sine_out[3]_i_8_n_0\
    );
\sine_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3F3B3CCCC0CCC0"
    )
        port map (
      I0 => \sine_out[5]_i_4_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      I4 => \sine_out[5]_i_5_n_0\,
      I5 => Q(11),
      O => \sine_out[3]_i_9_n_0\
    );
\sine_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => \sine_out[4]_i_4_n_0\,
      I3 => Q(8),
      I4 => \sine_out[5]_i_3_n_0\,
      O => \sine_out[4]_i_2_n_0\
    );
\sine_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \sine_out[5]_i_2_n_0\,
      I1 => Q(8),
      I2 => \sine_out[4]_i_5_n_0\,
      I3 => Q(10),
      I4 => Q(11),
      O => \sine_out[4]_i_3_n_0\
    );
\sine_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44555555FFFAAAAA"
    )
        port map (
      I0 => Q(7),
      I1 => \sine_out[4]_i_6_n_0\,
      I2 => \sine_out[4]_i_7_n_0\,
      I3 => Q(5),
      I4 => Q(6),
      I5 => Q(11),
      O => \sine_out[4]_i_4_n_0\
    );
\sine_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE00005055FFFF"
    )
        port map (
      I0 => Q(6),
      I1 => \sine_out[4]_i_8_n_0\,
      I2 => \sine_out[4]_i_9_n_0\,
      I3 => Q(5),
      I4 => Q(7),
      I5 => Q(11),
      O => \sine_out[4]_i_5_n_0\
    );
\sine_out[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(4),
      O => \sine_out[4]_i_6_n_0\
    );
\sine_out[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \sine_out[4]_i_7_n_0\
    );
\sine_out[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8A8A8"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \sine_out[4]_i_8_n_0\
    );
\sine_out[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F7F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      O => \sine_out[4]_i_9_n_0\
    );
\sine_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FF03BF80FC00"
    )
        port map (
      I0 => \sine_out[5]_i_2_n_0\,
      I1 => Q(9),
      I2 => Q(10),
      I3 => Q(11),
      I4 => Q(8),
      I5 => \sine_out[5]_i_3_n_0\,
      O => D(5)
    );
\sine_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0000"
    )
        port map (
      I0 => Q(5),
      I1 => \sine_out[5]_i_4_n_0\,
      I2 => Q(6),
      I3 => Q(7),
      I4 => Q(11),
      O => \sine_out[5]_i_2_n_0\
    );
\sine_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      I3 => \sine_out[5]_i_5_n_0\,
      I4 => Q(11),
      O => \sine_out[5]_i_3_n_0\
    );
\sine_out[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(4),
      O => \sine_out[5]_i_4_n_0\
    );
\sine_out[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => \sine_out[5]_i_5_n_0\
    );
\sine_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_2_n_0\,
      I1 => \sine_out[0]_i_3_n_0\,
      O => D(0),
      S => Q(9)
    );
\sine_out_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_32_n_0\,
      I1 => \sine_out[0]_i_33_n_0\,
      O => \sine_out_reg[0]_i_20_n_0\,
      S => Q(6)
    );
\sine_out_reg[0]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_34_n_0\,
      I1 => \sine_out[0]_i_35_n_0\,
      O => \sine_out_reg[0]_i_21_n_0\,
      S => Q(6)
    );
\sine_out_reg[0]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_36_n_0\,
      I1 => \sine_out[0]_i_37_n_0\,
      O => \sine_out_reg[0]_i_22_n_0\,
      S => Q(6)
    );
\sine_out_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_38_n_0\,
      I1 => \sine_out[0]_i_39_n_0\,
      O => \sine_out_reg[0]_i_23_n_0\,
      S => Q(6)
    );
\sine_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_12_n_0\,
      I1 => \sine_out[0]_i_13_n_0\,
      O => \sine_out_reg[0]_i_4_n_0\,
      S => Q(7)
    );
\sine_out_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[0]_i_15_n_0\,
      I1 => \sine_out[0]_i_16_n_0\,
      O => \sine_out_reg[0]_i_6_n_0\,
      S => Q(7)
    );
\sine_out_reg[0]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_out_reg[0]_i_20_n_0\,
      I1 => \sine_out_reg[0]_i_21_n_0\,
      O => \sine_out_reg[0]_i_8_n_0\,
      S => Q(7)
    );
\sine_out_reg[0]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_out_reg[0]_i_22_n_0\,
      I1 => \sine_out_reg[0]_i_23_n_0\,
      O => \sine_out_reg[0]_i_9_n_0\,
      S => Q(7)
    );
\sine_out_reg[1]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[1]_i_38_n_0\,
      I1 => \sine_out[1]_i_39_n_0\,
      O => \sine_out_reg[1]_i_16_n_0\,
      S => Q(6)
    );
\sine_out_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_out_reg[1]_i_6_n_0\,
      I1 => \sine_out_reg[1]_i_7_n_0\,
      O => \sine_out_reg[1]_i_2_n_0\,
      S => Q(8)
    );
\sine_out_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[1]_i_18_n_0\,
      I1 => \sine_out[1]_i_19_n_0\,
      O => \sine_out_reg[1]_i_6_n_0\,
      S => Q(7)
    );
\sine_out_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[1]_i_20_n_0\,
      I1 => \sine_out[1]_i_21_n_0\,
      O => \sine_out_reg[1]_i_7_n_0\,
      S => Q(7)
    );
\sine_out_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[2]_i_21_n_0\,
      I1 => \sine_out[2]_i_22_n_0\,
      O => \sine_out_reg[2]_i_12_n_0\,
      S => Q(7)
    );
\sine_out_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[2]_i_23_n_0\,
      I1 => \sine_out[2]_i_24_n_0\,
      O => \sine_out_reg[2]_i_13_n_0\,
      S => Q(7)
    );
\sine_out_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_out_reg[2]_i_6_n_0\,
      I1 => \sine_out_reg[2]_i_7_n_0\,
      O => \sine_out_reg[2]_i_2_n_0\,
      S => Q(8)
    );
\sine_out_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[2]_i_14_n_0\,
      I1 => \sine_out[2]_i_15_n_0\,
      O => \sine_out_reg[2]_i_6_n_0\,
      S => Q(7)
    );
\sine_out_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[2]_i_16_n_0\,
      I1 => \sine_out[2]_i_17_n_0\,
      O => \sine_out_reg[2]_i_7_n_0\,
      S => Q(7)
    );
\sine_out_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[3]_i_4_n_0\,
      I1 => \sine_out[3]_i_5_n_0\,
      O => \sine_out_reg[3]_i_2_n_0\,
      S => Q(10)
    );
\sine_out_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[3]_i_6_n_0\,
      I1 => \sine_out[3]_i_7_n_0\,
      O => \sine_out_reg[3]_i_3_n_0\,
      S => Q(10)
    );
\sine_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine_out[4]_i_2_n_0\,
      I1 => \sine_out[4]_i_3_n_0\,
      O => D(4),
      S => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam_mapper is
  port (
    I_symbols : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_symbols : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_symbols_reg[1]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \I_symbols_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \I_symbols_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \I_symbols_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    input_stream : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \Q_upconverted_reg[7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end qam_mapper;

architecture STRUCTURE of qam_mapper is
  signal \^i_symbols\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q_symbols\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  I_symbols(1 downto 0) <= \^i_symbols\(1 downto 0);
  Q_symbols(0) <= \^q_symbols\(0);
\I_symbols_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => '1',
      Q => \^i_symbols\(0)
    );
\I_symbols_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => input_stream(0),
      Q => \^i_symbols\(1)
    );
\I_upconverted0__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^i_symbols\(0),
      I1 => Q(5),
      I2 => \^i_symbols\(1),
      I3 => Q(4),
      O => \I_symbols_reg[0]_1\(0)
    );
\I_upconverted0__0_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^i_symbols\(1),
      I1 => Q(2),
      I2 => \^i_symbols\(0),
      I3 => Q(3),
      O => DI(2)
    );
\I_upconverted0__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^i_symbols\(1),
      I1 => Q(1),
      I2 => \^i_symbols\(0),
      I3 => Q(2),
      O => DI(1)
    );
\I_upconverted0__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => \^i_symbols\(1),
      I1 => Q(0),
      I2 => \^i_symbols\(0),
      I3 => Q(1),
      O => DI(0)
    );
\I_upconverted0__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^i_symbols\(0),
      I1 => Q(1),
      I2 => \^i_symbols\(1),
      I3 => Q(0),
      O => S(0)
    );
\Q_symbols_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => input_stream(1),
      Q => \^q_symbols\(0)
    );
\Q_upconverted0__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^i_symbols\(0),
      I1 => \Q_upconverted_reg[7]\(5),
      I2 => \^q_symbols\(0),
      I3 => \Q_upconverted_reg[7]\(4),
      O => \I_symbols_reg[0]_2\(0)
    );
\Q_upconverted0__0_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^q_symbols\(0),
      I1 => \Q_upconverted_reg[7]\(2),
      I2 => \^i_symbols\(0),
      I3 => \Q_upconverted_reg[7]\(3),
      O => \Q_symbols_reg[1]_0\(2)
    );
\Q_upconverted0__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^q_symbols\(0),
      I1 => \Q_upconverted_reg[7]\(1),
      I2 => \^i_symbols\(0),
      I3 => \Q_upconverted_reg[7]\(2),
      O => \Q_symbols_reg[1]_0\(1)
    );
\Q_upconverted0__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => \^q_symbols\(0),
      I1 => \Q_upconverted_reg[7]\(0),
      I2 => \^i_symbols\(0),
      I3 => \Q_upconverted_reg[7]\(1),
      O => \Q_symbols_reg[1]_0\(0)
    );
\Q_upconverted0__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^i_symbols\(0),
      I1 => \Q_upconverted_reg[7]\(1),
      I2 => \^q_symbols\(0),
      I3 => \Q_upconverted_reg[7]\(0),
      O => \I_symbols_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddfs is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \cos_out_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sine_out_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sine_out_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \sine_out_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sine_out_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sine_out_reg[4]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    I_symbols : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_symbols : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fcw_IBUF : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end ddfs;

architecture STRUCTURE of ddfs is
  signal LUT_4096_COS_n_0 : STD_LOGIC;
  signal LUT_4096_COS_n_1 : STD_LOGIC;
  signal LUT_4096_COS_n_2 : STD_LOGIC;
  signal LUT_4096_COS_n_3 : STD_LOGIC;
  signal LUT_4096_COS_n_4 : STD_LOGIC;
  signal LUT_4096_COS_n_5 : STD_LOGIC;
  signal LUT_4096_SIN_n_0 : STD_LOGIC;
  signal LUT_4096_SIN_n_1 : STD_LOGIC;
  signal LUT_4096_SIN_n_2 : STD_LOGIC;
  signal LUT_4096_SIN_n_3 : STD_LOGIC;
  signal LUT_4096_SIN_n_4 : STD_LOGIC;
  signal LUT_4096_SIN_n_5 : STD_LOGIC;
  signal PHASE_ACCUMLATOR_n_0 : STD_LOGIC;
  signal PHASE_ACCUMLATOR_n_13 : STD_LOGIC;
  signal PHASE_ACCUMLATOR_n_14 : STD_LOGIC;
  signal PHASE_ACCUMLATOR_n_27 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal accum : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal phase_int : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^sine_out_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \I_upconverted[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q_upconverted[0]_i_1\ : label is "soft_lutpair32";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \sine_out_reg[5]_0\(5 downto 0) <= \^sine_out_reg[5]_0\(5 downto 0);
\I_upconverted0__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => \^q\(4),
      I1 => I_symbols(1),
      I2 => \^q\(5),
      I3 => I_symbols(0),
      O => DI(0)
    );
\I_upconverted0__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => I_symbols(0),
      I2 => I_symbols(1),
      I3 => \^q\(5),
      O => \cos_out_reg[4]_0\(1)
    );
\I_upconverted0__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"93539F9F"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => I_symbols(0),
      I3 => \^q\(3),
      I4 => I_symbols(1),
      O => \cos_out_reg[4]_0\(0)
    );
\I_upconverted0__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C733F3F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => I_symbols(1),
      I3 => \^q\(4),
      I4 => I_symbols(0),
      O => S(2)
    );
\I_upconverted0__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C733F3F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => I_symbols(1),
      I3 => \^q\(3),
      I4 => I_symbols(0),
      O => S(1)
    );
\I_upconverted0__0_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FE06060"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => I_symbols(1),
      I3 => \^q\(2),
      I4 => I_symbols(0),
      O => S(0)
    );
\I_upconverted[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => I_symbols(0),
      O => D(0)
    );
LUT_4096_COS: entity work.ddfs_lut_4096
     port map (
      D(5) => LUT_4096_COS_n_0,
      D(4) => LUT_4096_COS_n_1,
      D(3) => LUT_4096_COS_n_2,
      D(2) => LUT_4096_COS_n_3,
      D(1) => LUT_4096_COS_n_4,
      D(0) => LUT_4096_COS_n_5,
      Q(11 downto 0) => phase_int(11 downto 0),
      \cos_out[1]_i_4_0\ => PHASE_ACCUMLATOR_n_0,
      \cos_out_reg[3]_i_2_0\ => PHASE_ACCUMLATOR_n_13
    );
LUT_4096_SIN: entity work.ddfs_lut_4096_0
     port map (
      D(5) => LUT_4096_SIN_n_0,
      D(4) => LUT_4096_SIN_n_1,
      D(3) => LUT_4096_SIN_n_2,
      D(2) => LUT_4096_SIN_n_3,
      D(1) => LUT_4096_SIN_n_4,
      D(0) => LUT_4096_SIN_n_5,
      Q(11 downto 0) => accum(11 downto 0),
      \sine_out[1]_i_4_0\ => PHASE_ACCUMLATOR_n_14,
      \sine_out_reg[3]_i_2_0\ => PHASE_ACCUMLATOR_n_27
    );
PHASE_ACCUMLATOR: entity work.PhaseGenerator
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      Q(11 downto 0) => phase_int(11 downto 0),
      \accum_reg_rep[11]_0\(11 downto 0) => accum(11 downto 0),
      \accum_reg_rep[3]_0\ => PHASE_ACCUMLATOR_n_14,
      \accum_reg_rep[4]_0\ => PHASE_ACCUMLATOR_n_27,
      i_fcw_IBUF(11 downto 0) => i_fcw_IBUF(11 downto 0),
      \phase_int_reg[3]_0\ => PHASE_ACCUMLATOR_n_0,
      \phase_int_reg[4]_0\ => PHASE_ACCUMLATOR_n_13
    );
\Q_upconverted0__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(4),
      I1 => Q_symbols(0),
      I2 => \^sine_out_reg[5]_0\(5),
      I3 => I_symbols(0),
      O => \sine_out_reg[4]_1\(0)
    );
\Q_upconverted0__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(4),
      I1 => I_symbols(0),
      I2 => Q_symbols(0),
      I3 => \^sine_out_reg[5]_0\(5),
      O => \sine_out_reg[4]_0\(1)
    );
\Q_upconverted0__0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"93539F9F"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(5),
      I1 => \^sine_out_reg[5]_0\(4),
      I2 => I_symbols(0),
      I3 => \^sine_out_reg[5]_0\(3),
      I4 => Q_symbols(0),
      O => \sine_out_reg[4]_0\(0)
    );
\Q_upconverted0__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C733F3F"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(2),
      I1 => \^sine_out_reg[5]_0\(3),
      I2 => Q_symbols(0),
      I3 => \^sine_out_reg[5]_0\(4),
      I4 => I_symbols(0),
      O => \sine_out_reg[2]_0\(2)
    );
\Q_upconverted0__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C733F3F"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(1),
      I1 => \^sine_out_reg[5]_0\(2),
      I2 => Q_symbols(0),
      I3 => \^sine_out_reg[5]_0\(3),
      I4 => I_symbols(0),
      O => \sine_out_reg[2]_0\(1)
    );
\Q_upconverted0__0_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FE06060"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(0),
      I1 => \^sine_out_reg[5]_0\(1),
      I2 => Q_symbols(0),
      I3 => \^sine_out_reg[5]_0\(2),
      I4 => I_symbols(0),
      O => \sine_out_reg[2]_0\(0)
    );
\Q_upconverted[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sine_out_reg[5]_0\(0),
      I1 => I_symbols(0),
      O => \sine_out_reg[0]_0\(0)
    );
\cos_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_5,
      Q => \^q\(0)
    );
\cos_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_4,
      Q => \^q\(1)
    );
\cos_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_3,
      Q => \^q\(2)
    );
\cos_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_2,
      Q => \^q\(3)
    );
\cos_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_1,
      Q => \^q\(4)
    );
\cos_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_COS_n_0,
      Q => \^q\(5)
    );
\sine_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_5,
      Q => \^sine_out_reg[5]_0\(0)
    );
\sine_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_4,
      Q => \^sine_out_reg[5]_0\(1)
    );
\sine_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_3,
      Q => \^sine_out_reg[5]_0\(2)
    );
\sine_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_2,
      Q => \^sine_out_reg[5]_0\(3)
    );
\sine_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_1,
      Q => \^sine_out_reg[5]_0\(4)
    );
\sine_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => LUT_4096_SIN_n_0,
      Q => \^sine_out_reg[5]_0\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity qam_mod is
  port (
    PASSBAND_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    input_stream : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fcw_IBUF : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end qam_mod;

architecture STRUCTURE of qam_mod is
  signal I_signal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_symbols : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal I_upconverted : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_upconverted0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \I_upconverted0__0_carry_n_0\ : STD_LOGIC;
  signal \PASSBAND_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \PASSBAND_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \PASSBAND_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal Q_signal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Q_symbols : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Q_upconverted : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Q_upconverted0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \Q_upconverted0__0_carry_n_0\ : STD_LOGIC;
  signal cos_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sine_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal u_ddfs_osc_n_0 : STD_LOGIC;
  signal u_ddfs_osc_n_1 : STD_LOGIC;
  signal u_ddfs_osc_n_10 : STD_LOGIC;
  signal u_ddfs_osc_n_11 : STD_LOGIC;
  signal u_ddfs_osc_n_12 : STD_LOGIC;
  signal u_ddfs_osc_n_13 : STD_LOGIC;
  signal u_ddfs_osc_n_2 : STD_LOGIC;
  signal u_ddfs_osc_n_20 : STD_LOGIC;
  signal u_ddfs_osc_n_21 : STD_LOGIC;
  signal u_ddfs_osc_n_22 : STD_LOGIC;
  signal u_ddfs_osc_n_23 : STD_LOGIC;
  signal u_ddfs_osc_n_24 : STD_LOGIC;
  signal u_ddfs_osc_n_25 : STD_LOGIC;
  signal u_ddfs_osc_n_9 : STD_LOGIC;
  signal u_mapper_qam_n_10 : STD_LOGIC;
  signal u_mapper_qam_n_11 : STD_LOGIC;
  signal u_mapper_qam_n_12 : STD_LOGIC;
  signal u_mapper_qam_n_3 : STD_LOGIC;
  signal u_mapper_qam_n_4 : STD_LOGIC;
  signal u_mapper_qam_n_5 : STD_LOGIC;
  signal u_mapper_qam_n_6 : STD_LOGIC;
  signal u_mapper_qam_n_7 : STD_LOGIC;
  signal u_mapper_qam_n_8 : STD_LOGIC;
  signal u_mapper_qam_n_9 : STD_LOGIC;
  signal \NLW_I_upconverted0__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_I_upconverted0__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_I_upconverted0__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Q_upconverted0__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Q_upconverted0__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Q_upconverted0__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \I_upconverted0__0_carry\ : label is "PROPCONST SWEEP ";
  attribute OPT_MODIFIED of \I_upconverted0__0_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Q_upconverted0__0_carry\ : label is "PROPCONST SWEEP ";
  attribute OPT_MODIFIED of \Q_upconverted0__0_carry__0\ : label is "SWEEP ";
begin
\I_molulator_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(0),
      Q => I_signal(0)
    );
\I_molulator_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(1),
      Q => I_signal(1)
    );
\I_molulator_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(2),
      Q => I_signal(2)
    );
\I_molulator_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(3),
      Q => I_signal(3)
    );
\I_molulator_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(4),
      Q => I_signal(4)
    );
\I_molulator_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(5),
      Q => I_signal(5)
    );
\I_molulator_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(6),
      Q => I_signal(6)
    );
\I_molulator_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted(7),
      Q => I_signal(7)
    );
\I_upconverted0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \I_upconverted0__0_carry_n_0\,
      CO(2 downto 0) => \NLW_I_upconverted0__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => u_mapper_qam_n_3,
      DI(2) => u_mapper_qam_n_4,
      DI(1) => u_mapper_qam_n_5,
      DI(0) => '0',
      O(3 downto 0) => I_upconverted0(4 downto 1),
      S(3) => u_ddfs_osc_n_0,
      S(2) => u_ddfs_osc_n_1,
      S(1) => u_ddfs_osc_n_2,
      S(0) => u_mapper_qam_n_9
    );
\I_upconverted0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \I_upconverted0__0_carry_n_0\,
      CO(3 downto 0) => \NLW_I_upconverted0__0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => u_mapper_qam_n_11,
      DI(0) => u_ddfs_osc_n_24,
      O(3) => \NLW_I_upconverted0__0_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => I_upconverted0(7 downto 5),
      S(3 downto 2) => B"01",
      S(1) => u_ddfs_osc_n_9,
      S(0) => u_ddfs_osc_n_10
    );
\I_upconverted_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => u_ddfs_osc_n_22,
      Q => I_upconverted(0)
    );
\I_upconverted_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(1),
      Q => I_upconverted(1)
    );
\I_upconverted_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(2),
      Q => I_upconverted(2)
    );
\I_upconverted_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(3),
      Q => I_upconverted(3)
    );
\I_upconverted_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(4),
      Q => I_upconverted(4)
    );
\I_upconverted_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(5),
      Q => I_upconverted(5)
    );
\I_upconverted_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(6),
      Q => I_upconverted(6)
    );
\I_upconverted_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => I_upconverted0(7),
      Q => I_upconverted(7)
    );
\PASSBAND_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => I_signal(0),
      I1 => Q_signal(0),
      O => PASSBAND_OBUF(0)
    );
\PASSBAND_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q_signal(0),
      I1 => I_signal(0),
      I2 => Q_signal(1),
      I3 => I_signal(1),
      O => PASSBAND_OBUF(1)
    );
\PASSBAND_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => Q_signal(1),
      I1 => I_signal(1),
      I2 => Q_signal(0),
      I3 => I_signal(0),
      I4 => Q_signal(2),
      I5 => I_signal(2),
      O => PASSBAND_OBUF(2)
    );
\PASSBAND_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \PASSBAND_OBUF[4]_inst_i_2_n_0\,
      I1 => Q_signal(3),
      I2 => I_signal(3),
      O => PASSBAND_OBUF(3)
    );
\PASSBAND_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => Q_signal(3),
      I1 => I_signal(3),
      I2 => \PASSBAND_OBUF[4]_inst_i_2_n_0\,
      I3 => Q_signal(4),
      I4 => I_signal(4),
      O => PASSBAND_OBUF(4)
    );
\PASSBAND_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => I_signal(0),
      I1 => Q_signal(0),
      I2 => I_signal(1),
      I3 => Q_signal(1),
      I4 => I_signal(2),
      I5 => Q_signal(2),
      O => \PASSBAND_OBUF[4]_inst_i_2_n_0\
    );
\PASSBAND_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \PASSBAND_OBUF[6]_inst_i_2_n_0\,
      I1 => Q_signal(5),
      I2 => I_signal(5),
      O => PASSBAND_OBUF(5)
    );
\PASSBAND_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => Q_signal(5),
      I1 => I_signal(5),
      I2 => \PASSBAND_OBUF[6]_inst_i_2_n_0\,
      I3 => Q_signal(6),
      I4 => I_signal(6),
      O => PASSBAND_OBUF(6)
    );
\PASSBAND_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \PASSBAND_OBUF[4]_inst_i_2_n_0\,
      I1 => I_signal(3),
      I2 => Q_signal(3),
      I3 => I_signal(4),
      I4 => Q_signal(4),
      O => \PASSBAND_OBUF[6]_inst_i_2_n_0\
    );
\PASSBAND_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => Q_signal(6),
      I1 => I_signal(6),
      I2 => \PASSBAND_OBUF[7]_inst_i_2_n_0\,
      I3 => Q_signal(7),
      I4 => I_signal(7),
      O => PASSBAND_OBUF(7)
    );
\PASSBAND_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \PASSBAND_OBUF[6]_inst_i_2_n_0\,
      I1 => I_signal(5),
      I2 => Q_signal(5),
      O => \PASSBAND_OBUF[7]_inst_i_2_n_0\
    );
\Q_molulator_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(0),
      Q => Q_signal(0)
    );
\Q_molulator_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(1),
      Q => Q_signal(1)
    );
\Q_molulator_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(2),
      Q => Q_signal(2)
    );
\Q_molulator_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(3),
      Q => Q_signal(3)
    );
\Q_molulator_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(4),
      Q => Q_signal(4)
    );
\Q_molulator_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(5),
      Q => Q_signal(5)
    );
\Q_molulator_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(6),
      Q => Q_signal(6)
    );
\Q_molulator_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted(7),
      Q => Q_signal(7)
    );
\Q_upconverted0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Q_upconverted0__0_carry_n_0\,
      CO(2 downto 0) => \NLW_Q_upconverted0__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => u_mapper_qam_n_6,
      DI(2) => u_mapper_qam_n_7,
      DI(1) => u_mapper_qam_n_8,
      DI(0) => '0',
      O(3 downto 0) => Q_upconverted0(4 downto 1),
      S(3) => u_ddfs_osc_n_11,
      S(2) => u_ddfs_osc_n_12,
      S(1) => u_ddfs_osc_n_13,
      S(0) => u_mapper_qam_n_10
    );
\Q_upconverted0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Q_upconverted0__0_carry_n_0\,
      CO(3 downto 0) => \NLW_Q_upconverted0__0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => u_mapper_qam_n_12,
      DI(0) => u_ddfs_osc_n_25,
      O(3) => \NLW_Q_upconverted0__0_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => Q_upconverted0(7 downto 5),
      S(3 downto 2) => B"01",
      S(1) => u_ddfs_osc_n_20,
      S(0) => u_ddfs_osc_n_21
    );
\Q_upconverted_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => u_ddfs_osc_n_23,
      Q => Q_upconverted(0)
    );
\Q_upconverted_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(1),
      Q => Q_upconverted(1)
    );
\Q_upconverted_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(2),
      Q => Q_upconverted(2)
    );
\Q_upconverted_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(3),
      Q => Q_upconverted(3)
    );
\Q_upconverted_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(4),
      Q => Q_upconverted(4)
    );
\Q_upconverted_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(5),
      Q => Q_upconverted(5)
    );
\Q_upconverted_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(6),
      Q => Q_upconverted(6)
    );
\Q_upconverted_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => Q_upconverted0(7),
      Q => Q_upconverted(7)
    );
u_ddfs_osc: entity work.ddfs
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      D(0) => u_ddfs_osc_n_22,
      DI(0) => u_ddfs_osc_n_24,
      I_symbols(1 downto 0) => I_symbols(1 downto 0),
      Q(5 downto 0) => cos_out(5 downto 0),
      Q_symbols(0) => Q_symbols(1),
      S(2) => u_ddfs_osc_n_0,
      S(1) => u_ddfs_osc_n_1,
      S(0) => u_ddfs_osc_n_2,
      \cos_out_reg[4]_0\(1) => u_ddfs_osc_n_9,
      \cos_out_reg[4]_0\(0) => u_ddfs_osc_n_10,
      i_fcw_IBUF(11 downto 0) => i_fcw_IBUF(11 downto 0),
      \sine_out_reg[0]_0\(0) => u_ddfs_osc_n_23,
      \sine_out_reg[2]_0\(2) => u_ddfs_osc_n_11,
      \sine_out_reg[2]_0\(1) => u_ddfs_osc_n_12,
      \sine_out_reg[2]_0\(0) => u_ddfs_osc_n_13,
      \sine_out_reg[4]_0\(1) => u_ddfs_osc_n_20,
      \sine_out_reg[4]_0\(0) => u_ddfs_osc_n_21,
      \sine_out_reg[4]_1\(0) => u_ddfs_osc_n_25,
      \sine_out_reg[5]_0\(5 downto 0) => sine_out(5 downto 0)
    );
u_mapper_qam: entity work.qam_mapper
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      DI(2) => u_mapper_qam_n_3,
      DI(1) => u_mapper_qam_n_4,
      DI(0) => u_mapper_qam_n_5,
      I_symbols(1 downto 0) => I_symbols(1 downto 0),
      \I_symbols_reg[0]_0\(0) => u_mapper_qam_n_10,
      \I_symbols_reg[0]_1\(0) => u_mapper_qam_n_11,
      \I_symbols_reg[0]_2\(0) => u_mapper_qam_n_12,
      Q(5 downto 0) => cos_out(5 downto 0),
      Q_symbols(0) => Q_symbols(1),
      \Q_symbols_reg[1]_0\(2) => u_mapper_qam_n_6,
      \Q_symbols_reg[1]_0\(1) => u_mapper_qam_n_7,
      \Q_symbols_reg[1]_0\(0) => u_mapper_qam_n_8,
      \Q_upconverted_reg[7]\(5 downto 0) => sine_out(5 downto 0),
      S(0) => u_mapper_qam_n_9,
      input_stream(1 downto 0) => input_stream(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity QAM_Hierarchical is
  port (
    input_stream : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_clk : in STD_LOGIC;
    i_rst_h : in STD_LOGIC;
    PASSBAND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fcw : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of QAM_Hierarchical : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of QAM_Hierarchical : entity is "ceefe4f2";
end QAM_Hierarchical;

architecture STRUCTURE of QAM_Hierarchical is
  signal PASSBAND_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_fcw_IBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal i_rst_h_IBUF : STD_LOGIC;
  signal input_stream_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\PASSBAND_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(0),
      O => PASSBAND(0)
    );
\PASSBAND_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(1),
      O => PASSBAND(1)
    );
\PASSBAND_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(2),
      O => PASSBAND(2)
    );
\PASSBAND_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(3),
      O => PASSBAND(3)
    );
\PASSBAND_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(4),
      O => PASSBAND(4)
    );
\PASSBAND_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(5),
      O => PASSBAND(5)
    );
\PASSBAND_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(6),
      O => PASSBAND(6)
    );
\PASSBAND_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PASSBAND_OBUF(7),
      O => PASSBAND(7)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_fcw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(0),
      O => i_fcw_IBUF(0)
    );
\i_fcw_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(10),
      O => i_fcw_IBUF(10)
    );
\i_fcw_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(11),
      O => i_fcw_IBUF(11)
    );
\i_fcw_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(1),
      O => i_fcw_IBUF(1)
    );
\i_fcw_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(2),
      O => i_fcw_IBUF(2)
    );
\i_fcw_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(3),
      O => i_fcw_IBUF(3)
    );
\i_fcw_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(4),
      O => i_fcw_IBUF(4)
    );
\i_fcw_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(5),
      O => i_fcw_IBUF(5)
    );
\i_fcw_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(6),
      O => i_fcw_IBUF(6)
    );
\i_fcw_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(7),
      O => i_fcw_IBUF(7)
    );
\i_fcw_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(8),
      O => i_fcw_IBUF(8)
    );
\i_fcw_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_fcw(9),
      O => i_fcw_IBUF(9)
    );
i_rst_h_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst_h,
      O => i_rst_h_IBUF
    );
\input_stream_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_stream(0),
      O => input_stream_IBUF(0)
    );
\input_stream_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_stream(1),
      O => input_stream_IBUF(1)
    );
u_qam_mod: entity work.qam_mod
     port map (
      AR(0) => i_rst_h_IBUF,
      CLK => i_clk_IBUF_BUFG,
      PASSBAND_OBUF(7 downto 0) => PASSBAND_OBUF(7 downto 0),
      i_fcw_IBUF(11 downto 0) => i_fcw_IBUF(11 downto 0),
      input_stream(1 downto 0) => input_stream_IBUF(1 downto 0)
    );
end STRUCTURE;
