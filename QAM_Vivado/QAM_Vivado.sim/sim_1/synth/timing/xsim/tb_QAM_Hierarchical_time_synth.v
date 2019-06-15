// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jun 14 17:07:34 2019
// Host        : DESKTOP-0K7MQOL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/rewal/Desktop/RTL_QAM-master/QAM_Vivado/QAM_Vivado.sim/sim_1/synth/timing/xsim/tb_QAM_Hierarchical_time_synth.v
// Design      : QAM_Hierarchical
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module PhaseGenerator
   (\phase_int_reg[3]_0 ,
    Q,
    \phase_int_reg[4]_0 ,
    \accum_reg_rep[3]_0 ,
    \accum_reg_rep[11]_0 ,
    \accum_reg_rep[4]_0 ,
    CLK,
    AR,
    i_fcw_IBUF);
  output \phase_int_reg[3]_0 ;
  output [11:0]Q;
  output \phase_int_reg[4]_0 ;
  output \accum_reg_rep[3]_0 ;
  output [11:0]\accum_reg_rep[11]_0 ;
  output \accum_reg_rep[4]_0 ;
  input CLK;
  input [0:0]AR;
  input [11:0]i_fcw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [11:0]Q;
  wire [11:0]accum0;
  wire accum0_carry__0_i_1_n_0;
  wire accum0_carry__0_i_2_n_0;
  wire accum0_carry__0_i_3_n_0;
  wire accum0_carry__0_i_4_n_0;
  wire accum0_carry__0_n_0;
  wire accum0_carry__0_n_1;
  wire accum0_carry__0_n_2;
  wire accum0_carry__0_n_3;
  wire accum0_carry__1_i_1_n_0;
  wire accum0_carry__1_i_2_n_0;
  wire accum0_carry__1_i_3_n_0;
  wire accum0_carry__1_i_4_n_0;
  wire accum0_carry__1_n_1;
  wire accum0_carry__1_n_2;
  wire accum0_carry__1_n_3;
  wire accum0_carry_i_1_n_0;
  wire accum0_carry_i_2_n_0;
  wire accum0_carry_i_3_n_0;
  wire accum0_carry_i_4_n_0;
  wire accum0_carry_n_0;
  wire accum0_carry_n_1;
  wire accum0_carry_n_2;
  wire accum0_carry_n_3;
  wire \accum[0]_i_2_n_0 ;
  wire \accum[0]_i_3_n_0 ;
  wire \accum[0]_i_4_n_0 ;
  wire \accum[0]_i_5_n_0 ;
  wire \accum[4]_i_2_n_0 ;
  wire \accum[4]_i_3_n_0 ;
  wire \accum[4]_i_4_n_0 ;
  wire \accum[4]_i_5_n_0 ;
  wire \accum[8]_i_2_n_0 ;
  wire \accum[8]_i_3_n_0 ;
  wire \accum[8]_i_4_n_0 ;
  wire \accum[8]_i_5_n_0 ;
  wire [0:0]accum_reg;
  wire \accum_reg[0]_i_1_n_0 ;
  wire \accum_reg[0]_i_1_n_1 ;
  wire \accum_reg[0]_i_1_n_2 ;
  wire \accum_reg[0]_i_1_n_3 ;
  wire \accum_reg[0]_i_1_n_4 ;
  wire \accum_reg[0]_i_1_n_5 ;
  wire \accum_reg[0]_i_1_n_6 ;
  wire \accum_reg[0]_i_1_n_7 ;
  wire \accum_reg[4]_i_1_n_0 ;
  wire \accum_reg[4]_i_1_n_1 ;
  wire \accum_reg[4]_i_1_n_2 ;
  wire \accum_reg[4]_i_1_n_3 ;
  wire \accum_reg[4]_i_1_n_4 ;
  wire \accum_reg[4]_i_1_n_5 ;
  wire \accum_reg[4]_i_1_n_6 ;
  wire \accum_reg[4]_i_1_n_7 ;
  wire \accum_reg[8]_i_1_n_1 ;
  wire \accum_reg[8]_i_1_n_2 ;
  wire \accum_reg[8]_i_1_n_3 ;
  wire \accum_reg[8]_i_1_n_4 ;
  wire \accum_reg[8]_i_1_n_5 ;
  wire \accum_reg[8]_i_1_n_6 ;
  wire \accum_reg[8]_i_1_n_7 ;
  wire [11:1]accum_reg__0;
  wire [11:0]\accum_reg_rep[11]_0 ;
  wire \accum_reg_rep[3]_0 ;
  wire \accum_reg_rep[4]_0 ;
  wire [11:0]i_fcw_IBUF;
  wire [11:1]phase_int0;
  wire phase_int0_carry__0_n_0;
  wire phase_int0_carry__0_n_1;
  wire phase_int0_carry__0_n_2;
  wire phase_int0_carry__0_n_3;
  wire phase_int0_carry__1_i_1_n_0;
  wire phase_int0_carry__1_n_3;
  wire phase_int0_carry_n_0;
  wire phase_int0_carry_n_1;
  wire phase_int0_carry_n_2;
  wire phase_int0_carry_n_3;
  wire \phase_int_reg[3]_0 ;
  wire \phase_int_reg[4]_0 ;
  wire [3:3]NLW_accum0_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_accum_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_phase_int0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_phase_int0_carry__1_O_UNCONNECTED;

  CARRY4 accum0_carry
       (.CI(1'b0),
        .CO({accum0_carry_n_0,accum0_carry_n_1,accum0_carry_n_2,accum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({accum_reg__0[3:1],accum_reg}),
        .O(accum0[3:0]),
        .S({accum0_carry_i_1_n_0,accum0_carry_i_2_n_0,accum0_carry_i_3_n_0,accum0_carry_i_4_n_0}));
  CARRY4 accum0_carry__0
       (.CI(accum0_carry_n_0),
        .CO({accum0_carry__0_n_0,accum0_carry__0_n_1,accum0_carry__0_n_2,accum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(accum_reg__0[7:4]),
        .O(accum0[7:4]),
        .S({accum0_carry__0_i_1_n_0,accum0_carry__0_i_2_n_0,accum0_carry__0_i_3_n_0,accum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__0_i_1
       (.I0(accum_reg__0[7]),
        .I1(i_fcw_IBUF[7]),
        .O(accum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__0_i_2
       (.I0(accum_reg__0[6]),
        .I1(i_fcw_IBUF[6]),
        .O(accum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__0_i_3
       (.I0(accum_reg__0[5]),
        .I1(i_fcw_IBUF[5]),
        .O(accum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__0_i_4
       (.I0(accum_reg__0[4]),
        .I1(i_fcw_IBUF[4]),
        .O(accum0_carry__0_i_4_n_0));
  CARRY4 accum0_carry__1
       (.CI(accum0_carry__0_n_0),
        .CO({NLW_accum0_carry__1_CO_UNCONNECTED[3],accum0_carry__1_n_1,accum0_carry__1_n_2,accum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,accum_reg__0[10:8]}),
        .O(accum0[11:8]),
        .S({accum0_carry__1_i_1_n_0,accum0_carry__1_i_2_n_0,accum0_carry__1_i_3_n_0,accum0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__1_i_1
       (.I0(accum_reg__0[11]),
        .I1(i_fcw_IBUF[11]),
        .O(accum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__1_i_2
       (.I0(accum_reg__0[10]),
        .I1(i_fcw_IBUF[10]),
        .O(accum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__1_i_3
       (.I0(accum_reg__0[9]),
        .I1(i_fcw_IBUF[9]),
        .O(accum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry__1_i_4
       (.I0(accum_reg__0[8]),
        .I1(i_fcw_IBUF[8]),
        .O(accum0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry_i_1
       (.I0(accum_reg__0[3]),
        .I1(i_fcw_IBUF[3]),
        .O(accum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry_i_2
       (.I0(accum_reg__0[2]),
        .I1(i_fcw_IBUF[2]),
        .O(accum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry_i_3
       (.I0(accum_reg__0[1]),
        .I1(i_fcw_IBUF[1]),
        .O(accum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    accum0_carry_i_4
       (.I0(accum_reg),
        .I1(i_fcw_IBUF[0]),
        .O(accum0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[0]_i_2 
       (.I0(i_fcw_IBUF[3]),
        .I1(accum_reg__0[3]),
        .O(\accum[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[0]_i_3 
       (.I0(i_fcw_IBUF[2]),
        .I1(accum_reg__0[2]),
        .O(\accum[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[0]_i_4 
       (.I0(i_fcw_IBUF[1]),
        .I1(accum_reg__0[1]),
        .O(\accum[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[0]_i_5 
       (.I0(i_fcw_IBUF[0]),
        .I1(accum_reg),
        .O(\accum[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[4]_i_2 
       (.I0(i_fcw_IBUF[7]),
        .I1(accum_reg__0[7]),
        .O(\accum[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[4]_i_3 
       (.I0(i_fcw_IBUF[6]),
        .I1(accum_reg__0[6]),
        .O(\accum[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[4]_i_4 
       (.I0(i_fcw_IBUF[5]),
        .I1(accum_reg__0[5]),
        .O(\accum[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[4]_i_5 
       (.I0(i_fcw_IBUF[4]),
        .I1(accum_reg__0[4]),
        .O(\accum[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[8]_i_2 
       (.I0(i_fcw_IBUF[11]),
        .I1(accum_reg__0[11]),
        .O(\accum[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[8]_i_3 
       (.I0(i_fcw_IBUF[10]),
        .I1(accum_reg__0[10]),
        .O(\accum[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[8]_i_4 
       (.I0(i_fcw_IBUF[9]),
        .I1(accum_reg__0[9]),
        .O(\accum[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accum[8]_i_5 
       (.I0(i_fcw_IBUF[8]),
        .I1(accum_reg__0[8]),
        .O(\accum[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[0]_i_1_n_7 ),
        .Q(accum_reg));
  CARRY4 \accum_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\accum_reg[0]_i_1_n_0 ,\accum_reg[0]_i_1_n_1 ,\accum_reg[0]_i_1_n_2 ,\accum_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_fcw_IBUF[3:0]),
        .O({\accum_reg[0]_i_1_n_4 ,\accum_reg[0]_i_1_n_5 ,\accum_reg[0]_i_1_n_6 ,\accum_reg[0]_i_1_n_7 }),
        .S({\accum[0]_i_2_n_0 ,\accum[0]_i_3_n_0 ,\accum[0]_i_4_n_0 ,\accum[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[8]_i_1_n_5 ),
        .Q(accum_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[8]_i_1_n_4 ),
        .Q(accum_reg__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[0]_i_1_n_6 ),
        .Q(accum_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[0]_i_1_n_5 ),
        .Q(accum_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[0]_i_1_n_4 ),
        .Q(accum_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[4]_i_1_n_7 ),
        .Q(accum_reg__0[4]));
  CARRY4 \accum_reg[4]_i_1 
       (.CI(\accum_reg[0]_i_1_n_0 ),
        .CO({\accum_reg[4]_i_1_n_0 ,\accum_reg[4]_i_1_n_1 ,\accum_reg[4]_i_1_n_2 ,\accum_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(i_fcw_IBUF[7:4]),
        .O({\accum_reg[4]_i_1_n_4 ,\accum_reg[4]_i_1_n_5 ,\accum_reg[4]_i_1_n_6 ,\accum_reg[4]_i_1_n_7 }),
        .S({\accum[4]_i_2_n_0 ,\accum[4]_i_3_n_0 ,\accum[4]_i_4_n_0 ,\accum[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[4]_i_1_n_6 ),
        .Q(accum_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[4]_i_1_n_5 ),
        .Q(accum_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[4]_i_1_n_4 ),
        .Q(accum_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[8]_i_1_n_7 ),
        .Q(accum_reg__0[8]));
  CARRY4 \accum_reg[8]_i_1 
       (.CI(\accum_reg[4]_i_1_n_0 ),
        .CO({\NLW_accum_reg[8]_i_1_CO_UNCONNECTED [3],\accum_reg[8]_i_1_n_1 ,\accum_reg[8]_i_1_n_2 ,\accum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_fcw_IBUF[10:8]}),
        .O({\accum_reg[8]_i_1_n_4 ,\accum_reg[8]_i_1_n_5 ,\accum_reg[8]_i_1_n_6 ,\accum_reg[8]_i_1_n_7 }),
        .S({\accum[8]_i_2_n_0 ,\accum[8]_i_3_n_0 ,\accum[8]_i_4_n_0 ,\accum[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\accum_reg[8]_i_1_n_6 ),
        .Q(accum_reg__0[9]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[0]),
        .Q(\accum_reg_rep[11]_0 [0]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[10]),
        .Q(\accum_reg_rep[11]_0 [10]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[11]),
        .Q(\accum_reg_rep[11]_0 [11]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[1]),
        .Q(\accum_reg_rep[11]_0 [1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[2]),
        .Q(\accum_reg_rep[11]_0 [2]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[3]),
        .Q(\accum_reg_rep[11]_0 [3]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[4]),
        .Q(\accum_reg_rep[11]_0 [4]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[5]),
        .Q(\accum_reg_rep[11]_0 [5]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[6]),
        .Q(\accum_reg_rep[11]_0 [6]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[7]),
        .Q(\accum_reg_rep[11]_0 [7]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[8]),
        .Q(\accum_reg_rep[11]_0 [8]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \accum_reg_rep[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum0[9]),
        .Q(\accum_reg_rep[11]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cos_out[1]_i_24 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\phase_int_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cos_out[3]_i_10 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\phase_int_reg[4]_0 ));
  CARRY4 phase_int0_carry
       (.CI(1'b0),
        .CO({phase_int0_carry_n_0,phase_int0_carry_n_1,phase_int0_carry_n_2,phase_int0_carry_n_3}),
        .CYINIT(accum_reg__0[1]),
        .DI(accum_reg__0[5:2]),
        .O(phase_int0[5:2]),
        .S(accum_reg__0[5:2]));
  CARRY4 phase_int0_carry__0
       (.CI(phase_int0_carry_n_0),
        .CO({phase_int0_carry__0_n_0,phase_int0_carry__0_n_1,phase_int0_carry__0_n_2,phase_int0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(accum_reg__0[9:6]),
        .O(phase_int0[9:6]),
        .S(accum_reg__0[9:6]));
  CARRY4 phase_int0_carry__1
       (.CI(phase_int0_carry__0_n_0),
        .CO({NLW_phase_int0_carry__1_CO_UNCONNECTED[3:1],phase_int0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,accum_reg__0[10]}),
        .O({NLW_phase_int0_carry__1_O_UNCONNECTED[3:2],phase_int0[11:10]}),
        .S({1'b0,1'b0,accum_reg__0[11],phase_int0_carry__1_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase_int0_carry__1_i_1
       (.I0(accum_reg__0[10]),
        .O(phase_int0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_int[1]_i_1 
       (.I0(accum_reg__0[1]),
        .O(phase_int0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(accum_reg),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_int_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(phase_int0[9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sine_out[1]_i_24 
       (.I0(\accum_reg_rep[11]_0 [3]),
        .I1(\accum_reg_rep[11]_0 [4]),
        .O(\accum_reg_rep[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sine_out[3]_i_10 
       (.I0(\accum_reg_rep[11]_0 [4]),
        .I1(\accum_reg_rep[11]_0 [5]),
        .O(\accum_reg_rep[4]_0 ));
endmodule

(* NotValidForBitStream *)
module QAM_Hierarchical
   (input_stream,
    i_clk,
    i_rst_h,
    PASSBAND,
    i_fcw);
  input [1:0]input_stream;
  input i_clk;
  input i_rst_h;
  output [7:0]PASSBAND;
  input [11:0]i_fcw;

  wire [7:0]PASSBAND;
  wire [7:0]PASSBAND_OBUF;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [11:0]i_fcw;
  wire [11:0]i_fcw_IBUF;
  wire i_rst_h;
  wire i_rst_h_IBUF;
  wire [1:0]input_stream;
  wire [1:0]input_stream_IBUF;

initial begin
 $sdf_annotate("tb_QAM_Hierarchical_time_synth.sdf",,,,"tool_control");
end
  OBUF \PASSBAND_OBUF[0]_inst 
       (.I(PASSBAND_OBUF[0]),
        .O(PASSBAND[0]));
  OBUF \PASSBAND_OBUF[1]_inst 
       (.I(PASSBAND_OBUF[1]),
        .O(PASSBAND[1]));
  OBUF \PASSBAND_OBUF[2]_inst 
       (.I(PASSBAND_OBUF[2]),
        .O(PASSBAND[2]));
  OBUF \PASSBAND_OBUF[3]_inst 
       (.I(PASSBAND_OBUF[3]),
        .O(PASSBAND[3]));
  OBUF \PASSBAND_OBUF[4]_inst 
       (.I(PASSBAND_OBUF[4]),
        .O(PASSBAND[4]));
  OBUF \PASSBAND_OBUF[5]_inst 
       (.I(PASSBAND_OBUF[5]),
        .O(PASSBAND[5]));
  OBUF \PASSBAND_OBUF[6]_inst 
       (.I(PASSBAND_OBUF[6]),
        .O(PASSBAND[6]));
  OBUF \PASSBAND_OBUF[7]_inst 
       (.I(PASSBAND_OBUF[7]),
        .O(PASSBAND[7]));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_fcw_IBUF[0]_inst 
       (.I(i_fcw[0]),
        .O(i_fcw_IBUF[0]));
  IBUF \i_fcw_IBUF[10]_inst 
       (.I(i_fcw[10]),
        .O(i_fcw_IBUF[10]));
  IBUF \i_fcw_IBUF[11]_inst 
       (.I(i_fcw[11]),
        .O(i_fcw_IBUF[11]));
  IBUF \i_fcw_IBUF[1]_inst 
       (.I(i_fcw[1]),
        .O(i_fcw_IBUF[1]));
  IBUF \i_fcw_IBUF[2]_inst 
       (.I(i_fcw[2]),
        .O(i_fcw_IBUF[2]));
  IBUF \i_fcw_IBUF[3]_inst 
       (.I(i_fcw[3]),
        .O(i_fcw_IBUF[3]));
  IBUF \i_fcw_IBUF[4]_inst 
       (.I(i_fcw[4]),
        .O(i_fcw_IBUF[4]));
  IBUF \i_fcw_IBUF[5]_inst 
       (.I(i_fcw[5]),
        .O(i_fcw_IBUF[5]));
  IBUF \i_fcw_IBUF[6]_inst 
       (.I(i_fcw[6]),
        .O(i_fcw_IBUF[6]));
  IBUF \i_fcw_IBUF[7]_inst 
       (.I(i_fcw[7]),
        .O(i_fcw_IBUF[7]));
  IBUF \i_fcw_IBUF[8]_inst 
       (.I(i_fcw[8]),
        .O(i_fcw_IBUF[8]));
  IBUF \i_fcw_IBUF[9]_inst 
       (.I(i_fcw[9]),
        .O(i_fcw_IBUF[9]));
  IBUF i_rst_h_IBUF_inst
       (.I(i_rst_h),
        .O(i_rst_h_IBUF));
  IBUF \input_stream_IBUF[0]_inst 
       (.I(input_stream[0]),
        .O(input_stream_IBUF[0]));
  IBUF \input_stream_IBUF[1]_inst 
       (.I(input_stream[1]),
        .O(input_stream_IBUF[1]));
  qam_mod u_qam_mod
       (.AR(i_rst_h_IBUF),
        .CLK(i_clk_IBUF_BUFG),
        .PASSBAND_OBUF(PASSBAND_OBUF),
        .i_fcw_IBUF(i_fcw_IBUF),
        .input_stream(input_stream_IBUF));
endmodule

module ddfs
   (S,
    Q,
    \cos_out_reg[4]_0 ,
    \sine_out_reg[2]_0 ,
    \sine_out_reg[5]_0 ,
    \sine_out_reg[4]_0 ,
    D,
    \sine_out_reg[0]_0 ,
    DI,
    \sine_out_reg[4]_1 ,
    I_symbols,
    Q_symbols,
    CLK,
    AR,
    i_fcw_IBUF);
  output [2:0]S;
  output [5:0]Q;
  output [1:0]\cos_out_reg[4]_0 ;
  output [2:0]\sine_out_reg[2]_0 ;
  output [5:0]\sine_out_reg[5]_0 ;
  output [1:0]\sine_out_reg[4]_0 ;
  output [0:0]D;
  output [0:0]\sine_out_reg[0]_0 ;
  output [0:0]DI;
  output [0:0]\sine_out_reg[4]_1 ;
  input [1:0]I_symbols;
  input [0:0]Q_symbols;
  input CLK;
  input [0:0]AR;
  input [11:0]i_fcw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]DI;
  wire [1:0]I_symbols;
  wire LUT_4096_COS_n_0;
  wire LUT_4096_COS_n_1;
  wire LUT_4096_COS_n_2;
  wire LUT_4096_COS_n_3;
  wire LUT_4096_COS_n_4;
  wire LUT_4096_COS_n_5;
  wire LUT_4096_SIN_n_0;
  wire LUT_4096_SIN_n_1;
  wire LUT_4096_SIN_n_2;
  wire LUT_4096_SIN_n_3;
  wire LUT_4096_SIN_n_4;
  wire LUT_4096_SIN_n_5;
  wire PHASE_ACCUMLATOR_n_0;
  wire PHASE_ACCUMLATOR_n_13;
  wire PHASE_ACCUMLATOR_n_14;
  wire PHASE_ACCUMLATOR_n_27;
  wire [5:0]Q;
  wire [0:0]Q_symbols;
  wire [2:0]S;
  wire [11:0]accum;
  wire [1:0]\cos_out_reg[4]_0 ;
  wire [11:0]i_fcw_IBUF;
  wire [11:0]phase_int;
  wire [0:0]\sine_out_reg[0]_0 ;
  wire [2:0]\sine_out_reg[2]_0 ;
  wire [1:0]\sine_out_reg[4]_0 ;
  wire [0:0]\sine_out_reg[4]_1 ;
  wire [5:0]\sine_out_reg[5]_0 ;

  LUT4 #(
    .INIT(16'h8777)) 
    I_upconverted0__0_carry__0_i_2
       (.I0(Q[4]),
        .I1(I_symbols[1]),
        .I2(Q[5]),
        .I3(I_symbols[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h8FFF)) 
    I_upconverted0__0_carry__0_i_3
       (.I0(Q[4]),
        .I1(I_symbols[0]),
        .I2(I_symbols[1]),
        .I3(Q[5]),
        .O(\cos_out_reg[4]_0 [1]));
  LUT5 #(
    .INIT(32'h93539F9F)) 
    I_upconverted0__0_carry__0_i_4
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(I_symbols[0]),
        .I3(Q[3]),
        .I4(I_symbols[1]),
        .O(\cos_out_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    I_upconverted0__0_carry_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(I_symbols[1]),
        .I3(Q[4]),
        .I4(I_symbols[0]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    I_upconverted0__0_carry_i_5
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(I_symbols[1]),
        .I3(Q[3]),
        .I4(I_symbols[0]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    I_upconverted0__0_carry_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(I_symbols[1]),
        .I3(Q[2]),
        .I4(I_symbols[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \I_upconverted[0]_i_1 
       (.I0(Q[0]),
        .I1(I_symbols[0]),
        .O(D));
  ddfs_lut_4096 LUT_4096_COS
       (.D({LUT_4096_COS_n_0,LUT_4096_COS_n_1,LUT_4096_COS_n_2,LUT_4096_COS_n_3,LUT_4096_COS_n_4,LUT_4096_COS_n_5}),
        .Q(phase_int),
        .\cos_out[1]_i_4_0 (PHASE_ACCUMLATOR_n_0),
        .\cos_out_reg[3]_i_2_0 (PHASE_ACCUMLATOR_n_13));
  ddfs_lut_4096_0 LUT_4096_SIN
       (.D({LUT_4096_SIN_n_0,LUT_4096_SIN_n_1,LUT_4096_SIN_n_2,LUT_4096_SIN_n_3,LUT_4096_SIN_n_4,LUT_4096_SIN_n_5}),
        .Q(accum),
        .\sine_out[1]_i_4_0 (PHASE_ACCUMLATOR_n_14),
        .\sine_out_reg[3]_i_2_0 (PHASE_ACCUMLATOR_n_27));
  PhaseGenerator PHASE_ACCUMLATOR
       (.AR(AR),
        .CLK(CLK),
        .Q(phase_int),
        .\accum_reg_rep[11]_0 (accum),
        .\accum_reg_rep[3]_0 (PHASE_ACCUMLATOR_n_14),
        .\accum_reg_rep[4]_0 (PHASE_ACCUMLATOR_n_27),
        .i_fcw_IBUF(i_fcw_IBUF),
        .\phase_int_reg[3]_0 (PHASE_ACCUMLATOR_n_0),
        .\phase_int_reg[4]_0 (PHASE_ACCUMLATOR_n_13));
  LUT4 #(
    .INIT(16'h8777)) 
    Q_upconverted0__0_carry__0_i_2
       (.I0(\sine_out_reg[5]_0 [4]),
        .I1(Q_symbols),
        .I2(\sine_out_reg[5]_0 [5]),
        .I3(I_symbols[0]),
        .O(\sine_out_reg[4]_1 ));
  LUT4 #(
    .INIT(16'h8FFF)) 
    Q_upconverted0__0_carry__0_i_3
       (.I0(\sine_out_reg[5]_0 [4]),
        .I1(I_symbols[0]),
        .I2(Q_symbols),
        .I3(\sine_out_reg[5]_0 [5]),
        .O(\sine_out_reg[4]_0 [1]));
  LUT5 #(
    .INIT(32'h93539F9F)) 
    Q_upconverted0__0_carry__0_i_4
       (.I0(\sine_out_reg[5]_0 [5]),
        .I1(\sine_out_reg[5]_0 [4]),
        .I2(I_symbols[0]),
        .I3(\sine_out_reg[5]_0 [3]),
        .I4(Q_symbols),
        .O(\sine_out_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    Q_upconverted0__0_carry_i_4
       (.I0(\sine_out_reg[5]_0 [2]),
        .I1(\sine_out_reg[5]_0 [3]),
        .I2(Q_symbols),
        .I3(\sine_out_reg[5]_0 [4]),
        .I4(I_symbols[0]),
        .O(\sine_out_reg[2]_0 [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    Q_upconverted0__0_carry_i_5
       (.I0(\sine_out_reg[5]_0 [1]),
        .I1(\sine_out_reg[5]_0 [2]),
        .I2(Q_symbols),
        .I3(\sine_out_reg[5]_0 [3]),
        .I4(I_symbols[0]),
        .O(\sine_out_reg[2]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    Q_upconverted0__0_carry_i_6
       (.I0(\sine_out_reg[5]_0 [0]),
        .I1(\sine_out_reg[5]_0 [1]),
        .I2(Q_symbols),
        .I3(\sine_out_reg[5]_0 [2]),
        .I4(I_symbols[0]),
        .O(\sine_out_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q_upconverted[0]_i_1 
       (.I0(\sine_out_reg[5]_0 [0]),
        .I1(I_symbols[0]),
        .O(\sine_out_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_5),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_4),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_3),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_2),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_1),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cos_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_COS_n_0),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_5),
        .Q(\sine_out_reg[5]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_4),
        .Q(\sine_out_reg[5]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_3),
        .Q(\sine_out_reg[5]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_2),
        .Q(\sine_out_reg[5]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_1),
        .Q(\sine_out_reg[5]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \sine_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(LUT_4096_SIN_n_0),
        .Q(\sine_out_reg[5]_0 [5]));
endmodule

module ddfs_lut_4096
   (D,
    Q,
    \cos_out_reg[3]_i_2_0 ,
    \cos_out[1]_i_4_0 );
  output [5:0]D;
  input [11:0]Q;
  input \cos_out_reg[3]_i_2_0 ;
  input \cos_out[1]_i_4_0 ;

  wire [5:0]D;
  wire [11:0]Q;
  wire \cos_out[0]_i_10_n_0 ;
  wire \cos_out[0]_i_11_n_0 ;
  wire \cos_out[0]_i_12_n_0 ;
  wire \cos_out[0]_i_13_n_0 ;
  wire \cos_out[0]_i_14_n_0 ;
  wire \cos_out[0]_i_15_n_0 ;
  wire \cos_out[0]_i_16_n_0 ;
  wire \cos_out[0]_i_17_n_0 ;
  wire \cos_out[0]_i_18_n_0 ;
  wire \cos_out[0]_i_19_n_0 ;
  wire \cos_out[0]_i_24_n_0 ;
  wire \cos_out[0]_i_25_n_0 ;
  wire \cos_out[0]_i_26_n_0 ;
  wire \cos_out[0]_i_27_n_0 ;
  wire \cos_out[0]_i_28_n_0 ;
  wire \cos_out[0]_i_29_n_0 ;
  wire \cos_out[0]_i_2_n_0 ;
  wire \cos_out[0]_i_30_n_0 ;
  wire \cos_out[0]_i_31_n_0 ;
  wire \cos_out[0]_i_32_n_0 ;
  wire \cos_out[0]_i_33_n_0 ;
  wire \cos_out[0]_i_34_n_0 ;
  wire \cos_out[0]_i_35_n_0 ;
  wire \cos_out[0]_i_36_n_0 ;
  wire \cos_out[0]_i_37_n_0 ;
  wire \cos_out[0]_i_38_n_0 ;
  wire \cos_out[0]_i_39_n_0 ;
  wire \cos_out[0]_i_3_n_0 ;
  wire \cos_out[0]_i_5_n_0 ;
  wire \cos_out[0]_i_7_n_0 ;
  wire \cos_out[1]_i_10_n_0 ;
  wire \cos_out[1]_i_11_n_0 ;
  wire \cos_out[1]_i_12_n_0 ;
  wire \cos_out[1]_i_13_n_0 ;
  wire \cos_out[1]_i_14_n_0 ;
  wire \cos_out[1]_i_15_n_0 ;
  wire \cos_out[1]_i_17_n_0 ;
  wire \cos_out[1]_i_18_n_0 ;
  wire \cos_out[1]_i_19_n_0 ;
  wire \cos_out[1]_i_20_n_0 ;
  wire \cos_out[1]_i_21_n_0 ;
  wire \cos_out[1]_i_22_n_0 ;
  wire \cos_out[1]_i_23_n_0 ;
  wire \cos_out[1]_i_25_n_0 ;
  wire \cos_out[1]_i_26_n_0 ;
  wire \cos_out[1]_i_27_n_0 ;
  wire \cos_out[1]_i_28_n_0 ;
  wire \cos_out[1]_i_29_n_0 ;
  wire \cos_out[1]_i_30_n_0 ;
  wire \cos_out[1]_i_31_n_0 ;
  wire \cos_out[1]_i_32_n_0 ;
  wire \cos_out[1]_i_33_n_0 ;
  wire \cos_out[1]_i_34_n_0 ;
  wire \cos_out[1]_i_35_n_0 ;
  wire \cos_out[1]_i_36_n_0 ;
  wire \cos_out[1]_i_37_n_0 ;
  wire \cos_out[1]_i_38_n_0 ;
  wire \cos_out[1]_i_39_n_0 ;
  wire \cos_out[1]_i_3_n_0 ;
  wire \cos_out[1]_i_40_n_0 ;
  wire \cos_out[1]_i_41_n_0 ;
  wire \cos_out[1]_i_42_n_0 ;
  wire \cos_out[1]_i_43_n_0 ;
  wire \cos_out[1]_i_44_n_0 ;
  wire \cos_out[1]_i_45_n_0 ;
  wire \cos_out[1]_i_46_n_0 ;
  wire \cos_out[1]_i_47_n_0 ;
  wire \cos_out[1]_i_48_n_0 ;
  wire \cos_out[1]_i_49_n_0 ;
  wire \cos_out[1]_i_4_0 ;
  wire \cos_out[1]_i_4_n_0 ;
  wire \cos_out[1]_i_50_n_0 ;
  wire \cos_out[1]_i_51_n_0 ;
  wire \cos_out[1]_i_52_n_0 ;
  wire \cos_out[1]_i_5_n_0 ;
  wire \cos_out[1]_i_8_n_0 ;
  wire \cos_out[1]_i_9_n_0 ;
  wire \cos_out[2]_i_10_n_0 ;
  wire \cos_out[2]_i_11_n_0 ;
  wire \cos_out[2]_i_14_n_0 ;
  wire \cos_out[2]_i_15_n_0 ;
  wire \cos_out[2]_i_16_n_0 ;
  wire \cos_out[2]_i_17_n_0 ;
  wire \cos_out[2]_i_18_n_0 ;
  wire \cos_out[2]_i_19_n_0 ;
  wire \cos_out[2]_i_20_n_0 ;
  wire \cos_out[2]_i_21_n_0 ;
  wire \cos_out[2]_i_22_n_0 ;
  wire \cos_out[2]_i_23_n_0 ;
  wire \cos_out[2]_i_24_n_0 ;
  wire \cos_out[2]_i_25_n_0 ;
  wire \cos_out[2]_i_26_n_0 ;
  wire \cos_out[2]_i_27_n_0 ;
  wire \cos_out[2]_i_28_n_0 ;
  wire \cos_out[2]_i_29_n_0 ;
  wire \cos_out[2]_i_30_n_0 ;
  wire \cos_out[2]_i_31_n_0 ;
  wire \cos_out[2]_i_32_n_0 ;
  wire \cos_out[2]_i_33_n_0 ;
  wire \cos_out[2]_i_34_n_0 ;
  wire \cos_out[2]_i_3_n_0 ;
  wire \cos_out[2]_i_4_n_0 ;
  wire \cos_out[2]_i_5_n_0 ;
  wire \cos_out[2]_i_8_n_0 ;
  wire \cos_out[2]_i_9_n_0 ;
  wire \cos_out[3]_i_11_n_0 ;
  wire \cos_out[3]_i_12_n_0 ;
  wire \cos_out[3]_i_13_n_0 ;
  wire \cos_out[3]_i_14_n_0 ;
  wire \cos_out[3]_i_15_n_0 ;
  wire \cos_out[3]_i_16_n_0 ;
  wire \cos_out[3]_i_17_n_0 ;
  wire \cos_out[3]_i_4_n_0 ;
  wire \cos_out[3]_i_5_n_0 ;
  wire \cos_out[3]_i_6_n_0 ;
  wire \cos_out[3]_i_7_n_0 ;
  wire \cos_out[3]_i_8_n_0 ;
  wire \cos_out[3]_i_9_n_0 ;
  wire \cos_out[4]_i_2_n_0 ;
  wire \cos_out[4]_i_3_n_0 ;
  wire \cos_out[4]_i_4_n_0 ;
  wire \cos_out[4]_i_5_n_0 ;
  wire \cos_out[4]_i_6_n_0 ;
  wire \cos_out[4]_i_7_n_0 ;
  wire \cos_out[4]_i_8_n_0 ;
  wire \cos_out[4]_i_9_n_0 ;
  wire \cos_out[5]_i_2_n_0 ;
  wire \cos_out[5]_i_3_n_0 ;
  wire \cos_out[5]_i_4_n_0 ;
  wire \cos_out[5]_i_5_n_0 ;
  wire \cos_out_reg[0]_i_20_n_0 ;
  wire \cos_out_reg[0]_i_21_n_0 ;
  wire \cos_out_reg[0]_i_22_n_0 ;
  wire \cos_out_reg[0]_i_23_n_0 ;
  wire \cos_out_reg[0]_i_4_n_0 ;
  wire \cos_out_reg[0]_i_6_n_0 ;
  wire \cos_out_reg[0]_i_8_n_0 ;
  wire \cos_out_reg[0]_i_9_n_0 ;
  wire \cos_out_reg[1]_i_16_n_0 ;
  wire \cos_out_reg[1]_i_2_n_0 ;
  wire \cos_out_reg[1]_i_6_n_0 ;
  wire \cos_out_reg[1]_i_7_n_0 ;
  wire \cos_out_reg[2]_i_12_n_0 ;
  wire \cos_out_reg[2]_i_13_n_0 ;
  wire \cos_out_reg[2]_i_2_n_0 ;
  wire \cos_out_reg[2]_i_6_n_0 ;
  wire \cos_out_reg[2]_i_7_n_0 ;
  wire \cos_out_reg[3]_i_2_0 ;
  wire \cos_out_reg[3]_i_2_n_0 ;
  wire \cos_out_reg[3]_i_3_n_0 ;

  LUT5 #(
    .INIT(32'hCCCCFBCB)) 
    \cos_out[0]_i_10 
       (.I0(\cos_out[5]_i_5_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\cos_out[0]_i_24_n_0 ),
        .I4(Q[6]),
        .O(\cos_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[0]_i_11 
       (.I0(\cos_out[0]_i_25_n_0 ),
        .I1(\cos_out[0]_i_26_n_0 ),
        .I2(Q[7]),
        .I3(\cos_out[0]_i_27_n_0 ),
        .I4(Q[6]),
        .I5(\cos_out[0]_i_28_n_0 ),
        .O(\cos_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30CC30CC30CC74FF)) 
    \cos_out[0]_i_12 
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(\cos_out[1]_i_23_n_0 ),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBF10CFCFBF10C0C0)) 
    \cos_out[0]_i_13 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\cos_out[4]_i_6_n_0 ),
        .I4(Q[5]),
        .I5(\cos_out[5]_i_5_n_0 ),
        .O(\cos_out[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \cos_out[0]_i_14 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\cos_out[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFDADFDADEF4AEA4A)) 
    \cos_out[0]_i_15 
       (.I0(Q[6]),
        .I1(\cos_out[0]_i_29_n_0 ),
        .I2(Q[5]),
        .I3(\cos_out[0]_i_30_n_0 ),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h34CCFFFF34CC0000)) 
    \cos_out[0]_i_16 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\cos_out[0]_i_31_n_0 ),
        .O(\cos_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h55D955999BAA9AA2)) 
    \cos_out[0]_i_17 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h400A020AAFAFAFFF)) 
    \cos_out[0]_i_18 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD5555400000)) 
    \cos_out[0]_i_19 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[0]_i_2 
       (.I0(\cos_out_reg[0]_i_4_n_0 ),
        .I1(\cos_out[0]_i_5_n_0 ),
        .I2(Q[10]),
        .I3(\cos_out_reg[0]_i_6_n_0 ),
        .I4(Q[8]),
        .I5(\cos_out[0]_i_7_n_0 ),
        .O(\cos_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0133FFFF)) 
    \cos_out[0]_i_24 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\cos_out[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFE000000000000FF)) 
    \cos_out[0]_i_25 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \cos_out[0]_i_26 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h555577EAAAAAAAAA)) 
    \cos_out[0]_i_27 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h33333334CCCCCCCC)) 
    \cos_out[0]_i_28 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \cos_out[0]_i_29 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\cos_out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[0]_i_3 
       (.I0(\cos_out_reg[0]_i_8_n_0 ),
        .I1(\cos_out_reg[0]_i_9_n_0 ),
        .I2(Q[10]),
        .I3(\cos_out[0]_i_10_n_0 ),
        .I4(Q[8]),
        .I5(\cos_out[0]_i_11_n_0 ),
        .O(\cos_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cos_out[0]_i_30 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\cos_out[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3300FF00FF00FEFF)) 
    \cos_out[0]_i_31 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBFF5FFD555005400)) 
    \cos_out[0]_i_32 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h002A00AAAAFFBFFD)) 
    \cos_out[0]_i_33 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F0F0F000030)) 
    \cos_out[0]_i_34 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h003000F0F0FFFFEF)) 
    \cos_out[0]_i_35 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554AA02AA)) 
    \cos_out[0]_i_36 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5D555545050)) 
    \cos_out[0]_i_37 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABFFF55D555)) 
    \cos_out[0]_i_38 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h55AA40AA00AA22BF)) 
    \cos_out[0]_i_39 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\cos_out[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFBCB3333)) 
    \cos_out[0]_i_5 
       (.I0(\cos_out[0]_i_14_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\cos_out[5]_i_4_n_0 ),
        .I4(Q[6]),
        .O(\cos_out[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \cos_out[0]_i_7 
       (.I0(\cos_out[0]_i_17_n_0 ),
        .I1(Q[7]),
        .I2(\cos_out[0]_i_18_n_0 ),
        .I3(Q[6]),
        .I4(\cos_out[0]_i_19_n_0 ),
        .O(\cos_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_1 
       (.I0(\cos_out_reg[1]_i_2_n_0 ),
        .I1(\cos_out[1]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(\cos_out[1]_i_4_n_0 ),
        .I4(Q[10]),
        .I5(\cos_out[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_10 
       (.I0(\cos_out[4]_i_8_n_0 ),
        .I1(\cos_out[1]_i_26_n_0 ),
        .I2(Q[6]),
        .I3(\cos_out[1]_i_27_n_0 ),
        .I4(Q[11]),
        .I5(\cos_out[2]_i_19_n_0 ),
        .O(\cos_out[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \cos_out[1]_i_11 
       (.I0(\cos_out[1]_i_28_n_0 ),
        .I1(\cos_out_reg[3]_i_2_0 ),
        .I2(Q[6]),
        .I3(\cos_out[1]_i_29_n_0 ),
        .I4(Q[11]),
        .I5(\cos_out[1]_i_30_n_0 ),
        .O(\cos_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88CC30CC30CC)) 
    \cos_out[1]_i_12 
       (.I0(\cos_out[1]_i_31_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[1]_i_4_0 ),
        .I3(Q[11]),
        .I4(\cos_out[1]_i_23_n_0 ),
        .I5(Q[5]),
        .O(\cos_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCCCCC3B3BFFFF)) 
    \cos_out[1]_i_13 
       (.I0(\cos_out[1]_i_32_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\cos_out[4]_i_7_n_0 ),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\cos_out[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \cos_out[1]_i_14 
       (.I0(\cos_out[1]_i_33_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[1]_i_34_n_0 ),
        .I3(Q[11]),
        .I4(\cos_out[1]_i_35_n_0 ),
        .O(\cos_out[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \cos_out[1]_i_15 
       (.I0(\cos_out[3]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[1]_i_36_n_0 ),
        .I3(Q[11]),
        .I4(\cos_out[1]_i_37_n_0 ),
        .I5(Q[5]),
        .O(\cos_out[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_17 
       (.I0(\cos_out[1]_i_40_n_0 ),
        .I1(\cos_out[1]_i_41_n_0 ),
        .I2(Q[6]),
        .I3(\cos_out[1]_i_42_n_0 ),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC33BBBBFC338888)) 
    \cos_out[1]_i_18 
       (.I0(\cos_out[1]_i_43_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[2]_i_29_n_0 ),
        .I3(Q[5]),
        .I4(Q[11]),
        .I5(\cos_out[1]_i_44_n_0 ),
        .O(\cos_out[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_19 
       (.I0(\cos_out[1]_i_45_n_0 ),
        .I1(\cos_out[1]_i_46_n_0 ),
        .I2(Q[6]),
        .I3(\cos_out[3]_i_12_n_0 ),
        .I4(Q[11]),
        .I5(\cos_out[1]_i_47_n_0 ),
        .O(\cos_out[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_20 
       (.I0(\cos_out[1]_i_48_n_0 ),
        .I1(\cos_out[2]_i_28_n_0 ),
        .I2(Q[6]),
        .I3(\cos_out[1]_i_40_n_0 ),
        .I4(Q[11]),
        .I5(\cos_out[1]_i_49_n_0 ),
        .O(\cos_out[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_21 
       (.I0(\cos_out[1]_i_50_n_0 ),
        .I1(\cos_out[1]_i_34_n_0 ),
        .I2(Q[6]),
        .I3(\cos_out[1]_i_51_n_0 ),
        .I4(Q[11]),
        .I5(\cos_out[1]_i_52_n_0 ),
        .O(\cos_out[1]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFECC0000)) 
    \cos_out[1]_i_22 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\cos_out[1]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \cos_out[1]_i_23 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\cos_out[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7FFF)) 
    \cos_out[1]_i_25 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \cos_out[1]_i_26 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\cos_out[1]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00005557)) 
    \cos_out[1]_i_27 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\cos_out[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \cos_out[1]_i_28 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \cos_out[1]_i_29 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\cos_out[1]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \cos_out[1]_i_3 
       (.I0(\cos_out[1]_i_8_n_0 ),
        .I1(Q[8]),
        .I2(\cos_out[1]_i_9_n_0 ),
        .I3(Q[7]),
        .I4(\cos_out[1]_i_10_n_0 ),
        .O(\cos_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005151515)) 
    \cos_out[1]_i_30 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cos_out[1]_i_31 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\cos_out[1]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \cos_out[1]_i_32 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\cos_out[1]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEA8080)) 
    \cos_out[1]_i_33 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\cos_out[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \cos_out[1]_i_34 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFC)) 
    \cos_out[1]_i_35 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\cos_out[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFEAAAAAAA)) 
    \cos_out[1]_i_36 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \cos_out[1]_i_37 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\cos_out[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hEA0000000057FFFF)) 
    \cos_out[1]_i_38 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F3F3F3F3C3C7C)) 
    \cos_out[1]_i_39 
       (.I0(Q[1]),
        .I1(Q[11]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \cos_out[1]_i_4 
       (.I0(\cos_out[1]_i_11_n_0 ),
        .I1(Q[7]),
        .I2(\cos_out[1]_i_12_n_0 ),
        .I3(Q[8]),
        .I4(\cos_out[1]_i_13_n_0 ),
        .O(\cos_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \cos_out[1]_i_40 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0C8C003030333)) 
    \cos_out[1]_i_41 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h555557FFFFEAAAAA)) 
    \cos_out[1]_i_42 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F7FFFFEFAFA)) 
    \cos_out[1]_i_43 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015151555)) 
    \cos_out[1]_i_44 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h55555577FFFFFFEA)) 
    \cos_out[1]_i_45 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F7F7F7F)) 
    \cos_out[1]_i_46 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEAEA00000000)) 
    \cos_out[1]_i_47 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AA0000551555)) 
    \cos_out[1]_i_48 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h555F557FFFAAFEAA)) 
    \cos_out[1]_i_49 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[1]_i_5 
       (.I0(\cos_out[1]_i_14_n_0 ),
        .I1(\cos_out[1]_i_15_n_0 ),
        .I2(Q[8]),
        .I3(\cos_out_reg[1]_i_16_n_0 ),
        .I4(Q[7]),
        .I5(\cos_out[1]_i_17_n_0 ),
        .O(\cos_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h337FFCCC)) 
    \cos_out[1]_i_50 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\cos_out[1]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \cos_out[1]_i_51 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\cos_out[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hF080F000000F0F0F)) 
    \cos_out[1]_i_52 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cos_out[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3CBCBC)) 
    \cos_out[1]_i_8 
       (.I0(\cos_out[4]_i_9_n_0 ),
        .I1(Q[7]),
        .I2(Q[11]),
        .I3(\cos_out[1]_i_22_n_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\cos_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0FFA0000CFF0CFF)) 
    \cos_out[1]_i_9 
       (.I0(\cos_out[1]_i_23_n_0 ),
        .I1(\cos_out[1]_i_4_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\cos_out[1]_i_25_n_0 ),
        .I5(Q[11]),
        .O(\cos_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_out[2]_i_1 
       (.I0(\cos_out_reg[2]_i_2_n_0 ),
        .I1(\cos_out[2]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(\cos_out[2]_i_4_n_0 ),
        .I4(Q[10]),
        .I5(\cos_out[2]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h11111555AAAA8888)) 
    \cos_out[2]_i_10 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(\cos_out[2]_i_20_n_0 ),
        .I4(Q[4]),
        .I5(Q[11]),
        .O(\cos_out[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFFFBFFFFDDDD)) 
    \cos_out[2]_i_11 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(\cos_out[2]_i_18_n_0 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFCCCBBBB)) 
    \cos_out[2]_i_14 
       (.I0(\cos_out[2]_i_25_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\cos_out[2]_i_26_n_0 ),
        .I4(Q[11]),
        .O(\cos_out[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CC30CC30CC)) 
    \cos_out[2]_i_15 
       (.I0(\cos_out[2]_i_27_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[3]_i_12_n_0 ),
        .I3(Q[11]),
        .I4(\cos_out[5]_i_5_n_0 ),
        .I5(Q[5]),
        .O(\cos_out[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0FAF0FAFC0CFC0C0)) 
    \cos_out[2]_i_16 
       (.I0(\cos_out[4]_i_9_n_0 ),
        .I1(\cos_out[2]_i_28_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\cos_out[2]_i_29_n_0 ),
        .I5(Q[11]),
        .O(\cos_out[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8CC3333B8CC0000)) 
    \cos_out[2]_i_17 
       (.I0(\cos_out[5]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[2]_i_30_n_0 ),
        .I3(Q[5]),
        .I4(Q[11]),
        .I5(\cos_out[2]_i_31_n_0 ),
        .O(\cos_out[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \cos_out[2]_i_18 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\cos_out[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFFFFFFF)) 
    \cos_out[2]_i_19 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cos_out[2]_i_20 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\cos_out[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFA0F0C0F0C0)) 
    \cos_out[2]_i_21 
       (.I0(\cos_out[2]_i_32_n_0 ),
        .I1(\cos_out[2]_i_33_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\cos_out[5]_i_5_n_0 ),
        .I5(Q[11]),
        .O(\cos_out[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFF08080F0F00F0F)) 
    \cos_out[2]_i_22 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\cos_out[4]_i_7_n_0 ),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \cos_out[2]_i_23 
       (.I0(\cos_out[3]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\cos_out[2]_i_34_n_0 ),
        .I4(Q[11]),
        .O(\cos_out[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h55777777EAAAAAAA)) 
    \cos_out[2]_i_24 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[11]),
        .O(\cos_out[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000110015)) 
    \cos_out[2]_i_25 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF0E0)) 
    \cos_out[2]_i_26 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\cos_out[2]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cos_out[2]_i_27 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\cos_out[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cos_out[2]_i_28 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00003337)) 
    \cos_out[2]_i_29 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\cos_out[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h45EA55FF45EA00AA)) 
    \cos_out[2]_i_3 
       (.I0(Q[8]),
        .I1(\cos_out[2]_i_8_n_0 ),
        .I2(Q[6]),
        .I3(Q[11]),
        .I4(Q[7]),
        .I5(\cos_out[2]_i_9_n_0 ),
        .O(\cos_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cos_out[2]_i_30 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\cos_out[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h37777777FFFFFFFF)) 
    \cos_out[2]_i_31 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \cos_out[2]_i_32 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \cos_out[2]_i_33 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(\cos_out[2]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \cos_out[2]_i_34 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(\cos_out[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBBB800008B88FFFF)) 
    \cos_out[2]_i_4 
       (.I0(\cos_out[2]_i_10_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\cos_out[2]_i_11_n_0 ),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\cos_out[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \cos_out[2]_i_5 
       (.I0(Q[8]),
        .I1(\cos_out_reg[2]_i_12_n_0 ),
        .I2(\cos_out_reg[2]_i_13_n_0 ),
        .O(\cos_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FEFFFFFFFFFFFF0)) 
    \cos_out[2]_i_8 
       (.I0(\cos_out[2]_i_18_n_0 ),
        .I1(Q[0]),
        .I2(Q[11]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\cos_out[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \cos_out[2]_i_9 
       (.I0(\cos_out[4]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(\cos_out[2]_i_19_n_0 ),
        .I3(Q[11]),
        .O(\cos_out[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \cos_out[3]_i_1 
       (.I0(Q[9]),
        .I1(\cos_out_reg[3]_i_2_n_0 ),
        .I2(\cos_out_reg[3]_i_3_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \cos_out[3]_i_11 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\cos_out[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055575757)) 
    \cos_out[3]_i_12 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \cos_out[3]_i_13 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\cos_out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8CCCC33003333)) 
    \cos_out[3]_i_14 
       (.I0(\cos_out[3]_i_16_n_0 ),
        .I1(Q[7]),
        .I2(\cos_out[3]_i_17_n_0 ),
        .I3(\cos_out[1]_i_34_n_0 ),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\cos_out[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \cos_out[3]_i_15 
       (.I0(\cos_out[3]_i_12_n_0 ),
        .I1(Q[11]),
        .I2(\cos_out[5]_i_5_n_0 ),
        .I3(Q[5]),
        .O(\cos_out[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \cos_out[3]_i_16 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\cos_out[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEAEA)) 
    \cos_out[3]_i_17 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEA45FFFFEA450000)) 
    \cos_out[3]_i_4 
       (.I0(Q[7]),
        .I1(\cos_out[3]_i_8_n_0 ),
        .I2(Q[6]),
        .I3(Q[11]),
        .I4(Q[8]),
        .I5(\cos_out[3]_i_9_n_0 ),
        .O(\cos_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC000000BBFFFFFF)) 
    \cos_out[3]_i_5 
       (.I0(\cos_out_reg[3]_i_2_0 ),
        .I1(Q[6]),
        .I2(\cos_out[3]_i_11_n_0 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\cos_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h10111011FFFFFFEE)) 
    \cos_out[3]_i_6 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\cos_out[3]_i_12_n_0 ),
        .I3(Q[6]),
        .I4(\cos_out[3]_i_13_n_0 ),
        .I5(Q[11]),
        .O(\cos_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBBBBB88888)) 
    \cos_out[3]_i_7 
       (.I0(\cos_out[3]_i_14_n_0 ),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\cos_out[3]_i_15_n_0 ),
        .I4(Q[7]),
        .I5(Q[11]),
        .O(\cos_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA888888811111555)) 
    \cos_out[3]_i_8 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\cos_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3B3F3B3CCCC0CCC0)) 
    \cos_out[3]_i_9 
       (.I0(\cos_out[5]_i_4_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\cos_out[5]_i_5_n_0 ),
        .I5(Q[11]),
        .O(\cos_out[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \cos_out[4]_i_2 
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(\cos_out[4]_i_4_n_0 ),
        .I3(Q[8]),
        .I4(\cos_out[5]_i_3_n_0 ),
        .O(\cos_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \cos_out[4]_i_3 
       (.I0(\cos_out[5]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\cos_out[4]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(Q[11]),
        .O(\cos_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44555555FFFAAAAA)) 
    \cos_out[4]_i_4 
       (.I0(Q[7]),
        .I1(\cos_out[4]_i_6_n_0 ),
        .I2(\cos_out[4]_i_7_n_0 ),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\cos_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE00005055FFFF)) 
    \cos_out[4]_i_5 
       (.I0(Q[6]),
        .I1(\cos_out[4]_i_8_n_0 ),
        .I2(\cos_out[4]_i_9_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[11]),
        .O(\cos_out[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \cos_out[4]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\cos_out[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \cos_out[4]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\cos_out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8A8)) 
    \cos_out[4]_i_8 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\cos_out[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000F7F)) 
    \cos_out[4]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\cos_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FF03BF80FC00)) 
    \cos_out[5]_i_1 
       (.I0(\cos_out[5]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[8]),
        .I5(\cos_out[5]_i_3_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \cos_out[5]_i_2 
       (.I0(Q[5]),
        .I1(\cos_out[5]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[11]),
        .O(\cos_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cos_out[5]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\cos_out[5]_i_5_n_0 ),
        .I4(Q[11]),
        .O(\cos_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \cos_out[5]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\cos_out[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    \cos_out[5]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\cos_out[5]_i_5_n_0 ));
  MUXF7 \cos_out_reg[0]_i_1 
       (.I0(\cos_out[0]_i_2_n_0 ),
        .I1(\cos_out[0]_i_3_n_0 ),
        .O(D[0]),
        .S(Q[9]));
  MUXF7 \cos_out_reg[0]_i_20 
       (.I0(\cos_out[0]_i_32_n_0 ),
        .I1(\cos_out[0]_i_33_n_0 ),
        .O(\cos_out_reg[0]_i_20_n_0 ),
        .S(Q[6]));
  MUXF7 \cos_out_reg[0]_i_21 
       (.I0(\cos_out[0]_i_34_n_0 ),
        .I1(\cos_out[0]_i_35_n_0 ),
        .O(\cos_out_reg[0]_i_21_n_0 ),
        .S(Q[6]));
  MUXF7 \cos_out_reg[0]_i_22 
       (.I0(\cos_out[0]_i_36_n_0 ),
        .I1(\cos_out[0]_i_37_n_0 ),
        .O(\cos_out_reg[0]_i_22_n_0 ),
        .S(Q[6]));
  MUXF7 \cos_out_reg[0]_i_23 
       (.I0(\cos_out[0]_i_38_n_0 ),
        .I1(\cos_out[0]_i_39_n_0 ),
        .O(\cos_out_reg[0]_i_23_n_0 ),
        .S(Q[6]));
  MUXF7 \cos_out_reg[0]_i_4 
       (.I0(\cos_out[0]_i_12_n_0 ),
        .I1(\cos_out[0]_i_13_n_0 ),
        .O(\cos_out_reg[0]_i_4_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[0]_i_6 
       (.I0(\cos_out[0]_i_15_n_0 ),
        .I1(\cos_out[0]_i_16_n_0 ),
        .O(\cos_out_reg[0]_i_6_n_0 ),
        .S(Q[7]));
  MUXF8 \cos_out_reg[0]_i_8 
       (.I0(\cos_out_reg[0]_i_20_n_0 ),
        .I1(\cos_out_reg[0]_i_21_n_0 ),
        .O(\cos_out_reg[0]_i_8_n_0 ),
        .S(Q[7]));
  MUXF8 \cos_out_reg[0]_i_9 
       (.I0(\cos_out_reg[0]_i_22_n_0 ),
        .I1(\cos_out_reg[0]_i_23_n_0 ),
        .O(\cos_out_reg[0]_i_9_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[1]_i_16 
       (.I0(\cos_out[1]_i_38_n_0 ),
        .I1(\cos_out[1]_i_39_n_0 ),
        .O(\cos_out_reg[1]_i_16_n_0 ),
        .S(Q[6]));
  MUXF8 \cos_out_reg[1]_i_2 
       (.I0(\cos_out_reg[1]_i_6_n_0 ),
        .I1(\cos_out_reg[1]_i_7_n_0 ),
        .O(\cos_out_reg[1]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \cos_out_reg[1]_i_6 
       (.I0(\cos_out[1]_i_18_n_0 ),
        .I1(\cos_out[1]_i_19_n_0 ),
        .O(\cos_out_reg[1]_i_6_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[1]_i_7 
       (.I0(\cos_out[1]_i_20_n_0 ),
        .I1(\cos_out[1]_i_21_n_0 ),
        .O(\cos_out_reg[1]_i_7_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[2]_i_12 
       (.I0(\cos_out[2]_i_21_n_0 ),
        .I1(\cos_out[2]_i_22_n_0 ),
        .O(\cos_out_reg[2]_i_12_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[2]_i_13 
       (.I0(\cos_out[2]_i_23_n_0 ),
        .I1(\cos_out[2]_i_24_n_0 ),
        .O(\cos_out_reg[2]_i_13_n_0 ),
        .S(Q[7]));
  MUXF8 \cos_out_reg[2]_i_2 
       (.I0(\cos_out_reg[2]_i_6_n_0 ),
        .I1(\cos_out_reg[2]_i_7_n_0 ),
        .O(\cos_out_reg[2]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \cos_out_reg[2]_i_6 
       (.I0(\cos_out[2]_i_14_n_0 ),
        .I1(\cos_out[2]_i_15_n_0 ),
        .O(\cos_out_reg[2]_i_6_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[2]_i_7 
       (.I0(\cos_out[2]_i_16_n_0 ),
        .I1(\cos_out[2]_i_17_n_0 ),
        .O(\cos_out_reg[2]_i_7_n_0 ),
        .S(Q[7]));
  MUXF7 \cos_out_reg[3]_i_2 
       (.I0(\cos_out[3]_i_4_n_0 ),
        .I1(\cos_out[3]_i_5_n_0 ),
        .O(\cos_out_reg[3]_i_2_n_0 ),
        .S(Q[10]));
  MUXF7 \cos_out_reg[3]_i_3 
       (.I0(\cos_out[3]_i_6_n_0 ),
        .I1(\cos_out[3]_i_7_n_0 ),
        .O(\cos_out_reg[3]_i_3_n_0 ),
        .S(Q[10]));
  MUXF7 \cos_out_reg[4]_i_1 
       (.I0(\cos_out[4]_i_2_n_0 ),
        .I1(\cos_out[4]_i_3_n_0 ),
        .O(D[4]),
        .S(Q[9]));
endmodule

(* ORIG_REF_NAME = "ddfs_lut_4096" *) 
module ddfs_lut_4096_0
   (D,
    Q,
    \sine_out_reg[3]_i_2_0 ,
    \sine_out[1]_i_4_0 );
  output [5:0]D;
  input [11:0]Q;
  input \sine_out_reg[3]_i_2_0 ;
  input \sine_out[1]_i_4_0 ;

  wire [5:0]D;
  wire [11:0]Q;
  wire \sine_out[0]_i_10_n_0 ;
  wire \sine_out[0]_i_11_n_0 ;
  wire \sine_out[0]_i_12_n_0 ;
  wire \sine_out[0]_i_13_n_0 ;
  wire \sine_out[0]_i_14_n_0 ;
  wire \sine_out[0]_i_15_n_0 ;
  wire \sine_out[0]_i_16_n_0 ;
  wire \sine_out[0]_i_17_n_0 ;
  wire \sine_out[0]_i_18_n_0 ;
  wire \sine_out[0]_i_19_n_0 ;
  wire \sine_out[0]_i_24_n_0 ;
  wire \sine_out[0]_i_25_n_0 ;
  wire \sine_out[0]_i_26_n_0 ;
  wire \sine_out[0]_i_27_n_0 ;
  wire \sine_out[0]_i_28_n_0 ;
  wire \sine_out[0]_i_29_n_0 ;
  wire \sine_out[0]_i_2_n_0 ;
  wire \sine_out[0]_i_30_n_0 ;
  wire \sine_out[0]_i_31_n_0 ;
  wire \sine_out[0]_i_32_n_0 ;
  wire \sine_out[0]_i_33_n_0 ;
  wire \sine_out[0]_i_34_n_0 ;
  wire \sine_out[0]_i_35_n_0 ;
  wire \sine_out[0]_i_36_n_0 ;
  wire \sine_out[0]_i_37_n_0 ;
  wire \sine_out[0]_i_38_n_0 ;
  wire \sine_out[0]_i_39_n_0 ;
  wire \sine_out[0]_i_3_n_0 ;
  wire \sine_out[0]_i_5_n_0 ;
  wire \sine_out[0]_i_7_n_0 ;
  wire \sine_out[1]_i_10_n_0 ;
  wire \sine_out[1]_i_11_n_0 ;
  wire \sine_out[1]_i_12_n_0 ;
  wire \sine_out[1]_i_13_n_0 ;
  wire \sine_out[1]_i_14_n_0 ;
  wire \sine_out[1]_i_15_n_0 ;
  wire \sine_out[1]_i_17_n_0 ;
  wire \sine_out[1]_i_18_n_0 ;
  wire \sine_out[1]_i_19_n_0 ;
  wire \sine_out[1]_i_20_n_0 ;
  wire \sine_out[1]_i_21_n_0 ;
  wire \sine_out[1]_i_22_n_0 ;
  wire \sine_out[1]_i_23_n_0 ;
  wire \sine_out[1]_i_25_n_0 ;
  wire \sine_out[1]_i_26_n_0 ;
  wire \sine_out[1]_i_27_n_0 ;
  wire \sine_out[1]_i_28_n_0 ;
  wire \sine_out[1]_i_29_n_0 ;
  wire \sine_out[1]_i_30_n_0 ;
  wire \sine_out[1]_i_31_n_0 ;
  wire \sine_out[1]_i_32_n_0 ;
  wire \sine_out[1]_i_33_n_0 ;
  wire \sine_out[1]_i_34_n_0 ;
  wire \sine_out[1]_i_35_n_0 ;
  wire \sine_out[1]_i_36_n_0 ;
  wire \sine_out[1]_i_37_n_0 ;
  wire \sine_out[1]_i_38_n_0 ;
  wire \sine_out[1]_i_39_n_0 ;
  wire \sine_out[1]_i_3_n_0 ;
  wire \sine_out[1]_i_40_n_0 ;
  wire \sine_out[1]_i_41_n_0 ;
  wire \sine_out[1]_i_42_n_0 ;
  wire \sine_out[1]_i_43_n_0 ;
  wire \sine_out[1]_i_44_n_0 ;
  wire \sine_out[1]_i_45_n_0 ;
  wire \sine_out[1]_i_46_n_0 ;
  wire \sine_out[1]_i_47_n_0 ;
  wire \sine_out[1]_i_48_n_0 ;
  wire \sine_out[1]_i_49_n_0 ;
  wire \sine_out[1]_i_4_0 ;
  wire \sine_out[1]_i_4_n_0 ;
  wire \sine_out[1]_i_50_n_0 ;
  wire \sine_out[1]_i_51_n_0 ;
  wire \sine_out[1]_i_52_n_0 ;
  wire \sine_out[1]_i_5_n_0 ;
  wire \sine_out[1]_i_8_n_0 ;
  wire \sine_out[1]_i_9_n_0 ;
  wire \sine_out[2]_i_10_n_0 ;
  wire \sine_out[2]_i_11_n_0 ;
  wire \sine_out[2]_i_14_n_0 ;
  wire \sine_out[2]_i_15_n_0 ;
  wire \sine_out[2]_i_16_n_0 ;
  wire \sine_out[2]_i_17_n_0 ;
  wire \sine_out[2]_i_18_n_0 ;
  wire \sine_out[2]_i_19_n_0 ;
  wire \sine_out[2]_i_20_n_0 ;
  wire \sine_out[2]_i_21_n_0 ;
  wire \sine_out[2]_i_22_n_0 ;
  wire \sine_out[2]_i_23_n_0 ;
  wire \sine_out[2]_i_24_n_0 ;
  wire \sine_out[2]_i_25_n_0 ;
  wire \sine_out[2]_i_26_n_0 ;
  wire \sine_out[2]_i_27_n_0 ;
  wire \sine_out[2]_i_28_n_0 ;
  wire \sine_out[2]_i_29_n_0 ;
  wire \sine_out[2]_i_30_n_0 ;
  wire \sine_out[2]_i_31_n_0 ;
  wire \sine_out[2]_i_32_n_0 ;
  wire \sine_out[2]_i_33_n_0 ;
  wire \sine_out[2]_i_34_n_0 ;
  wire \sine_out[2]_i_3_n_0 ;
  wire \sine_out[2]_i_4_n_0 ;
  wire \sine_out[2]_i_5_n_0 ;
  wire \sine_out[2]_i_8_n_0 ;
  wire \sine_out[2]_i_9_n_0 ;
  wire \sine_out[3]_i_11_n_0 ;
  wire \sine_out[3]_i_12_n_0 ;
  wire \sine_out[3]_i_13_n_0 ;
  wire \sine_out[3]_i_14_n_0 ;
  wire \sine_out[3]_i_15_n_0 ;
  wire \sine_out[3]_i_16_n_0 ;
  wire \sine_out[3]_i_17_n_0 ;
  wire \sine_out[3]_i_4_n_0 ;
  wire \sine_out[3]_i_5_n_0 ;
  wire \sine_out[3]_i_6_n_0 ;
  wire \sine_out[3]_i_7_n_0 ;
  wire \sine_out[3]_i_8_n_0 ;
  wire \sine_out[3]_i_9_n_0 ;
  wire \sine_out[4]_i_2_n_0 ;
  wire \sine_out[4]_i_3_n_0 ;
  wire \sine_out[4]_i_4_n_0 ;
  wire \sine_out[4]_i_5_n_0 ;
  wire \sine_out[4]_i_6_n_0 ;
  wire \sine_out[4]_i_7_n_0 ;
  wire \sine_out[4]_i_8_n_0 ;
  wire \sine_out[4]_i_9_n_0 ;
  wire \sine_out[5]_i_2_n_0 ;
  wire \sine_out[5]_i_3_n_0 ;
  wire \sine_out[5]_i_4_n_0 ;
  wire \sine_out[5]_i_5_n_0 ;
  wire \sine_out_reg[0]_i_20_n_0 ;
  wire \sine_out_reg[0]_i_21_n_0 ;
  wire \sine_out_reg[0]_i_22_n_0 ;
  wire \sine_out_reg[0]_i_23_n_0 ;
  wire \sine_out_reg[0]_i_4_n_0 ;
  wire \sine_out_reg[0]_i_6_n_0 ;
  wire \sine_out_reg[0]_i_8_n_0 ;
  wire \sine_out_reg[0]_i_9_n_0 ;
  wire \sine_out_reg[1]_i_16_n_0 ;
  wire \sine_out_reg[1]_i_2_n_0 ;
  wire \sine_out_reg[1]_i_6_n_0 ;
  wire \sine_out_reg[1]_i_7_n_0 ;
  wire \sine_out_reg[2]_i_12_n_0 ;
  wire \sine_out_reg[2]_i_13_n_0 ;
  wire \sine_out_reg[2]_i_2_n_0 ;
  wire \sine_out_reg[2]_i_6_n_0 ;
  wire \sine_out_reg[2]_i_7_n_0 ;
  wire \sine_out_reg[3]_i_2_0 ;
  wire \sine_out_reg[3]_i_2_n_0 ;
  wire \sine_out_reg[3]_i_3_n_0 ;

  LUT5 #(
    .INIT(32'hCCCCFBCB)) 
    \sine_out[0]_i_10 
       (.I0(\sine_out[5]_i_5_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\sine_out[0]_i_24_n_0 ),
        .I4(Q[6]),
        .O(\sine_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[0]_i_11 
       (.I0(\sine_out[0]_i_25_n_0 ),
        .I1(\sine_out[0]_i_26_n_0 ),
        .I2(Q[7]),
        .I3(\sine_out[0]_i_27_n_0 ),
        .I4(Q[6]),
        .I5(\sine_out[0]_i_28_n_0 ),
        .O(\sine_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30CC30CC30CC74FF)) 
    \sine_out[0]_i_12 
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(\sine_out[1]_i_23_n_0 ),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBF10CFCFBF10C0C0)) 
    \sine_out[0]_i_13 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\sine_out[4]_i_6_n_0 ),
        .I4(Q[5]),
        .I5(\sine_out[5]_i_5_n_0 ),
        .O(\sine_out[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \sine_out[0]_i_14 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\sine_out[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFDADFDADEF4AEA4A)) 
    \sine_out[0]_i_15 
       (.I0(Q[6]),
        .I1(\sine_out[0]_i_29_n_0 ),
        .I2(Q[5]),
        .I3(\sine_out[0]_i_30_n_0 ),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h34CCFFFF34CC0000)) 
    \sine_out[0]_i_16 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\sine_out[0]_i_31_n_0 ),
        .O(\sine_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h55D955999BAA9AA2)) 
    \sine_out[0]_i_17 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h400A020AAFAFAFFF)) 
    \sine_out[0]_i_18 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD5555400000)) 
    \sine_out[0]_i_19 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[0]_i_2 
       (.I0(\sine_out_reg[0]_i_4_n_0 ),
        .I1(\sine_out[0]_i_5_n_0 ),
        .I2(Q[10]),
        .I3(\sine_out_reg[0]_i_6_n_0 ),
        .I4(Q[8]),
        .I5(\sine_out[0]_i_7_n_0 ),
        .O(\sine_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0133FFFF)) 
    \sine_out[0]_i_24 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\sine_out[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFE000000000000FF)) 
    \sine_out[0]_i_25 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \sine_out[0]_i_26 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h555577EAAAAAAAAA)) 
    \sine_out[0]_i_27 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h33333334CCCCCCCC)) 
    \sine_out[0]_i_28 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \sine_out[0]_i_29 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\sine_out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[0]_i_3 
       (.I0(\sine_out_reg[0]_i_8_n_0 ),
        .I1(\sine_out_reg[0]_i_9_n_0 ),
        .I2(Q[10]),
        .I3(\sine_out[0]_i_10_n_0 ),
        .I4(Q[8]),
        .I5(\sine_out[0]_i_11_n_0 ),
        .O(\sine_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sine_out[0]_i_30 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\sine_out[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3300FF00FF00FEFF)) 
    \sine_out[0]_i_31 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBFF5FFD555005400)) 
    \sine_out[0]_i_32 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h002A00AAAAFFBFFD)) 
    \sine_out[0]_i_33 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F0F0F000030)) 
    \sine_out[0]_i_34 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h003000F0F0FFFFEF)) 
    \sine_out[0]_i_35 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554AA02AA)) 
    \sine_out[0]_i_36 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5D555545050)) 
    \sine_out[0]_i_37 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABFFF55D555)) 
    \sine_out[0]_i_38 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h55AA40AA00AA22BF)) 
    \sine_out[0]_i_39 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\sine_out[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFBCB3333)) 
    \sine_out[0]_i_5 
       (.I0(\sine_out[0]_i_14_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\sine_out[5]_i_4_n_0 ),
        .I4(Q[6]),
        .O(\sine_out[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sine_out[0]_i_7 
       (.I0(\sine_out[0]_i_17_n_0 ),
        .I1(Q[7]),
        .I2(\sine_out[0]_i_18_n_0 ),
        .I3(Q[6]),
        .I4(\sine_out[0]_i_19_n_0 ),
        .O(\sine_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_1 
       (.I0(\sine_out_reg[1]_i_2_n_0 ),
        .I1(\sine_out[1]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(\sine_out[1]_i_4_n_0 ),
        .I4(Q[10]),
        .I5(\sine_out[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_10 
       (.I0(\sine_out[4]_i_8_n_0 ),
        .I1(\sine_out[1]_i_26_n_0 ),
        .I2(Q[6]),
        .I3(\sine_out[1]_i_27_n_0 ),
        .I4(Q[11]),
        .I5(\sine_out[2]_i_19_n_0 ),
        .O(\sine_out[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \sine_out[1]_i_11 
       (.I0(\sine_out[1]_i_28_n_0 ),
        .I1(\sine_out_reg[3]_i_2_0 ),
        .I2(Q[6]),
        .I3(\sine_out[1]_i_29_n_0 ),
        .I4(Q[11]),
        .I5(\sine_out[1]_i_30_n_0 ),
        .O(\sine_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88CC30CC30CC)) 
    \sine_out[1]_i_12 
       (.I0(\sine_out[1]_i_31_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[1]_i_4_0 ),
        .I3(Q[11]),
        .I4(\sine_out[1]_i_23_n_0 ),
        .I5(Q[5]),
        .O(\sine_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCCCCC3B3BFFFF)) 
    \sine_out[1]_i_13 
       (.I0(\sine_out[1]_i_32_n_0 ),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\sine_out[4]_i_7_n_0 ),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\sine_out[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sine_out[1]_i_14 
       (.I0(\sine_out[1]_i_33_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[1]_i_34_n_0 ),
        .I3(Q[11]),
        .I4(\sine_out[1]_i_35_n_0 ),
        .O(\sine_out[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \sine_out[1]_i_15 
       (.I0(\sine_out[3]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[1]_i_36_n_0 ),
        .I3(Q[11]),
        .I4(\sine_out[1]_i_37_n_0 ),
        .I5(Q[5]),
        .O(\sine_out[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_17 
       (.I0(\sine_out[1]_i_40_n_0 ),
        .I1(\sine_out[1]_i_41_n_0 ),
        .I2(Q[6]),
        .I3(\sine_out[1]_i_42_n_0 ),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC33BBBBFC338888)) 
    \sine_out[1]_i_18 
       (.I0(\sine_out[1]_i_43_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[2]_i_29_n_0 ),
        .I3(Q[5]),
        .I4(Q[11]),
        .I5(\sine_out[1]_i_44_n_0 ),
        .O(\sine_out[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_19 
       (.I0(\sine_out[1]_i_45_n_0 ),
        .I1(\sine_out[1]_i_46_n_0 ),
        .I2(Q[6]),
        .I3(\sine_out[3]_i_12_n_0 ),
        .I4(Q[11]),
        .I5(\sine_out[1]_i_47_n_0 ),
        .O(\sine_out[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_20 
       (.I0(\sine_out[1]_i_48_n_0 ),
        .I1(\sine_out[2]_i_28_n_0 ),
        .I2(Q[6]),
        .I3(\sine_out[1]_i_40_n_0 ),
        .I4(Q[11]),
        .I5(\sine_out[1]_i_49_n_0 ),
        .O(\sine_out[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_21 
       (.I0(\sine_out[1]_i_50_n_0 ),
        .I1(\sine_out[1]_i_34_n_0 ),
        .I2(Q[6]),
        .I3(\sine_out[1]_i_51_n_0 ),
        .I4(Q[11]),
        .I5(\sine_out[1]_i_52_n_0 ),
        .O(\sine_out[1]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFECC0000)) 
    \sine_out[1]_i_22 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\sine_out[1]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \sine_out[1]_i_23 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\sine_out[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7FFF)) 
    \sine_out[1]_i_25 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \sine_out[1]_i_26 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\sine_out[1]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00005557)) 
    \sine_out[1]_i_27 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\sine_out[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \sine_out[1]_i_28 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \sine_out[1]_i_29 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\sine_out[1]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sine_out[1]_i_3 
       (.I0(\sine_out[1]_i_8_n_0 ),
        .I1(Q[8]),
        .I2(\sine_out[1]_i_9_n_0 ),
        .I3(Q[7]),
        .I4(\sine_out[1]_i_10_n_0 ),
        .O(\sine_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005151515)) 
    \sine_out[1]_i_30 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sine_out[1]_i_31 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\sine_out[1]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \sine_out[1]_i_32 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\sine_out[1]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hEEEA8080)) 
    \sine_out[1]_i_33 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\sine_out[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \sine_out[1]_i_34 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFC)) 
    \sine_out[1]_i_35 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\sine_out[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFEAAAAAAA)) 
    \sine_out[1]_i_36 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \sine_out[1]_i_37 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\sine_out[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hEA0000000057FFFF)) 
    \sine_out[1]_i_38 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F3F3F3F3C3C7C)) 
    \sine_out[1]_i_39 
       (.I0(Q[1]),
        .I1(Q[11]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \sine_out[1]_i_4 
       (.I0(\sine_out[1]_i_11_n_0 ),
        .I1(Q[7]),
        .I2(\sine_out[1]_i_12_n_0 ),
        .I3(Q[8]),
        .I4(\sine_out[1]_i_13_n_0 ),
        .O(\sine_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \sine_out[1]_i_40 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0C8C003030333)) 
    \sine_out[1]_i_41 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h555557FFFFEAAAAA)) 
    \sine_out[1]_i_42 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F7FFFFEFAFA)) 
    \sine_out[1]_i_43 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015151555)) 
    \sine_out[1]_i_44 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h55555577FFFFFFEA)) 
    \sine_out[1]_i_45 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F7F7F7F)) 
    \sine_out[1]_i_46 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEAEA00000000)) 
    \sine_out[1]_i_47 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AA0000551555)) 
    \sine_out[1]_i_48 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h555F557FFFAAFEAA)) 
    \sine_out[1]_i_49 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[1]_i_5 
       (.I0(\sine_out[1]_i_14_n_0 ),
        .I1(\sine_out[1]_i_15_n_0 ),
        .I2(Q[8]),
        .I3(\sine_out_reg[1]_i_16_n_0 ),
        .I4(Q[7]),
        .I5(\sine_out[1]_i_17_n_0 ),
        .O(\sine_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h337FFCCC)) 
    \sine_out[1]_i_50 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\sine_out[1]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \sine_out[1]_i_51 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\sine_out[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hF080F000000F0F0F)) 
    \sine_out[1]_i_52 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\sine_out[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3CBCBC)) 
    \sine_out[1]_i_8 
       (.I0(\sine_out[4]_i_9_n_0 ),
        .I1(Q[7]),
        .I2(Q[11]),
        .I3(\sine_out[1]_i_22_n_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\sine_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0FFA0000CFF0CFF)) 
    \sine_out[1]_i_9 
       (.I0(\sine_out[1]_i_23_n_0 ),
        .I1(\sine_out[1]_i_4_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\sine_out[1]_i_25_n_0 ),
        .I5(Q[11]),
        .O(\sine_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine_out[2]_i_1 
       (.I0(\sine_out_reg[2]_i_2_n_0 ),
        .I1(\sine_out[2]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(\sine_out[2]_i_4_n_0 ),
        .I4(Q[10]),
        .I5(\sine_out[2]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h11111555AAAA8888)) 
    \sine_out[2]_i_10 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(\sine_out[2]_i_20_n_0 ),
        .I4(Q[4]),
        .I5(Q[11]),
        .O(\sine_out[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFFFBFFFFDDDD)) 
    \sine_out[2]_i_11 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(\sine_out[2]_i_18_n_0 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFCCCBBBB)) 
    \sine_out[2]_i_14 
       (.I0(\sine_out[2]_i_25_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\sine_out[2]_i_26_n_0 ),
        .I4(Q[11]),
        .O(\sine_out[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CC30CC30CC)) 
    \sine_out[2]_i_15 
       (.I0(\sine_out[2]_i_27_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[3]_i_12_n_0 ),
        .I3(Q[11]),
        .I4(\sine_out[5]_i_5_n_0 ),
        .I5(Q[5]),
        .O(\sine_out[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0FAF0FAFC0CFC0C0)) 
    \sine_out[2]_i_16 
       (.I0(\sine_out[4]_i_9_n_0 ),
        .I1(\sine_out[2]_i_28_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\sine_out[2]_i_29_n_0 ),
        .I5(Q[11]),
        .O(\sine_out[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8CC3333B8CC0000)) 
    \sine_out[2]_i_17 
       (.I0(\sine_out[5]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[2]_i_30_n_0 ),
        .I3(Q[5]),
        .I4(Q[11]),
        .I5(\sine_out[2]_i_31_n_0 ),
        .O(\sine_out[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \sine_out[2]_i_18 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\sine_out[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FFFFFFFF)) 
    \sine_out[2]_i_19 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sine_out[2]_i_20 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\sine_out[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFA0F0C0F0C0)) 
    \sine_out[2]_i_21 
       (.I0(\sine_out[2]_i_32_n_0 ),
        .I1(\sine_out[2]_i_33_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\sine_out[5]_i_5_n_0 ),
        .I5(Q[11]),
        .O(\sine_out[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFF08080F0F00F0F)) 
    \sine_out[2]_i_22 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\sine_out[4]_i_7_n_0 ),
        .I4(Q[11]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \sine_out[2]_i_23 
       (.I0(\sine_out[3]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\sine_out[2]_i_34_n_0 ),
        .I4(Q[11]),
        .O(\sine_out[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h55777777EAAAAAAA)) 
    \sine_out[2]_i_24 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[11]),
        .O(\sine_out[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000110015)) 
    \sine_out[2]_i_25 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFF0E0)) 
    \sine_out[2]_i_26 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\sine_out[2]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \sine_out[2]_i_27 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\sine_out[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \sine_out[2]_i_28 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00003337)) 
    \sine_out[2]_i_29 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\sine_out[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h45EA55FF45EA00AA)) 
    \sine_out[2]_i_3 
       (.I0(Q[8]),
        .I1(\sine_out[2]_i_8_n_0 ),
        .I2(Q[6]),
        .I3(Q[11]),
        .I4(Q[7]),
        .I5(\sine_out[2]_i_9_n_0 ),
        .O(\sine_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sine_out[2]_i_30 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\sine_out[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h37777777FFFFFFFF)) 
    \sine_out[2]_i_31 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \sine_out[2]_i_32 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \sine_out[2]_i_33 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(\sine_out[2]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \sine_out[2]_i_34 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(\sine_out[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBBB800008B88FFFF)) 
    \sine_out[2]_i_4 
       (.I0(\sine_out[2]_i_10_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\sine_out[2]_i_11_n_0 ),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\sine_out[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \sine_out[2]_i_5 
       (.I0(Q[8]),
        .I1(\sine_out_reg[2]_i_12_n_0 ),
        .I2(\sine_out_reg[2]_i_13_n_0 ),
        .O(\sine_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FEFFFFFFFFFFFF0)) 
    \sine_out[2]_i_8 
       (.I0(\sine_out[2]_i_18_n_0 ),
        .I1(Q[0]),
        .I2(Q[11]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\sine_out[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8830)) 
    \sine_out[2]_i_9 
       (.I0(\sine_out[4]_i_8_n_0 ),
        .I1(Q[6]),
        .I2(\sine_out[2]_i_19_n_0 ),
        .I3(Q[11]),
        .O(\sine_out[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \sine_out[3]_i_1 
       (.I0(Q[9]),
        .I1(\sine_out_reg[3]_i_2_n_0 ),
        .I2(\sine_out_reg[3]_i_3_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    \sine_out[3]_i_11 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\sine_out[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055575757)) 
    \sine_out[3]_i_12 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \sine_out[3]_i_13 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\sine_out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8CCCC33003333)) 
    \sine_out[3]_i_14 
       (.I0(\sine_out[3]_i_16_n_0 ),
        .I1(Q[7]),
        .I2(\sine_out[3]_i_17_n_0 ),
        .I3(\sine_out[1]_i_34_n_0 ),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\sine_out[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sine_out[3]_i_15 
       (.I0(\sine_out[3]_i_12_n_0 ),
        .I1(Q[11]),
        .I2(\sine_out[5]_i_5_n_0 ),
        .I3(Q[5]),
        .O(\sine_out[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \sine_out[3]_i_16 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\sine_out[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEAEA)) 
    \sine_out[3]_i_17 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEA45FFFFEA450000)) 
    \sine_out[3]_i_4 
       (.I0(Q[7]),
        .I1(\sine_out[3]_i_8_n_0 ),
        .I2(Q[6]),
        .I3(Q[11]),
        .I4(Q[8]),
        .I5(\sine_out[3]_i_9_n_0 ),
        .O(\sine_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC000000BBFFFFFF)) 
    \sine_out[3]_i_5 
       (.I0(\sine_out_reg[3]_i_2_0 ),
        .I1(Q[6]),
        .I2(\sine_out[3]_i_11_n_0 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\sine_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h10111011FFFFFFEE)) 
    \sine_out[3]_i_6 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\sine_out[3]_i_12_n_0 ),
        .I3(Q[6]),
        .I4(\sine_out[3]_i_13_n_0 ),
        .I5(Q[11]),
        .O(\sine_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBBBBB88888)) 
    \sine_out[3]_i_7 
       (.I0(\sine_out[3]_i_14_n_0 ),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\sine_out[3]_i_15_n_0 ),
        .I4(Q[7]),
        .I5(Q[11]),
        .O(\sine_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA888888811111555)) 
    \sine_out[3]_i_8 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\sine_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3B3F3B3CCCC0CCC0)) 
    \sine_out[3]_i_9 
       (.I0(\sine_out[5]_i_4_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\sine_out[5]_i_5_n_0 ),
        .I5(Q[11]),
        .O(\sine_out[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \sine_out[4]_i_2 
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(\sine_out[4]_i_4_n_0 ),
        .I3(Q[8]),
        .I4(\sine_out[5]_i_3_n_0 ),
        .O(\sine_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \sine_out[4]_i_3 
       (.I0(\sine_out[5]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\sine_out[4]_i_5_n_0 ),
        .I3(Q[10]),
        .I4(Q[11]),
        .O(\sine_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44555555FFFAAAAA)) 
    \sine_out[4]_i_4 
       (.I0(Q[7]),
        .I1(\sine_out[4]_i_6_n_0 ),
        .I2(\sine_out[4]_i_7_n_0 ),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[11]),
        .O(\sine_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE00005055FFFF)) 
    \sine_out[4]_i_5 
       (.I0(Q[6]),
        .I1(\sine_out[4]_i_8_n_0 ),
        .I2(\sine_out[4]_i_9_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[11]),
        .O(\sine_out[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \sine_out[4]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\sine_out[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \sine_out[4]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\sine_out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8A8)) 
    \sine_out[4]_i_8 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\sine_out[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000F7F)) 
    \sine_out[4]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\sine_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FF03BF80FC00)) 
    \sine_out[5]_i_1 
       (.I0(\sine_out[5]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[8]),
        .I5(\sine_out[5]_i_3_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \sine_out[5]_i_2 
       (.I0(Q[5]),
        .I1(\sine_out[5]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[11]),
        .O(\sine_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sine_out[5]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\sine_out[5]_i_5_n_0 ),
        .I4(Q[11]),
        .O(\sine_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \sine_out[5]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\sine_out[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    \sine_out[5]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\sine_out[5]_i_5_n_0 ));
  MUXF7 \sine_out_reg[0]_i_1 
       (.I0(\sine_out[0]_i_2_n_0 ),
        .I1(\sine_out[0]_i_3_n_0 ),
        .O(D[0]),
        .S(Q[9]));
  MUXF7 \sine_out_reg[0]_i_20 
       (.I0(\sine_out[0]_i_32_n_0 ),
        .I1(\sine_out[0]_i_33_n_0 ),
        .O(\sine_out_reg[0]_i_20_n_0 ),
        .S(Q[6]));
  MUXF7 \sine_out_reg[0]_i_21 
       (.I0(\sine_out[0]_i_34_n_0 ),
        .I1(\sine_out[0]_i_35_n_0 ),
        .O(\sine_out_reg[0]_i_21_n_0 ),
        .S(Q[6]));
  MUXF7 \sine_out_reg[0]_i_22 
       (.I0(\sine_out[0]_i_36_n_0 ),
        .I1(\sine_out[0]_i_37_n_0 ),
        .O(\sine_out_reg[0]_i_22_n_0 ),
        .S(Q[6]));
  MUXF7 \sine_out_reg[0]_i_23 
       (.I0(\sine_out[0]_i_38_n_0 ),
        .I1(\sine_out[0]_i_39_n_0 ),
        .O(\sine_out_reg[0]_i_23_n_0 ),
        .S(Q[6]));
  MUXF7 \sine_out_reg[0]_i_4 
       (.I0(\sine_out[0]_i_12_n_0 ),
        .I1(\sine_out[0]_i_13_n_0 ),
        .O(\sine_out_reg[0]_i_4_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[0]_i_6 
       (.I0(\sine_out[0]_i_15_n_0 ),
        .I1(\sine_out[0]_i_16_n_0 ),
        .O(\sine_out_reg[0]_i_6_n_0 ),
        .S(Q[7]));
  MUXF8 \sine_out_reg[0]_i_8 
       (.I0(\sine_out_reg[0]_i_20_n_0 ),
        .I1(\sine_out_reg[0]_i_21_n_0 ),
        .O(\sine_out_reg[0]_i_8_n_0 ),
        .S(Q[7]));
  MUXF8 \sine_out_reg[0]_i_9 
       (.I0(\sine_out_reg[0]_i_22_n_0 ),
        .I1(\sine_out_reg[0]_i_23_n_0 ),
        .O(\sine_out_reg[0]_i_9_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[1]_i_16 
       (.I0(\sine_out[1]_i_38_n_0 ),
        .I1(\sine_out[1]_i_39_n_0 ),
        .O(\sine_out_reg[1]_i_16_n_0 ),
        .S(Q[6]));
  MUXF8 \sine_out_reg[1]_i_2 
       (.I0(\sine_out_reg[1]_i_6_n_0 ),
        .I1(\sine_out_reg[1]_i_7_n_0 ),
        .O(\sine_out_reg[1]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \sine_out_reg[1]_i_6 
       (.I0(\sine_out[1]_i_18_n_0 ),
        .I1(\sine_out[1]_i_19_n_0 ),
        .O(\sine_out_reg[1]_i_6_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[1]_i_7 
       (.I0(\sine_out[1]_i_20_n_0 ),
        .I1(\sine_out[1]_i_21_n_0 ),
        .O(\sine_out_reg[1]_i_7_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[2]_i_12 
       (.I0(\sine_out[2]_i_21_n_0 ),
        .I1(\sine_out[2]_i_22_n_0 ),
        .O(\sine_out_reg[2]_i_12_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[2]_i_13 
       (.I0(\sine_out[2]_i_23_n_0 ),
        .I1(\sine_out[2]_i_24_n_0 ),
        .O(\sine_out_reg[2]_i_13_n_0 ),
        .S(Q[7]));
  MUXF8 \sine_out_reg[2]_i_2 
       (.I0(\sine_out_reg[2]_i_6_n_0 ),
        .I1(\sine_out_reg[2]_i_7_n_0 ),
        .O(\sine_out_reg[2]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \sine_out_reg[2]_i_6 
       (.I0(\sine_out[2]_i_14_n_0 ),
        .I1(\sine_out[2]_i_15_n_0 ),
        .O(\sine_out_reg[2]_i_6_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[2]_i_7 
       (.I0(\sine_out[2]_i_16_n_0 ),
        .I1(\sine_out[2]_i_17_n_0 ),
        .O(\sine_out_reg[2]_i_7_n_0 ),
        .S(Q[7]));
  MUXF7 \sine_out_reg[3]_i_2 
       (.I0(\sine_out[3]_i_4_n_0 ),
        .I1(\sine_out[3]_i_5_n_0 ),
        .O(\sine_out_reg[3]_i_2_n_0 ),
        .S(Q[10]));
  MUXF7 \sine_out_reg[3]_i_3 
       (.I0(\sine_out[3]_i_6_n_0 ),
        .I1(\sine_out[3]_i_7_n_0 ),
        .O(\sine_out_reg[3]_i_3_n_0 ),
        .S(Q[10]));
  MUXF7 \sine_out_reg[4]_i_1 
       (.I0(\sine_out[4]_i_2_n_0 ),
        .I1(\sine_out[4]_i_3_n_0 ),
        .O(D[4]),
        .S(Q[9]));
endmodule

module qam_mapper
   (I_symbols,
    Q_symbols,
    DI,
    \Q_symbols_reg[1]_0 ,
    S,
    \I_symbols_reg[0]_0 ,
    \I_symbols_reg[0]_1 ,
    \I_symbols_reg[0]_2 ,
    input_stream,
    CLK,
    AR,
    Q,
    \Q_upconverted_reg[7] );
  output [1:0]I_symbols;
  output [0:0]Q_symbols;
  output [2:0]DI;
  output [2:0]\Q_symbols_reg[1]_0 ;
  output [0:0]S;
  output [0:0]\I_symbols_reg[0]_0 ;
  output [0:0]\I_symbols_reg[0]_1 ;
  output [0:0]\I_symbols_reg[0]_2 ;
  input [1:0]input_stream;
  input CLK;
  input [0:0]AR;
  input [5:0]Q;
  input [5:0]\Q_upconverted_reg[7] ;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]DI;
  wire [1:0]I_symbols;
  wire [0:0]\I_symbols_reg[0]_0 ;
  wire [0:0]\I_symbols_reg[0]_1 ;
  wire [0:0]\I_symbols_reg[0]_2 ;
  wire [5:0]Q;
  wire [0:0]Q_symbols;
  wire [2:0]\Q_symbols_reg[1]_0 ;
  wire [5:0]\Q_upconverted_reg[7] ;
  wire [0:0]S;
  wire [1:0]input_stream;

  FDCE #(
    .INIT(1'b0)) 
    \I_symbols_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(1'b1),
        .Q(I_symbols[0]));
  FDCE #(
    .INIT(1'b0)) 
    \I_symbols_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(input_stream[0]),
        .Q(I_symbols[1]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    I_upconverted0__0_carry__0_i_1
       (.I0(I_symbols[0]),
        .I1(Q[5]),
        .I2(I_symbols[1]),
        .I3(Q[4]),
        .O(\I_symbols_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    I_upconverted0__0_carry_i_1
       (.I0(I_symbols[1]),
        .I1(Q[2]),
        .I2(I_symbols[0]),
        .I3(Q[3]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h7000)) 
    I_upconverted0__0_carry_i_2
       (.I0(I_symbols[1]),
        .I1(Q[1]),
        .I2(I_symbols[0]),
        .I3(Q[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hF777)) 
    I_upconverted0__0_carry_i_3
       (.I0(I_symbols[1]),
        .I1(Q[0]),
        .I2(I_symbols[0]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h7888)) 
    I_upconverted0__0_carry_i_7
       (.I0(I_symbols[0]),
        .I1(Q[1]),
        .I2(I_symbols[1]),
        .I3(Q[0]),
        .O(S));
  FDCE #(
    .INIT(1'b0)) 
    \Q_symbols_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(input_stream[1]),
        .Q(Q_symbols));
  LUT4 #(
    .INIT(16'h7FFF)) 
    Q_upconverted0__0_carry__0_i_1
       (.I0(I_symbols[0]),
        .I1(\Q_upconverted_reg[7] [5]),
        .I2(Q_symbols),
        .I3(\Q_upconverted_reg[7] [4]),
        .O(\I_symbols_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h7000)) 
    Q_upconverted0__0_carry_i_1
       (.I0(Q_symbols),
        .I1(\Q_upconverted_reg[7] [2]),
        .I2(I_symbols[0]),
        .I3(\Q_upconverted_reg[7] [3]),
        .O(\Q_symbols_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    Q_upconverted0__0_carry_i_2
       (.I0(Q_symbols),
        .I1(\Q_upconverted_reg[7] [1]),
        .I2(I_symbols[0]),
        .I3(\Q_upconverted_reg[7] [2]),
        .O(\Q_symbols_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    Q_upconverted0__0_carry_i_3
       (.I0(Q_symbols),
        .I1(\Q_upconverted_reg[7] [0]),
        .I2(I_symbols[0]),
        .I3(\Q_upconverted_reg[7] [1]),
        .O(\Q_symbols_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    Q_upconverted0__0_carry_i_7
       (.I0(I_symbols[0]),
        .I1(\Q_upconverted_reg[7] [1]),
        .I2(Q_symbols),
        .I3(\Q_upconverted_reg[7] [0]),
        .O(\I_symbols_reg[0]_0 ));
endmodule

module qam_mod
   (PASSBAND_OBUF,
    input_stream,
    CLK,
    AR,
    i_fcw_IBUF);
  output [7:0]PASSBAND_OBUF;
  input [1:0]input_stream;
  input CLK;
  input [0:0]AR;
  input [11:0]i_fcw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]I_signal;
  wire [1:0]I_symbols;
  wire [7:0]I_upconverted;
  wire [7:1]I_upconverted0;
  wire I_upconverted0__0_carry__0_n_2;
  wire I_upconverted0__0_carry__0_n_3;
  wire I_upconverted0__0_carry_n_0;
  wire I_upconverted0__0_carry_n_1;
  wire I_upconverted0__0_carry_n_2;
  wire I_upconverted0__0_carry_n_3;
  wire [7:0]PASSBAND_OBUF;
  wire \PASSBAND_OBUF[4]_inst_i_2_n_0 ;
  wire \PASSBAND_OBUF[6]_inst_i_2_n_0 ;
  wire \PASSBAND_OBUF[7]_inst_i_2_n_0 ;
  wire [7:0]Q_signal;
  wire [1:1]Q_symbols;
  wire [7:0]Q_upconverted;
  wire [7:1]Q_upconverted0;
  wire Q_upconverted0__0_carry__0_n_2;
  wire Q_upconverted0__0_carry__0_n_3;
  wire Q_upconverted0__0_carry_n_0;
  wire Q_upconverted0__0_carry_n_1;
  wire Q_upconverted0__0_carry_n_2;
  wire Q_upconverted0__0_carry_n_3;
  wire [5:0]cos_out;
  wire [11:0]i_fcw_IBUF;
  wire [1:0]input_stream;
  wire [5:0]sine_out;
  wire u_ddfs_osc_n_0;
  wire u_ddfs_osc_n_1;
  wire u_ddfs_osc_n_10;
  wire u_ddfs_osc_n_11;
  wire u_ddfs_osc_n_12;
  wire u_ddfs_osc_n_13;
  wire u_ddfs_osc_n_2;
  wire u_ddfs_osc_n_20;
  wire u_ddfs_osc_n_21;
  wire u_ddfs_osc_n_22;
  wire u_ddfs_osc_n_23;
  wire u_ddfs_osc_n_24;
  wire u_ddfs_osc_n_25;
  wire u_ddfs_osc_n_9;
  wire u_mapper_qam_n_10;
  wire u_mapper_qam_n_11;
  wire u_mapper_qam_n_12;
  wire u_mapper_qam_n_3;
  wire u_mapper_qam_n_4;
  wire u_mapper_qam_n_5;
  wire u_mapper_qam_n_6;
  wire u_mapper_qam_n_7;
  wire u_mapper_qam_n_8;
  wire u_mapper_qam_n_9;
  wire [3:2]NLW_I_upconverted0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_I_upconverted0__0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_Q_upconverted0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_Q_upconverted0__0_carry__0_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[0]),
        .Q(I_signal[0]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[1]),
        .Q(I_signal[1]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[2]),
        .Q(I_signal[2]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[3]),
        .Q(I_signal[3]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[4]),
        .Q(I_signal[4]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[5]),
        .Q(I_signal[5]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[6]),
        .Q(I_signal[6]));
  FDCE #(
    .INIT(1'b0)) 
    \I_molulator_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted[7]),
        .Q(I_signal[7]));
  CARRY4 I_upconverted0__0_carry
       (.CI(1'b0),
        .CO({I_upconverted0__0_carry_n_0,I_upconverted0__0_carry_n_1,I_upconverted0__0_carry_n_2,I_upconverted0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_mapper_qam_n_3,u_mapper_qam_n_4,u_mapper_qam_n_5,1'b0}),
        .O(I_upconverted0[4:1]),
        .S({u_ddfs_osc_n_0,u_ddfs_osc_n_1,u_ddfs_osc_n_2,u_mapper_qam_n_9}));
  CARRY4 I_upconverted0__0_carry__0
       (.CI(I_upconverted0__0_carry_n_0),
        .CO({NLW_I_upconverted0__0_carry__0_CO_UNCONNECTED[3:2],I_upconverted0__0_carry__0_n_2,I_upconverted0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,u_mapper_qam_n_11,u_ddfs_osc_n_24}),
        .O({NLW_I_upconverted0__0_carry__0_O_UNCONNECTED[3],I_upconverted0[7:5]}),
        .S({1'b0,1'b1,u_ddfs_osc_n_9,u_ddfs_osc_n_10}));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(u_ddfs_osc_n_22),
        .Q(I_upconverted[0]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[1]),
        .Q(I_upconverted[1]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[2]),
        .Q(I_upconverted[2]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[3]),
        .Q(I_upconverted[3]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[4]),
        .Q(I_upconverted[4]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[5]),
        .Q(I_upconverted[5]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[6]),
        .Q(I_upconverted[6]));
  FDCE #(
    .INIT(1'b0)) 
    \I_upconverted_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(I_upconverted0[7]),
        .Q(I_upconverted[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PASSBAND_OBUF[0]_inst_i_1 
       (.I0(I_signal[0]),
        .I1(Q_signal[0]),
        .O(PASSBAND_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \PASSBAND_OBUF[1]_inst_i_1 
       (.I0(Q_signal[0]),
        .I1(I_signal[0]),
        .I2(Q_signal[1]),
        .I3(I_signal[1]),
        .O(PASSBAND_OBUF[1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \PASSBAND_OBUF[2]_inst_i_1 
       (.I0(Q_signal[1]),
        .I1(I_signal[1]),
        .I2(Q_signal[0]),
        .I3(I_signal[0]),
        .I4(Q_signal[2]),
        .I5(I_signal[2]),
        .O(PASSBAND_OBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \PASSBAND_OBUF[3]_inst_i_1 
       (.I0(\PASSBAND_OBUF[4]_inst_i_2_n_0 ),
        .I1(Q_signal[3]),
        .I2(I_signal[3]),
        .O(PASSBAND_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \PASSBAND_OBUF[4]_inst_i_1 
       (.I0(Q_signal[3]),
        .I1(I_signal[3]),
        .I2(\PASSBAND_OBUF[4]_inst_i_2_n_0 ),
        .I3(Q_signal[4]),
        .I4(I_signal[4]),
        .O(PASSBAND_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \PASSBAND_OBUF[4]_inst_i_2 
       (.I0(I_signal[0]),
        .I1(Q_signal[0]),
        .I2(I_signal[1]),
        .I3(Q_signal[1]),
        .I4(I_signal[2]),
        .I5(Q_signal[2]),
        .O(\PASSBAND_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \PASSBAND_OBUF[5]_inst_i_1 
       (.I0(\PASSBAND_OBUF[6]_inst_i_2_n_0 ),
        .I1(Q_signal[5]),
        .I2(I_signal[5]),
        .O(PASSBAND_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \PASSBAND_OBUF[6]_inst_i_1 
       (.I0(Q_signal[5]),
        .I1(I_signal[5]),
        .I2(\PASSBAND_OBUF[6]_inst_i_2_n_0 ),
        .I3(Q_signal[6]),
        .I4(I_signal[6]),
        .O(PASSBAND_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \PASSBAND_OBUF[6]_inst_i_2 
       (.I0(\PASSBAND_OBUF[4]_inst_i_2_n_0 ),
        .I1(I_signal[3]),
        .I2(Q_signal[3]),
        .I3(I_signal[4]),
        .I4(Q_signal[4]),
        .O(\PASSBAND_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \PASSBAND_OBUF[7]_inst_i_1 
       (.I0(Q_signal[6]),
        .I1(I_signal[6]),
        .I2(\PASSBAND_OBUF[7]_inst_i_2_n_0 ),
        .I3(Q_signal[7]),
        .I4(I_signal[7]),
        .O(PASSBAND_OBUF[7]));
  LUT3 #(
    .INIT(8'hE8)) 
    \PASSBAND_OBUF[7]_inst_i_2 
       (.I0(\PASSBAND_OBUF[6]_inst_i_2_n_0 ),
        .I1(I_signal[5]),
        .I2(Q_signal[5]),
        .O(\PASSBAND_OBUF[7]_inst_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[0]),
        .Q(Q_signal[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[1]),
        .Q(Q_signal[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[2]),
        .Q(Q_signal[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[3]),
        .Q(Q_signal[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[4]),
        .Q(Q_signal[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[5]),
        .Q(Q_signal[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[6]),
        .Q(Q_signal[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_molulator_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted[7]),
        .Q(Q_signal[7]));
  CARRY4 Q_upconverted0__0_carry
       (.CI(1'b0),
        .CO({Q_upconverted0__0_carry_n_0,Q_upconverted0__0_carry_n_1,Q_upconverted0__0_carry_n_2,Q_upconverted0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_mapper_qam_n_6,u_mapper_qam_n_7,u_mapper_qam_n_8,1'b0}),
        .O(Q_upconverted0[4:1]),
        .S({u_ddfs_osc_n_11,u_ddfs_osc_n_12,u_ddfs_osc_n_13,u_mapper_qam_n_10}));
  CARRY4 Q_upconverted0__0_carry__0
       (.CI(Q_upconverted0__0_carry_n_0),
        .CO({NLW_Q_upconverted0__0_carry__0_CO_UNCONNECTED[3:2],Q_upconverted0__0_carry__0_n_2,Q_upconverted0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,u_mapper_qam_n_12,u_ddfs_osc_n_25}),
        .O({NLW_Q_upconverted0__0_carry__0_O_UNCONNECTED[3],Q_upconverted0[7:5]}),
        .S({1'b0,1'b1,u_ddfs_osc_n_20,u_ddfs_osc_n_21}));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(u_ddfs_osc_n_23),
        .Q(Q_upconverted[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[1]),
        .Q(Q_upconverted[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[2]),
        .Q(Q_upconverted[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[3]),
        .Q(Q_upconverted[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[4]),
        .Q(Q_upconverted[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[5]),
        .Q(Q_upconverted[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[6]),
        .Q(Q_upconverted[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_upconverted_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q_upconverted0[7]),
        .Q(Q_upconverted[7]));
  ddfs u_ddfs_osc
       (.AR(AR),
        .CLK(CLK),
        .D(u_ddfs_osc_n_22),
        .DI(u_ddfs_osc_n_24),
        .I_symbols(I_symbols),
        .Q(cos_out),
        .Q_symbols(Q_symbols),
        .S({u_ddfs_osc_n_0,u_ddfs_osc_n_1,u_ddfs_osc_n_2}),
        .\cos_out_reg[4]_0 ({u_ddfs_osc_n_9,u_ddfs_osc_n_10}),
        .i_fcw_IBUF(i_fcw_IBUF),
        .\sine_out_reg[0]_0 (u_ddfs_osc_n_23),
        .\sine_out_reg[2]_0 ({u_ddfs_osc_n_11,u_ddfs_osc_n_12,u_ddfs_osc_n_13}),
        .\sine_out_reg[4]_0 ({u_ddfs_osc_n_20,u_ddfs_osc_n_21}),
        .\sine_out_reg[4]_1 (u_ddfs_osc_n_25),
        .\sine_out_reg[5]_0 (sine_out));
  qam_mapper u_mapper_qam
       (.AR(AR),
        .CLK(CLK),
        .DI({u_mapper_qam_n_3,u_mapper_qam_n_4,u_mapper_qam_n_5}),
        .I_symbols(I_symbols),
        .\I_symbols_reg[0]_0 (u_mapper_qam_n_10),
        .\I_symbols_reg[0]_1 (u_mapper_qam_n_11),
        .\I_symbols_reg[0]_2 (u_mapper_qam_n_12),
        .Q(cos_out),
        .Q_symbols(Q_symbols),
        .\Q_symbols_reg[1]_0 ({u_mapper_qam_n_6,u_mapper_qam_n_7,u_mapper_qam_n_8}),
        .\Q_upconverted_reg[7] (sine_out),
        .S(u_mapper_qam_n_9),
        .input_stream(input_stream));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
