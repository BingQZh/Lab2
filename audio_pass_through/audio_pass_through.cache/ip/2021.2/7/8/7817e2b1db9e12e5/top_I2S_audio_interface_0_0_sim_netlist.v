// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Feb 24 12:17:06 2022
// Host        : DESKTOP-HD705MT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_I2S_audio_interface_0_0_sim_netlist.v
// Design      : top_I2S_audio_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2S_audio_interface
   (audio_r_pl,
    audio_l_pl,
    read_states,
    write_states,
    audio_valid_pl,
    sdata_out,
    rst,
    fpga_clk,
    lrclk,
    bclk,
    sdata_in,
    audio_valid_adau,
    audio_l_adau,
    audio_r_adau);
  output [23:0]audio_r_pl;
  output [23:0]audio_l_pl;
  output [2:0]read_states;
  output [2:0]write_states;
  output audio_valid_pl;
  output sdata_out;
  input rst;
  input fpga_clk;
  input lrclk;
  input bclk;
  input sdata_in;
  input audio_valid_adau;
  input [23:0]audio_l_adau;
  input [23:0]audio_r_adau;

  wire BCLK_q2d_1;
  wire BCLK_q2d_2;
  wire BCLK_q2d_3;
  wire \FSM_onehot_ReadState[5]_i_1_n_0 ;
  wire \FSM_onehot_ReadState[5]_i_2_n_0 ;
  wire \FSM_onehot_ReadState[5]_i_3_n_0 ;
  wire \FSM_onehot_ReadState[5]_i_4_n_0 ;
  wire \FSM_onehot_ReadState_reg_n_0_[0] ;
  wire \FSM_onehot_ReadState_reg_n_0_[1] ;
  wire \FSM_onehot_ReadState_reg_n_0_[2] ;
  wire \FSM_onehot_ReadState_reg_n_0_[3] ;
  wire \FSM_onehot_ReadState_reg_n_0_[4] ;
  wire \FSM_onehot_ReadState_reg_n_0_[5] ;
  wire \FSM_onehot_WriteState[5]_i_1_n_0 ;
  wire \FSM_onehot_WriteState[5]_i_2_n_0 ;
  wire \FSM_onehot_WriteState[5]_i_3_n_0 ;
  wire \FSM_onehot_WriteState_reg_n_0_[0] ;
  wire \FSM_onehot_WriteState_reg_n_0_[1] ;
  wire \FSM_onehot_WriteState_reg_n_0_[2] ;
  wire \FSM_onehot_WriteState_reg_n_0_[3] ;
  wire \FSM_onehot_WriteState_reg_n_0_[4] ;
  wire \FSM_onehot_WriteState_reg_n_0_[5] ;
  wire LRCLK_q2d_1;
  wire LRCLK_q2d_2;
  wire LRCLK_q2d_3;
  wire \LeftChannel[0]_i_1_n_0 ;
  wire \LeftChannel[10]_i_1_n_0 ;
  wire \LeftChannel[11]_i_1_n_0 ;
  wire \LeftChannel[12]_i_1_n_0 ;
  wire \LeftChannel[13]_i_1_n_0 ;
  wire \LeftChannel[14]_i_1_n_0 ;
  wire \LeftChannel[15]_i_1_n_0 ;
  wire \LeftChannel[16]_i_1_n_0 ;
  wire \LeftChannel[17]_i_1_n_0 ;
  wire \LeftChannel[18]_i_1_n_0 ;
  wire \LeftChannel[19]_i_1_n_0 ;
  wire \LeftChannel[1]_i_1_n_0 ;
  wire \LeftChannel[20]_i_1_n_0 ;
  wire \LeftChannel[21]_i_1_n_0 ;
  wire \LeftChannel[22]_i_1_n_0 ;
  wire \LeftChannel[23]_i_1_n_0 ;
  wire \LeftChannel[2]_i_1_n_0 ;
  wire \LeftChannel[3]_i_1_n_0 ;
  wire \LeftChannel[4]_i_1_n_0 ;
  wire \LeftChannel[5]_i_1_n_0 ;
  wire \LeftChannel[6]_i_1_n_0 ;
  wire \LeftChannel[7]_i_1_n_0 ;
  wire \LeftChannel[8]_i_1_n_0 ;
  wire \LeftChannel[9]_i_1_n_0 ;
  wire \LeftChannel_reg_n_0_[0] ;
  wire \LeftChannel_reg_n_0_[10] ;
  wire \LeftChannel_reg_n_0_[11] ;
  wire \LeftChannel_reg_n_0_[12] ;
  wire \LeftChannel_reg_n_0_[13] ;
  wire \LeftChannel_reg_n_0_[14] ;
  wire \LeftChannel_reg_n_0_[15] ;
  wire \LeftChannel_reg_n_0_[16] ;
  wire \LeftChannel_reg_n_0_[17] ;
  wire \LeftChannel_reg_n_0_[18] ;
  wire \LeftChannel_reg_n_0_[19] ;
  wire \LeftChannel_reg_n_0_[1] ;
  wire \LeftChannel_reg_n_0_[20] ;
  wire \LeftChannel_reg_n_0_[21] ;
  wire \LeftChannel_reg_n_0_[22] ;
  wire \LeftChannel_reg_n_0_[23] ;
  wire \LeftChannel_reg_n_0_[2] ;
  wire \LeftChannel_reg_n_0_[3] ;
  wire \LeftChannel_reg_n_0_[4] ;
  wire \LeftChannel_reg_n_0_[5] ;
  wire \LeftChannel_reg_n_0_[6] ;
  wire \LeftChannel_reg_n_0_[7] ;
  wire \LeftChannel_reg_n_0_[8] ;
  wire \LeftChannel_reg_n_0_[9] ;
  wire [2:0]ReadState_reg;
  wire \RightChannel[0]_i_1_n_0 ;
  wire \RightChannel[10]_i_1_n_0 ;
  wire \RightChannel[11]_i_1_n_0 ;
  wire \RightChannel[12]_i_1_n_0 ;
  wire \RightChannel[13]_i_1_n_0 ;
  wire \RightChannel[14]_i_1_n_0 ;
  wire \RightChannel[15]_i_1_n_0 ;
  wire \RightChannel[15]_i_2_n_0 ;
  wire \RightChannel[16]_i_1_n_0 ;
  wire \RightChannel[16]_i_2_n_0 ;
  wire \RightChannel[17]_i_1_n_0 ;
  wire \RightChannel[17]_i_2_n_0 ;
  wire \RightChannel[18]_i_1_n_0 ;
  wire \RightChannel[18]_i_2_n_0 ;
  wire \RightChannel[19]_i_1_n_0 ;
  wire \RightChannel[19]_i_2_n_0 ;
  wire \RightChannel[1]_i_1_n_0 ;
  wire \RightChannel[20]_i_1_n_0 ;
  wire \RightChannel[20]_i_2_n_0 ;
  wire \RightChannel[21]_i_1_n_0 ;
  wire \RightChannel[21]_i_2_n_0 ;
  wire \RightChannel[22]_i_1_n_0 ;
  wire \RightChannel[22]_i_2_n_0 ;
  wire \RightChannel[23]_i_10_n_0 ;
  wire \RightChannel[23]_i_1_n_0 ;
  wire \RightChannel[23]_i_2_n_0 ;
  wire \RightChannel[23]_i_3_n_0 ;
  wire \RightChannel[23]_i_4_n_0 ;
  wire \RightChannel[23]_i_5_n_0 ;
  wire \RightChannel[23]_i_6_n_0 ;
  wire \RightChannel[23]_i_7_n_0 ;
  wire \RightChannel[23]_i_8_n_0 ;
  wire \RightChannel[23]_i_9_n_0 ;
  wire \RightChannel[2]_i_1_n_0 ;
  wire \RightChannel[3]_i_1_n_0 ;
  wire \RightChannel[4]_i_1_n_0 ;
  wire \RightChannel[5]_i_1_n_0 ;
  wire \RightChannel[6]_i_1_n_0 ;
  wire \RightChannel[7]_i_1_n_0 ;
  wire \RightChannel[7]_i_2_n_0 ;
  wire \RightChannel[8]_i_1_n_0 ;
  wire \RightChannel[9]_i_1_n_0 ;
  wire \RightChannel_reg_n_0_[0] ;
  wire \RightChannel_reg_n_0_[10] ;
  wire \RightChannel_reg_n_0_[11] ;
  wire \RightChannel_reg_n_0_[12] ;
  wire \RightChannel_reg_n_0_[13] ;
  wire \RightChannel_reg_n_0_[14] ;
  wire \RightChannel_reg_n_0_[15] ;
  wire \RightChannel_reg_n_0_[16] ;
  wire \RightChannel_reg_n_0_[17] ;
  wire \RightChannel_reg_n_0_[18] ;
  wire \RightChannel_reg_n_0_[19] ;
  wire \RightChannel_reg_n_0_[1] ;
  wire \RightChannel_reg_n_0_[20] ;
  wire \RightChannel_reg_n_0_[21] ;
  wire \RightChannel_reg_n_0_[22] ;
  wire \RightChannel_reg_n_0_[23] ;
  wire \RightChannel_reg_n_0_[2] ;
  wire \RightChannel_reg_n_0_[3] ;
  wire \RightChannel_reg_n_0_[4] ;
  wire \RightChannel_reg_n_0_[5] ;
  wire \RightChannel_reg_n_0_[6] ;
  wire \RightChannel_reg_n_0_[7] ;
  wire \RightChannel_reg_n_0_[8] ;
  wire \RightChannel_reg_n_0_[9] ;
  wire SDin_q2d_1;
  wire SDin_q2d_2;
  wire SDin_q2d_3;
  wire WriteState1;
  wire [2:0]WriteState_reg;
  wire [23:0]audio_l_adau;
  wire [23:0]audio_l_pl;
  wire [23:0]audio_r_adau;
  wire [23:0]audio_r_pl;
  wire \audio_r_pl[23]_i_1_n_0 ;
  wire audio_valid_adau;
  wire audio_valid_pl;
  wire audio_valid_pl_i_1_n_0;
  wire audio_valid_pl_i_2_n_0;
  wire bclk;
  wire fpga_clk;
  wire [31:0]i;
  wire i0_carry__0_i_1_n_0;
  wire i0_carry__0_i_2_n_0;
  wire i0_carry__0_i_3_n_0;
  wire i0_carry__0_i_4_n_0;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__1_i_1_n_0;
  wire i0_carry__1_i_2_n_0;
  wire i0_carry__1_i_3_n_0;
  wire i0_carry__1_i_4_n_0;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__2_i_1_n_0;
  wire i0_carry__2_i_2_n_0;
  wire i0_carry__2_i_3_n_0;
  wire i0_carry__2_i_4_n_0;
  wire i0_carry__2_n_0;
  wire i0_carry__2_n_1;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry__3_i_1_n_0;
  wire i0_carry__3_i_2_n_0;
  wire i0_carry__3_i_3_n_0;
  wire i0_carry__3_i_4_n_0;
  wire i0_carry__3_n_0;
  wire i0_carry__3_n_1;
  wire i0_carry__3_n_2;
  wire i0_carry__3_n_3;
  wire i0_carry__4_i_1_n_0;
  wire i0_carry__4_i_2_n_0;
  wire i0_carry__4_i_3_n_0;
  wire i0_carry__4_i_4_n_0;
  wire i0_carry__4_n_0;
  wire i0_carry__4_n_1;
  wire i0_carry__4_n_2;
  wire i0_carry__4_n_3;
  wire i0_carry__5_i_1_n_0;
  wire i0_carry__5_i_2_n_0;
  wire i0_carry__5_i_3_n_0;
  wire i0_carry__5_i_4_n_0;
  wire i0_carry__5_n_0;
  wire i0_carry__5_n_1;
  wire i0_carry__5_n_2;
  wire i0_carry__5_n_3;
  wire i0_carry__6_i_1_n_0;
  wire i0_carry__6_i_2_n_0;
  wire i0_carry__6_i_3_n_0;
  wire i0_carry__6_n_2;
  wire i0_carry__6_n_3;
  wire i0_carry_i_1_n_0;
  wire i0_carry_i_2_n_0;
  wire i0_carry_i_3_n_0;
  wire i0_carry_i_4_n_0;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire \i[0]_i_1_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_1_n_0 ;
  wire \i[16]_i_1_n_0 ;
  wire \i[17]_i_1_n_0 ;
  wire \i[18]_i_1_n_0 ;
  wire \i[19]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[20]_i_1_n_0 ;
  wire \i[21]_i_1_n_0 ;
  wire \i[22]_i_1_n_0 ;
  wire \i[23]_i_1_n_0 ;
  wire \i[24]_i_1_n_0 ;
  wire \i[25]_i_1_n_0 ;
  wire \i[26]_i_1_n_0 ;
  wire \i[27]_i_1_n_0 ;
  wire \i[28]_i_1_n_0 ;
  wire \i[29]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[30]_i_1_n_0 ;
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_2_n_0 ;
  wire \i[31]_i_3_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire [31:1]in6;
  wire [31:1]in8;
  wire lrclk;
  wire [31:0]o;
  wire o0_carry__0_i_1_n_0;
  wire o0_carry__0_i_2_n_0;
  wire o0_carry__0_i_3_n_0;
  wire o0_carry__0_i_4_n_0;
  wire o0_carry__0_n_0;
  wire o0_carry__0_n_1;
  wire o0_carry__0_n_2;
  wire o0_carry__0_n_3;
  wire o0_carry__1_i_1_n_0;
  wire o0_carry__1_i_2_n_0;
  wire o0_carry__1_i_3_n_0;
  wire o0_carry__1_i_4_n_0;
  wire o0_carry__1_n_0;
  wire o0_carry__1_n_1;
  wire o0_carry__1_n_2;
  wire o0_carry__1_n_3;
  wire o0_carry__2_i_1_n_0;
  wire o0_carry__2_i_2_n_0;
  wire o0_carry__2_i_3_n_0;
  wire o0_carry__2_i_4_n_0;
  wire o0_carry__2_n_0;
  wire o0_carry__2_n_1;
  wire o0_carry__2_n_2;
  wire o0_carry__2_n_3;
  wire o0_carry__3_i_1_n_0;
  wire o0_carry__3_i_2_n_0;
  wire o0_carry__3_i_3_n_0;
  wire o0_carry__3_i_4_n_0;
  wire o0_carry__3_n_0;
  wire o0_carry__3_n_1;
  wire o0_carry__3_n_2;
  wire o0_carry__3_n_3;
  wire o0_carry__4_i_1_n_0;
  wire o0_carry__4_i_2_n_0;
  wire o0_carry__4_i_3_n_0;
  wire o0_carry__4_i_4_n_0;
  wire o0_carry__4_n_0;
  wire o0_carry__4_n_1;
  wire o0_carry__4_n_2;
  wire o0_carry__4_n_3;
  wire o0_carry__5_i_1_n_0;
  wire o0_carry__5_i_2_n_0;
  wire o0_carry__5_i_3_n_0;
  wire o0_carry__5_i_4_n_0;
  wire o0_carry__5_n_0;
  wire o0_carry__5_n_1;
  wire o0_carry__5_n_2;
  wire o0_carry__5_n_3;
  wire o0_carry__6_i_2_n_0;
  wire o0_carry__6_i_3_n_0;
  wire o0_carry__6_n_2;
  wire o0_carry__6_n_3;
  wire o0_carry_i_1_n_0;
  wire o0_carry_i_2_n_0;
  wire o0_carry_i_3_n_0;
  wire o0_carry_i_4_n_0;
  wire o0_carry_n_0;
  wire o0_carry_n_1;
  wire o0_carry_n_2;
  wire o0_carry_n_3;
  wire \o[0]_i_1_n_0 ;
  wire \o[10]_i_1_n_0 ;
  wire \o[11]_i_1_n_0 ;
  wire \o[12]_i_1_n_0 ;
  wire \o[13]_i_1_n_0 ;
  wire \o[14]_i_1_n_0 ;
  wire \o[15]_i_1_n_0 ;
  wire \o[16]_i_1_n_0 ;
  wire \o[17]_i_1_n_0 ;
  wire \o[18]_i_1_n_0 ;
  wire \o[19]_i_1_n_0 ;
  wire \o[1]_i_1_n_0 ;
  wire \o[20]_i_1_n_0 ;
  wire \o[21]_i_1_n_0 ;
  wire \o[22]_i_1_n_0 ;
  wire \o[23]_i_1_n_0 ;
  wire \o[24]_i_1_n_0 ;
  wire \o[25]_i_1_n_0 ;
  wire \o[26]_i_1_n_0 ;
  wire \o[27]_i_1_n_0 ;
  wire \o[28]_i_1_n_0 ;
  wire \o[29]_i_1_n_0 ;
  wire \o[2]_i_1_n_0 ;
  wire \o[30]_i_1_n_0 ;
  wire \o[31]_i_2_n_0 ;
  wire \o[31]_i_3_n_0 ;
  wire \o[3]_i_1_n_0 ;
  wire \o[4]_i_1_n_0 ;
  wire \o[5]_i_1_n_0 ;
  wire \o[6]_i_1_n_0 ;
  wire \o[7]_i_1_n_0 ;
  wire \o[8]_i_1_n_0 ;
  wire \o[9]_i_1_n_0 ;
  wire o_0;
  wire [2:0]read_states;
  wire rst;
  wire sdata_in;
  wire sdata_out;
  wire sdata_out_i_11_n_0;
  wire sdata_out_i_12_n_0;
  wire sdata_out_i_13_n_0;
  wire sdata_out_i_14_n_0;
  wire sdata_out_i_15_n_0;
  wire sdata_out_i_16_n_0;
  wire sdata_out_i_17_n_0;
  wire sdata_out_i_18_n_0;
  wire sdata_out_i_19_n_0;
  wire sdata_out_i_1_n_0;
  wire sdata_out_i_20_n_0;
  wire sdata_out_i_21_n_0;
  wire sdata_out_i_22_n_0;
  wire sdata_out_i_2_n_0;
  wire sdata_out_i_3_n_0;
  wire sdata_out_i_4_n_0;
  wire sdata_out_reg_i_10_n_0;
  wire sdata_out_reg_i_5_n_0;
  wire sdata_out_reg_i_6_n_0;
  wire sdata_out_reg_i_7_n_0;
  wire sdata_out_reg_i_8_n_0;
  wire sdata_out_reg_i_9_n_0;
  wire validSDin;
  wire [2:0]write_states;
  wire [3:2]NLW_i0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_i0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_o0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_o0_carry__6_O_UNCONNECTED;

  FDRE BCLK_q2d_1_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(bclk),
        .Q(BCLK_q2d_1),
        .R(rst));
  FDRE BCLK_q2d_2_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_q2d_1),
        .Q(BCLK_q2d_2),
        .R(rst));
  FDRE BCLK_q2d_3_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_q2d_2),
        .Q(BCLK_q2d_3),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200000)) 
    \FSM_onehot_ReadState[5]_i_1 
       (.I0(BCLK_q2d_2),
        .I1(BCLK_q2d_3),
        .I2(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(i[31]),
        .I5(\FSM_onehot_ReadState[5]_i_2_n_0 ),
        .O(\FSM_onehot_ReadState[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0303ABABFF030303)) 
    \FSM_onehot_ReadState[5]_i_2 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .I1(\FSM_onehot_ReadState[5]_i_3_n_0 ),
        .I2(\FSM_onehot_ReadState[5]_i_4_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .I4(LRCLK_q2d_2),
        .I5(LRCLK_q2d_3),
        .O(\FSM_onehot_ReadState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_ReadState[5]_i_3 
       (.I0(BCLK_q2d_3),
        .I1(BCLK_q2d_2),
        .O(\FSM_onehot_ReadState[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_ReadState[5]_i_4 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .O(\FSM_onehot_ReadState[5]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_ReadState_reg[0] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ReadState_reg[1] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ReadState_reg[2] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ReadState_reg[3] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ReadState_reg[4] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,readleft:000100,endleft:001000,startright:010000,readright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ReadState_reg[5] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_ReadState[5]_i_1_n_0 ),
        .D(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .Q(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200000)) 
    \FSM_onehot_WriteState[5]_i_1 
       (.I0(BCLK_q2d_3),
        .I1(BCLK_q2d_2),
        .I2(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I3(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I4(o[31]),
        .I5(\FSM_onehot_WriteState[5]_i_2_n_0 ),
        .O(\FSM_onehot_WriteState[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38080808)) 
    \FSM_onehot_WriteState[5]_i_2 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .I1(LRCLK_q2d_2),
        .I2(LRCLK_q2d_3),
        .I3(\FSM_onehot_WriteState_reg_n_0_[0] ),
        .I4(audio_valid_adau),
        .I5(\FSM_onehot_WriteState[5]_i_3_n_0 ),
        .O(\FSM_onehot_WriteState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \FSM_onehot_WriteState[5]_i_3 
       (.I0(BCLK_q2d_2),
        .I1(BCLK_q2d_3),
        .I2(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I3(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(\FSM_onehot_WriteState[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_WriteState_reg[0] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WriteState_reg[1] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[0] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WriteState_reg[2] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WriteState_reg[3] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WriteState_reg[4] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "initial:000001,startleft:000010,writeleft:000100,endleft:001000,startright:010000,writeright:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WriteState_reg[5] 
       (.C(fpga_clk),
        .CE(\FSM_onehot_WriteState[5]_i_1_n_0 ),
        .D(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .Q(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .R(rst));
  FDRE LRCLK_q2d_1_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(lrclk),
        .Q(LRCLK_q2d_1),
        .R(rst));
  FDRE LRCLK_q2d_2_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(LRCLK_q2d_1),
        .Q(LRCLK_q2d_2),
        .R(rst));
  FDRE LRCLK_q2d_3_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(LRCLK_q2d_2),
        .Q(LRCLK_q2d_3),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[0]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[16]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[0] ),
        .O(\LeftChannel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[10]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[18]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[10] ),
        .O(\LeftChannel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[11]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[19]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[11] ),
        .O(\LeftChannel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[12]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[20]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[12] ),
        .O(\LeftChannel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[13]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[21]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[13] ),
        .O(\LeftChannel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[14]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[22]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[14] ),
        .O(\LeftChannel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[15]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[15] ),
        .O(\LeftChannel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[16]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[16]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[16] ),
        .O(\LeftChannel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[17]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[17]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[17] ),
        .O(\LeftChannel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[18]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[18]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[18] ),
        .O(\LeftChannel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[19]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[19]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[19] ),
        .O(\LeftChannel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[1]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[17]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[1] ),
        .O(\LeftChannel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[20]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[20]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[20] ),
        .O(\LeftChannel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[21]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[21]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[21] ),
        .O(\LeftChannel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[22]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[22]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[22] ),
        .O(\LeftChannel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \LeftChannel[23]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[23]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[23] ),
        .O(\LeftChannel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[2]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[18]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[2] ),
        .O(\LeftChannel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[3]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[19]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[3] ),
        .O(\LeftChannel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[4]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[20]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[4] ),
        .O(\LeftChannel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[5]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[21]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[5] ),
        .O(\LeftChannel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[6]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[22]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[6] ),
        .O(\LeftChannel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[7]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[7]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[7] ),
        .O(\LeftChannel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[8]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[16]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[8] ),
        .O(\LeftChannel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \LeftChannel[9]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[15]_i_2_n_0 ),
        .I2(\RightChannel[17]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[9] ),
        .O(\LeftChannel[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[0]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[10] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[10]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[11] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[11]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[12] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[12]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[13] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[13]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[14] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[14]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[15] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[15]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[16] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[16]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[17] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[17]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[18] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[18]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[19] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[19]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[1]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[20] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[20]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[21] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[21]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[22] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[22]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[23] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[23]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[2]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[3] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[3]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[4] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[4]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[5] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[5]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[6] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[6]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[7] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[7]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[8] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[8]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LeftChannel_reg[9] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[9]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[0]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[16]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[0] ),
        .O(\RightChannel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[10]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[18]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[10] ),
        .O(\RightChannel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[11]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[19]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[11] ),
        .O(\RightChannel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[12]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[20]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[12] ),
        .O(\RightChannel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[13]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[21]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[13] ),
        .O(\RightChannel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[14]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[22]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[14] ),
        .O(\RightChannel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[15]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[15] ),
        .O(\RightChannel[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \RightChannel[15]_i_2 
       (.I0(\RightChannel[23]_i_6_n_0 ),
        .I1(\RightChannel[23]_i_5_n_0 ),
        .I2(\RightChannel[23]_i_4_n_0 ),
        .I3(i[4]),
        .I4(i[3]),
        .O(\RightChannel[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[16]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[16]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[16] ),
        .O(\RightChannel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \RightChannel[16]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[31]),
        .I3(BCLK_q2d_2),
        .I4(BCLK_q2d_3),
        .I5(i[2]),
        .O(\RightChannel[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[17]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[17]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[17] ),
        .O(\RightChannel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \RightChannel[17]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[31]),
        .I3(BCLK_q2d_2),
        .I4(BCLK_q2d_3),
        .I5(i[2]),
        .O(\RightChannel[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[18]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[18]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[18] ),
        .O(\RightChannel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \RightChannel[18]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[31]),
        .I3(BCLK_q2d_2),
        .I4(BCLK_q2d_3),
        .I5(i[2]),
        .O(\RightChannel[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[19]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[19]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[19] ),
        .O(\RightChannel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \RightChannel[19]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[31]),
        .I3(BCLK_q2d_2),
        .I4(BCLK_q2d_3),
        .I5(i[2]),
        .O(\RightChannel[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[1]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[17]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[1] ),
        .O(\RightChannel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[20]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[20]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[20] ),
        .O(\RightChannel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \RightChannel[20]_i_2 
       (.I0(i[2]),
        .I1(i[31]),
        .I2(BCLK_q2d_2),
        .I3(BCLK_q2d_3),
        .I4(i[0]),
        .I5(i[1]),
        .O(\RightChannel[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[21]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[21]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[21] ),
        .O(\RightChannel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \RightChannel[21]_i_2 
       (.I0(i[2]),
        .I1(i[31]),
        .I2(BCLK_q2d_2),
        .I3(BCLK_q2d_3),
        .I4(i[0]),
        .I5(i[1]),
        .O(\RightChannel[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[22]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[22]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_3_n_0 ),
        .I5(\RightChannel_reg_n_0_[22] ),
        .O(\RightChannel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \RightChannel[22]_i_2 
       (.I0(i[2]),
        .I1(i[31]),
        .I2(BCLK_q2d_2),
        .I3(BCLK_q2d_3),
        .I4(i[1]),
        .I5(i[0]),
        .O(\RightChannel[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \RightChannel[23]_i_1 
       (.I0(validSDin),
        .I1(\RightChannel[23]_i_2_n_0 ),
        .I2(\RightChannel[23]_i_3_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I5(\RightChannel_reg_n_0_[23] ),
        .O(\RightChannel[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_10 
       (.I0(i[27]),
        .I1(i[30]),
        .I2(i[21]),
        .I3(i[26]),
        .O(\RightChannel[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \RightChannel[23]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[31]),
        .I4(BCLK_q2d_2),
        .I5(BCLK_q2d_3),
        .O(\RightChannel[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \RightChannel[23]_i_3 
       (.I0(\RightChannel[23]_i_4_n_0 ),
        .I1(\RightChannel[23]_i_5_n_0 ),
        .I2(\RightChannel[23]_i_6_n_0 ),
        .I3(i[4]),
        .I4(i[3]),
        .O(\RightChannel[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RightChannel[23]_i_4 
       (.I0(i[6]),
        .I1(i[5]),
        .I2(i[15]),
        .I3(i[14]),
        .I4(\RightChannel[23]_i_7_n_0 ),
        .O(\RightChannel[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RightChannel[23]_i_5 
       (.I0(i[25]),
        .I1(i[7]),
        .I2(i[18]),
        .I3(i[17]),
        .I4(\RightChannel[23]_i_8_n_0 ),
        .O(\RightChannel[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RightChannel[23]_i_6 
       (.I0(i[19]),
        .I1(i[13]),
        .I2(i[28]),
        .I3(\RightChannel[23]_i_9_n_0 ),
        .I4(\RightChannel[23]_i_10_n_0 ),
        .O(\RightChannel[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_7 
       (.I0(i[22]),
        .I1(i[23]),
        .I2(i[16]),
        .I3(i[31]),
        .O(\RightChannel[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_8 
       (.I0(i[10]),
        .I1(i[29]),
        .I2(i[12]),
        .I3(i[20]),
        .O(\RightChannel[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_9 
       (.I0(i[8]),
        .I1(i[9]),
        .I2(i[11]),
        .I3(i[24]),
        .O(\RightChannel[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[2]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[18]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[2] ),
        .O(\RightChannel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[3]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[19]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[3] ),
        .O(\RightChannel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[4]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[20]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[4] ),
        .O(\RightChannel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[5]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[21]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[5] ),
        .O(\RightChannel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[6]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[22]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[6] ),
        .O(\RightChannel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[7]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[7]_i_2_n_0 ),
        .I4(\RightChannel[23]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[7] ),
        .O(\RightChannel[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RightChannel[7]_i_2 
       (.I0(i[3]),
        .I1(\RightChannel[23]_i_6_n_0 ),
        .I2(\RightChannel[23]_i_5_n_0 ),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(i[4]),
        .O(\RightChannel[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[8]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[16]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[8] ),
        .O(\RightChannel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \RightChannel[9]_i_1 
       (.I0(validSDin),
        .I1(rst),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\RightChannel[15]_i_2_n_0 ),
        .I4(\RightChannel[17]_i_2_n_0 ),
        .I5(\RightChannel_reg_n_0_[9] ),
        .O(\RightChannel[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[0]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[10] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[10]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[11] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[11]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[12] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[12]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[13] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[13]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[14] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[14]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[15] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[15]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[16] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[16]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[17] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[17]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[18] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[18]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[19] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[19]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[1]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[20] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[20]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[21] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[21]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[22] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[22]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[23] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[23]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[2]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[3] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[3]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[4] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[4]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[5] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[5]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[6] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[6]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[7] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[7]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[8] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[8]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RightChannel_reg[9] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[9]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[9] ),
        .R(1'b0));
  FDRE SDin_q2d_1_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(sdata_in),
        .Q(SDin_q2d_1),
        .R(rst));
  FDRE SDin_q2d_2_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(SDin_q2d_1),
        .Q(SDin_q2d_2),
        .R(rst));
  FDRE SDin_q2d_3_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(SDin_q2d_2),
        .Q(SDin_q2d_3),
        .R(rst));
  FDRE \audio_l_pl_reg[0] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[0] ),
        .Q(audio_l_pl[0]),
        .R(rst));
  FDRE \audio_l_pl_reg[10] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[10] ),
        .Q(audio_l_pl[10]),
        .R(rst));
  FDRE \audio_l_pl_reg[11] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[11] ),
        .Q(audio_l_pl[11]),
        .R(rst));
  FDRE \audio_l_pl_reg[12] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[12] ),
        .Q(audio_l_pl[12]),
        .R(rst));
  FDRE \audio_l_pl_reg[13] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[13] ),
        .Q(audio_l_pl[13]),
        .R(rst));
  FDRE \audio_l_pl_reg[14] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[14] ),
        .Q(audio_l_pl[14]),
        .R(rst));
  FDRE \audio_l_pl_reg[15] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[15] ),
        .Q(audio_l_pl[15]),
        .R(rst));
  FDRE \audio_l_pl_reg[16] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[16] ),
        .Q(audio_l_pl[16]),
        .R(rst));
  FDRE \audio_l_pl_reg[17] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[17] ),
        .Q(audio_l_pl[17]),
        .R(rst));
  FDRE \audio_l_pl_reg[18] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[18] ),
        .Q(audio_l_pl[18]),
        .R(rst));
  FDRE \audio_l_pl_reg[19] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[19] ),
        .Q(audio_l_pl[19]),
        .R(rst));
  FDRE \audio_l_pl_reg[1] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[1] ),
        .Q(audio_l_pl[1]),
        .R(rst));
  FDRE \audio_l_pl_reg[20] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[20] ),
        .Q(audio_l_pl[20]),
        .R(rst));
  FDRE \audio_l_pl_reg[21] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[21] ),
        .Q(audio_l_pl[21]),
        .R(rst));
  FDRE \audio_l_pl_reg[22] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[22] ),
        .Q(audio_l_pl[22]),
        .R(rst));
  FDRE \audio_l_pl_reg[23] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[23] ),
        .Q(audio_l_pl[23]),
        .R(rst));
  FDRE \audio_l_pl_reg[2] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[2] ),
        .Q(audio_l_pl[2]),
        .R(rst));
  FDRE \audio_l_pl_reg[3] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[3] ),
        .Q(audio_l_pl[3]),
        .R(rst));
  FDRE \audio_l_pl_reg[4] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[4] ),
        .Q(audio_l_pl[4]),
        .R(rst));
  FDRE \audio_l_pl_reg[5] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[5] ),
        .Q(audio_l_pl[5]),
        .R(rst));
  FDRE \audio_l_pl_reg[6] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[6] ),
        .Q(audio_l_pl[6]),
        .R(rst));
  FDRE \audio_l_pl_reg[7] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[7] ),
        .Q(audio_l_pl[7]),
        .R(rst));
  FDRE \audio_l_pl_reg[8] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[8] ),
        .Q(audio_l_pl[8]),
        .R(rst));
  FDRE \audio_l_pl_reg[9] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[9] ),
        .Q(audio_l_pl[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'h4000)) 
    \audio_r_pl[23]_i_1 
       (.I0(BCLK_q2d_3),
        .I1(BCLK_q2d_2),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(i[31]),
        .O(\audio_r_pl[23]_i_1_n_0 ));
  FDRE \audio_r_pl_reg[0] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[0] ),
        .Q(audio_r_pl[0]),
        .R(rst));
  FDRE \audio_r_pl_reg[10] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[10] ),
        .Q(audio_r_pl[10]),
        .R(rst));
  FDRE \audio_r_pl_reg[11] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[11] ),
        .Q(audio_r_pl[11]),
        .R(rst));
  FDRE \audio_r_pl_reg[12] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[12] ),
        .Q(audio_r_pl[12]),
        .R(rst));
  FDRE \audio_r_pl_reg[13] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[13] ),
        .Q(audio_r_pl[13]),
        .R(rst));
  FDRE \audio_r_pl_reg[14] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[14] ),
        .Q(audio_r_pl[14]),
        .R(rst));
  FDRE \audio_r_pl_reg[15] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[15] ),
        .Q(audio_r_pl[15]),
        .R(rst));
  FDRE \audio_r_pl_reg[16] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[16] ),
        .Q(audio_r_pl[16]),
        .R(rst));
  FDRE \audio_r_pl_reg[17] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[17] ),
        .Q(audio_r_pl[17]),
        .R(rst));
  FDRE \audio_r_pl_reg[18] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[18] ),
        .Q(audio_r_pl[18]),
        .R(rst));
  FDRE \audio_r_pl_reg[19] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[19] ),
        .Q(audio_r_pl[19]),
        .R(rst));
  FDRE \audio_r_pl_reg[1] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[1] ),
        .Q(audio_r_pl[1]),
        .R(rst));
  FDRE \audio_r_pl_reg[20] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[20] ),
        .Q(audio_r_pl[20]),
        .R(rst));
  FDRE \audio_r_pl_reg[21] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[21] ),
        .Q(audio_r_pl[21]),
        .R(rst));
  FDRE \audio_r_pl_reg[22] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[22] ),
        .Q(audio_r_pl[22]),
        .R(rst));
  FDRE \audio_r_pl_reg[23] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[23] ),
        .Q(audio_r_pl[23]),
        .R(rst));
  FDRE \audio_r_pl_reg[2] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[2] ),
        .Q(audio_r_pl[2]),
        .R(rst));
  FDRE \audio_r_pl_reg[3] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[3] ),
        .Q(audio_r_pl[3]),
        .R(rst));
  FDRE \audio_r_pl_reg[4] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[4] ),
        .Q(audio_r_pl[4]),
        .R(rst));
  FDRE \audio_r_pl_reg[5] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[5] ),
        .Q(audio_r_pl[5]),
        .R(rst));
  FDRE \audio_r_pl_reg[6] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[6] ),
        .Q(audio_r_pl[6]),
        .R(rst));
  FDRE \audio_r_pl_reg[7] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[7] ),
        .Q(audio_r_pl[7]),
        .R(rst));
  FDRE \audio_r_pl_reg[8] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[8] ),
        .Q(audio_r_pl[8]),
        .R(rst));
  FDRE \audio_r_pl_reg[9] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[9] ),
        .Q(audio_r_pl[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00C0FFFF00C00080)) 
    audio_valid_pl_i_1
       (.I0(i[31]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I2(BCLK_q2d_2),
        .I3(BCLK_q2d_3),
        .I4(audio_valid_pl_i_2_n_0),
        .I5(audio_valid_pl),
        .O(audio_valid_pl_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    audio_valid_pl_i_2
       (.I0(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .I1(LRCLK_q2d_2),
        .I2(LRCLK_q2d_3),
        .O(audio_valid_pl_i_2_n_0));
  FDRE audio_valid_pl_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(audio_valid_pl_i_1_n_0),
        .Q(audio_valid_pl),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(i[0]),
        .DI(i[4:1]),
        .O(in6[4:1]),
        .S({i0_carry_i_1_n_0,i0_carry_i_2_n_0,i0_carry_i_3_n_0,i0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(i[8:5]),
        .O(in6[8:5]),
        .S({i0_carry__0_i_1_n_0,i0_carry__0_i_2_n_0,i0_carry__0_i_3_n_0,i0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_1
       (.I0(i[8]),
        .O(i0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_2
       (.I0(i[7]),
        .O(i0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_3
       (.I0(i[6]),
        .O(i0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_4
       (.I0(i[5]),
        .O(i0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(i[12:9]),
        .O(in6[12:9]),
        .S({i0_carry__1_i_1_n_0,i0_carry__1_i_2_n_0,i0_carry__1_i_3_n_0,i0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_1
       (.I0(i[12]),
        .O(i0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_2
       (.I0(i[11]),
        .O(i0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_3
       (.I0(i[10]),
        .O(i0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_4
       (.I0(i[9]),
        .O(i0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(i[16:13]),
        .O(in6[16:13]),
        .S({i0_carry__2_i_1_n_0,i0_carry__2_i_2_n_0,i0_carry__2_i_3_n_0,i0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_1
       (.I0(i[16]),
        .O(i0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_2
       (.I0(i[15]),
        .O(i0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_3
       (.I0(i[14]),
        .O(i0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_4
       (.I0(i[13]),
        .O(i0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,i0_carry__3_n_1,i0_carry__3_n_2,i0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(i[20:17]),
        .O(in6[20:17]),
        .S({i0_carry__3_i_1_n_0,i0_carry__3_i_2_n_0,i0_carry__3_i_3_n_0,i0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_1
       (.I0(i[20]),
        .O(i0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_2
       (.I0(i[19]),
        .O(i0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_3
       (.I0(i[18]),
        .O(i0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_4
       (.I0(i[17]),
        .O(i0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CO({i0_carry__4_n_0,i0_carry__4_n_1,i0_carry__4_n_2,i0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(i[24:21]),
        .O(in6[24:21]),
        .S({i0_carry__4_i_1_n_0,i0_carry__4_i_2_n_0,i0_carry__4_i_3_n_0,i0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_1
       (.I0(i[24]),
        .O(i0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_2
       (.I0(i[23]),
        .O(i0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_3
       (.I0(i[22]),
        .O(i0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_4
       (.I0(i[21]),
        .O(i0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__5
       (.CI(i0_carry__4_n_0),
        .CO({i0_carry__5_n_0,i0_carry__5_n_1,i0_carry__5_n_2,i0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(i[28:25]),
        .O(in6[28:25]),
        .S({i0_carry__5_i_1_n_0,i0_carry__5_i_2_n_0,i0_carry__5_i_3_n_0,i0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_1
       (.I0(i[28]),
        .O(i0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_2
       (.I0(i[27]),
        .O(i0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_3
       (.I0(i[26]),
        .O(i0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_4
       (.I0(i[25]),
        .O(i0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__6
       (.CI(i0_carry__5_n_0),
        .CO({NLW_i0_carry__6_CO_UNCONNECTED[3:2],i0_carry__6_n_2,i0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i[30:29]}),
        .O({NLW_i0_carry__6_O_UNCONNECTED[3],in6[31:29]}),
        .S({1'b0,i0_carry__6_i_1_n_0,i0_carry__6_i_2_n_0,i0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_1
       (.I0(i[31]),
        .O(i0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_2
       (.I0(i[30]),
        .O(i0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_3
       (.I0(i[29]),
        .O(i0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_1
       (.I0(i[4]),
        .O(i0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_2
       (.I0(i[3]),
        .O(i0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_3
       (.I0(i[2]),
        .O(i0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_4
       (.I0(i[1]),
        .O(i0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    \i[0]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(i[0]),
        .I3(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I4(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[10]_i_1 
       (.I0(in6[10]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[11]_i_1 
       (.I0(in6[11]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[12]_i_1 
       (.I0(in6[12]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[13]_i_1 
       (.I0(in6[13]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[14]_i_1 
       (.I0(in6[14]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[15]_i_1 
       (.I0(in6[15]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[16]_i_1 
       (.I0(in6[16]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[17]_i_1 
       (.I0(in6[17]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[18]_i_1 
       (.I0(in6[18]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[19]_i_1 
       (.I0(in6[19]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \i[1]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(in6[1]),
        .I3(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I4(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[20]_i_1 
       (.I0(in6[20]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[21]_i_1 
       (.I0(in6[21]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[22]_i_1 
       (.I0(in6[22]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[23]_i_1 
       (.I0(in6[23]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[24]_i_1 
       (.I0(in6[24]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[25]_i_1 
       (.I0(in6[25]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[26]_i_1 
       (.I0(in6[26]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[27]_i_1 
       (.I0(in6[27]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[28]_i_1 
       (.I0(in6[28]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[29]_i_1 
       (.I0(in6[29]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \i[2]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(in6[2]),
        .I3(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I4(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[30]_i_1 
       (.I0(in6[30]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E000E000E000F0)) 
    \i[31]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I2(BCLK_q2d_2),
        .I3(BCLK_q2d_3),
        .I4(\i[31]_i_3_n_0 ),
        .I5(i[31]),
        .O(\i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[31]_i_2 
       (.I0(in6[31]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_3 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .O(\i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[3]_i_1 
       (.I0(in6[3]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \i[4]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(in6[4]),
        .I3(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I4(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[5]_i_1 
       (.I0(in6[5]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[6]_i_1 
       (.I0(in6[6]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[7]_i_1 
       (.I0(in6[7]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[8]_i_1 
       (.I0(in6[8]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \i[9]_i_1 
       (.I0(in6[9]),
        .I1(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(\i[9]_i_1_n_0 ));
  FDRE \i_reg[0] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(rst));
  FDRE \i_reg[10] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[10]_i_1_n_0 ),
        .Q(i[10]),
        .R(rst));
  FDRE \i_reg[11] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[11]_i_1_n_0 ),
        .Q(i[11]),
        .R(rst));
  FDRE \i_reg[12] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[12]_i_1_n_0 ),
        .Q(i[12]),
        .R(rst));
  FDRE \i_reg[13] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[13]_i_1_n_0 ),
        .Q(i[13]),
        .R(rst));
  FDRE \i_reg[14] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[14]_i_1_n_0 ),
        .Q(i[14]),
        .R(rst));
  FDRE \i_reg[15] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[15]_i_1_n_0 ),
        .Q(i[15]),
        .R(rst));
  FDRE \i_reg[16] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[16]_i_1_n_0 ),
        .Q(i[16]),
        .R(rst));
  FDRE \i_reg[17] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[17]_i_1_n_0 ),
        .Q(i[17]),
        .R(rst));
  FDRE \i_reg[18] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[18]_i_1_n_0 ),
        .Q(i[18]),
        .R(rst));
  FDRE \i_reg[19] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[19]_i_1_n_0 ),
        .Q(i[19]),
        .R(rst));
  FDRE \i_reg[1] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(rst));
  FDRE \i_reg[20] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[20]_i_1_n_0 ),
        .Q(i[20]),
        .R(rst));
  FDRE \i_reg[21] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[21]_i_1_n_0 ),
        .Q(i[21]),
        .R(rst));
  FDRE \i_reg[22] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[22]_i_1_n_0 ),
        .Q(i[22]),
        .R(rst));
  FDRE \i_reg[23] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[23]_i_1_n_0 ),
        .Q(i[23]),
        .R(rst));
  FDRE \i_reg[24] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[24]_i_1_n_0 ),
        .Q(i[24]),
        .R(rst));
  FDRE \i_reg[25] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[25]_i_1_n_0 ),
        .Q(i[25]),
        .R(rst));
  FDRE \i_reg[26] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[26]_i_1_n_0 ),
        .Q(i[26]),
        .R(rst));
  FDRE \i_reg[27] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[27]_i_1_n_0 ),
        .Q(i[27]),
        .R(rst));
  FDRE \i_reg[28] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[28]_i_1_n_0 ),
        .Q(i[28]),
        .R(rst));
  FDRE \i_reg[29] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[29]_i_1_n_0 ),
        .Q(i[29]),
        .R(rst));
  FDRE \i_reg[2] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(rst));
  FDRE \i_reg[30] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[30]_i_1_n_0 ),
        .Q(i[30]),
        .R(rst));
  FDRE \i_reg[31] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[31]_i_2_n_0 ),
        .Q(i[31]),
        .R(rst));
  FDRE \i_reg[3] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[3]_i_1_n_0 ),
        .Q(i[3]),
        .R(rst));
  FDRE \i_reg[4] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[4]_i_1_n_0 ),
        .Q(i[4]),
        .R(rst));
  FDRE \i_reg[5] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[5]_i_1_n_0 ),
        .Q(i[5]),
        .R(rst));
  FDRE \i_reg[6] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[6]_i_1_n_0 ),
        .Q(i[6]),
        .R(rst));
  FDRE \i_reg[7] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[7]_i_1_n_0 ),
        .Q(i[7]),
        .R(rst));
  FDRE \i_reg[8] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[8]_i_1_n_0 ),
        .Q(i[8]),
        .R(rst));
  FDRE \i_reg[9] 
       (.C(fpga_clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[9]_i_1_n_0 ),
        .Q(i[9]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry
       (.CI(1'b0),
        .CO({o0_carry_n_0,o0_carry_n_1,o0_carry_n_2,o0_carry_n_3}),
        .CYINIT(o[0]),
        .DI(o[4:1]),
        .O(in8[4:1]),
        .S({o0_carry_i_1_n_0,o0_carry_i_2_n_0,o0_carry_i_3_n_0,o0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__0
       (.CI(o0_carry_n_0),
        .CO({o0_carry__0_n_0,o0_carry__0_n_1,o0_carry__0_n_2,o0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o[8:5]),
        .O(in8[8:5]),
        .S({o0_carry__0_i_1_n_0,o0_carry__0_i_2_n_0,o0_carry__0_i_3_n_0,o0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__0_i_1
       (.I0(o[8]),
        .O(o0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__0_i_2
       (.I0(o[7]),
        .O(o0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__0_i_3
       (.I0(o[6]),
        .O(o0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__0_i_4
       (.I0(o[5]),
        .O(o0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__1
       (.CI(o0_carry__0_n_0),
        .CO({o0_carry__1_n_0,o0_carry__1_n_1,o0_carry__1_n_2,o0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(o[12:9]),
        .O(in8[12:9]),
        .S({o0_carry__1_i_1_n_0,o0_carry__1_i_2_n_0,o0_carry__1_i_3_n_0,o0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__1_i_1
       (.I0(o[12]),
        .O(o0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__1_i_2
       (.I0(o[11]),
        .O(o0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__1_i_3
       (.I0(o[10]),
        .O(o0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__1_i_4
       (.I0(o[9]),
        .O(o0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__2
       (.CI(o0_carry__1_n_0),
        .CO({o0_carry__2_n_0,o0_carry__2_n_1,o0_carry__2_n_2,o0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(o[16:13]),
        .O(in8[16:13]),
        .S({o0_carry__2_i_1_n_0,o0_carry__2_i_2_n_0,o0_carry__2_i_3_n_0,o0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__2_i_1
       (.I0(o[16]),
        .O(o0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__2_i_2
       (.I0(o[15]),
        .O(o0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__2_i_3
       (.I0(o[14]),
        .O(o0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__2_i_4
       (.I0(o[13]),
        .O(o0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__3
       (.CI(o0_carry__2_n_0),
        .CO({o0_carry__3_n_0,o0_carry__3_n_1,o0_carry__3_n_2,o0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(o[20:17]),
        .O(in8[20:17]),
        .S({o0_carry__3_i_1_n_0,o0_carry__3_i_2_n_0,o0_carry__3_i_3_n_0,o0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__3_i_1
       (.I0(o[20]),
        .O(o0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__3_i_2
       (.I0(o[19]),
        .O(o0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__3_i_3
       (.I0(o[18]),
        .O(o0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__3_i_4
       (.I0(o[17]),
        .O(o0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__4
       (.CI(o0_carry__3_n_0),
        .CO({o0_carry__4_n_0,o0_carry__4_n_1,o0_carry__4_n_2,o0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(o[24:21]),
        .O(in8[24:21]),
        .S({o0_carry__4_i_1_n_0,o0_carry__4_i_2_n_0,o0_carry__4_i_3_n_0,o0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__4_i_1
       (.I0(o[24]),
        .O(o0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__4_i_2
       (.I0(o[23]),
        .O(o0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__4_i_3
       (.I0(o[22]),
        .O(o0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__4_i_4
       (.I0(o[21]),
        .O(o0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__5
       (.CI(o0_carry__4_n_0),
        .CO({o0_carry__5_n_0,o0_carry__5_n_1,o0_carry__5_n_2,o0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(o[28:25]),
        .O(in8[28:25]),
        .S({o0_carry__5_i_1_n_0,o0_carry__5_i_2_n_0,o0_carry__5_i_3_n_0,o0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__5_i_1
       (.I0(o[28]),
        .O(o0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__5_i_2
       (.I0(o[27]),
        .O(o0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__5_i_3
       (.I0(o[26]),
        .O(o0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__5_i_4
       (.I0(o[25]),
        .O(o0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o0_carry__6
       (.CI(o0_carry__5_n_0),
        .CO({NLW_o0_carry__6_CO_UNCONNECTED[3:2],o0_carry__6_n_2,o0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o[30:29]}),
        .O({NLW_o0_carry__6_O_UNCONNECTED[3],in8[31:29]}),
        .S({1'b0,WriteState1,o0_carry__6_i_2_n_0,o0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__6_i_1
       (.I0(o[31]),
        .O(WriteState1));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__6_i_2
       (.I0(o[30]),
        .O(o0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry__6_i_3
       (.I0(o[29]),
        .O(o0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry_i_1
       (.I0(o[4]),
        .O(o0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry_i_2
       (.I0(o[3]),
        .O(o0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry_i_3
       (.I0(o[2]),
        .O(o0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o0_carry_i_4
       (.I0(o[1]),
        .O(o0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    \o[0]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(o[0]),
        .I3(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I4(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(\o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[10]_i_1 
       (.I0(in8[10]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[11]_i_1 
       (.I0(in8[11]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[12]_i_1 
       (.I0(in8[12]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[13]_i_1 
       (.I0(in8[13]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[14]_i_1 
       (.I0(in8[14]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[15]_i_1 
       (.I0(in8[15]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[16]_i_1 
       (.I0(in8[16]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[17]_i_1 
       (.I0(in8[17]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[18]_i_1 
       (.I0(in8[18]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[19]_i_1 
       (.I0(in8[19]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \o[1]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(in8[1]),
        .I3(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I4(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(\o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[20]_i_1 
       (.I0(in8[20]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[21]_i_1 
       (.I0(in8[21]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[22]_i_1 
       (.I0(in8[22]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[23]_i_1 
       (.I0(in8[23]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[24]_i_1 
       (.I0(in8[24]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[25]_i_1 
       (.I0(in8[25]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[26]_i_1 
       (.I0(in8[26]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[27]_i_1 
       (.I0(in8[27]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[28]_i_1 
       (.I0(in8[28]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[29]_i_1 
       (.I0(in8[29]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \o[2]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(in8[2]),
        .I3(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I4(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(\o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[30]_i_1 
       (.I0(in8[30]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF011110000)) 
    \o[31]_i_1 
       (.I0(\o[31]_i_3_n_0 ),
        .I1(o[31]),
        .I2(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .I3(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I4(BCLK_q2d_3),
        .I5(BCLK_q2d_2),
        .O(o_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[31]_i_2 
       (.I0(in8[31]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o[31]_i_3 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .O(\o[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[3]_i_1 
       (.I0(in8[3]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \o[4]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(in8[4]),
        .I3(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I4(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(\o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[5]_i_1 
       (.I0(in8[5]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[6]_i_1 
       (.I0(in8[6]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[7]_i_1 
       (.I0(in8[7]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[8]_i_1 
       (.I0(in8[8]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \o[9]_i_1 
       (.I0(in8[9]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .O(\o[9]_i_1_n_0 ));
  FDSE \o_reg[0] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[0]_i_1_n_0 ),
        .Q(o[0]),
        .S(rst));
  FDRE \o_reg[10] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[10]_i_1_n_0 ),
        .Q(o[10]),
        .R(rst));
  FDRE \o_reg[11] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[11]_i_1_n_0 ),
        .Q(o[11]),
        .R(rst));
  FDRE \o_reg[12] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[12]_i_1_n_0 ),
        .Q(o[12]),
        .R(rst));
  FDRE \o_reg[13] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[13]_i_1_n_0 ),
        .Q(o[13]),
        .R(rst));
  FDRE \o_reg[14] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[14]_i_1_n_0 ),
        .Q(o[14]),
        .R(rst));
  FDRE \o_reg[15] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[15]_i_1_n_0 ),
        .Q(o[15]),
        .R(rst));
  FDRE \o_reg[16] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[16]_i_1_n_0 ),
        .Q(o[16]),
        .R(rst));
  FDRE \o_reg[17] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[17]_i_1_n_0 ),
        .Q(o[17]),
        .R(rst));
  FDRE \o_reg[18] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[18]_i_1_n_0 ),
        .Q(o[18]),
        .R(rst));
  FDRE \o_reg[19] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[19]_i_1_n_0 ),
        .Q(o[19]),
        .R(rst));
  FDSE \o_reg[1] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[1]_i_1_n_0 ),
        .Q(o[1]),
        .S(rst));
  FDRE \o_reg[20] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[20]_i_1_n_0 ),
        .Q(o[20]),
        .R(rst));
  FDRE \o_reg[21] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[21]_i_1_n_0 ),
        .Q(o[21]),
        .R(rst));
  FDRE \o_reg[22] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[22]_i_1_n_0 ),
        .Q(o[22]),
        .R(rst));
  FDRE \o_reg[23] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[23]_i_1_n_0 ),
        .Q(o[23]),
        .R(rst));
  FDRE \o_reg[24] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[24]_i_1_n_0 ),
        .Q(o[24]),
        .R(rst));
  FDRE \o_reg[25] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[25]_i_1_n_0 ),
        .Q(o[25]),
        .R(rst));
  FDRE \o_reg[26] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[26]_i_1_n_0 ),
        .Q(o[26]),
        .R(rst));
  FDRE \o_reg[27] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[27]_i_1_n_0 ),
        .Q(o[27]),
        .R(rst));
  FDRE \o_reg[28] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[28]_i_1_n_0 ),
        .Q(o[28]),
        .R(rst));
  FDRE \o_reg[29] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[29]_i_1_n_0 ),
        .Q(o[29]),
        .R(rst));
  FDSE \o_reg[2] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[2]_i_1_n_0 ),
        .Q(o[2]),
        .S(rst));
  FDRE \o_reg[30] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[30]_i_1_n_0 ),
        .Q(o[30]),
        .R(rst));
  FDRE \o_reg[31] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[31]_i_2_n_0 ),
        .Q(o[31]),
        .R(rst));
  FDRE \o_reg[3] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[3]_i_1_n_0 ),
        .Q(o[3]),
        .R(rst));
  FDSE \o_reg[4] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[4]_i_1_n_0 ),
        .Q(o[4]),
        .S(rst));
  FDRE \o_reg[5] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[5]_i_1_n_0 ),
        .Q(o[5]),
        .R(rst));
  FDRE \o_reg[6] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[6]_i_1_n_0 ),
        .Q(o[6]),
        .R(rst));
  FDRE \o_reg[7] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[7]_i_1_n_0 ),
        .Q(o[7]),
        .R(rst));
  FDRE \o_reg[8] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[8]_i_1_n_0 ),
        .Q(o[8]),
        .R(rst));
  FDRE \o_reg[9] 
       (.C(fpga_clk),
        .CE(o_0),
        .D(\o[9]_i_1_n_0 ),
        .Q(o[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \read_states[0]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .O(ReadState_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \read_states[1]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .O(ReadState_reg[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \read_states[2]_i_1 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .O(ReadState_reg[2]));
  FDSE \read_states_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(ReadState_reg[0]),
        .Q(read_states[0]),
        .S(rst));
  FDSE \read_states_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(ReadState_reg[1]),
        .Q(read_states[1]),
        .S(rst));
  FDSE \read_states_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(ReadState_reg[2]),
        .Q(read_states[2]),
        .S(rst));
  LUT6 #(
    .INIT(64'hFF40FFFFFF400000)) 
    sdata_out_i_1
       (.I0(o[31]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I2(sdata_out_i_2_n_0),
        .I3(sdata_out_i_3_n_0),
        .I4(sdata_out_i_4_n_0),
        .I5(sdata_out),
        .O(sdata_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_11
       (.I0(audio_r_adau[19]),
        .I1(audio_r_adau[18]),
        .I2(o[1]),
        .I3(audio_r_adau[17]),
        .I4(o[0]),
        .I5(audio_r_adau[16]),
        .O(sdata_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_12
       (.I0(audio_r_adau[23]),
        .I1(audio_r_adau[22]),
        .I2(o[1]),
        .I3(audio_r_adau[21]),
        .I4(o[0]),
        .I5(audio_r_adau[20]),
        .O(sdata_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_13
       (.I0(audio_r_adau[11]),
        .I1(audio_r_adau[10]),
        .I2(o[1]),
        .I3(audio_r_adau[9]),
        .I4(o[0]),
        .I5(audio_r_adau[8]),
        .O(sdata_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_14
       (.I0(audio_r_adau[15]),
        .I1(audio_r_adau[14]),
        .I2(o[1]),
        .I3(audio_r_adau[13]),
        .I4(o[0]),
        .I5(audio_r_adau[12]),
        .O(sdata_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_15
       (.I0(audio_r_adau[3]),
        .I1(audio_r_adau[2]),
        .I2(o[1]),
        .I3(audio_r_adau[1]),
        .I4(o[0]),
        .I5(audio_r_adau[0]),
        .O(sdata_out_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_16
       (.I0(audio_r_adau[7]),
        .I1(audio_r_adau[6]),
        .I2(o[1]),
        .I3(audio_r_adau[5]),
        .I4(o[0]),
        .I5(audio_r_adau[4]),
        .O(sdata_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_17
       (.I0(audio_l_adau[3]),
        .I1(audio_l_adau[2]),
        .I2(o[1]),
        .I3(audio_l_adau[1]),
        .I4(o[0]),
        .I5(audio_l_adau[0]),
        .O(sdata_out_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_18
       (.I0(audio_l_adau[7]),
        .I1(audio_l_adau[6]),
        .I2(o[1]),
        .I3(audio_l_adau[5]),
        .I4(o[0]),
        .I5(audio_l_adau[4]),
        .O(sdata_out_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_19
       (.I0(audio_l_adau[11]),
        .I1(audio_l_adau[10]),
        .I2(o[1]),
        .I3(audio_l_adau[9]),
        .I4(o[0]),
        .I5(audio_l_adau[8]),
        .O(sdata_out_i_19_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    sdata_out_i_2
       (.I0(sdata_out_reg_i_5_n_0),
        .I1(o[4]),
        .I2(sdata_out_reg_i_6_n_0),
        .I3(o[3]),
        .I4(sdata_out_reg_i_7_n_0),
        .O(sdata_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_20
       (.I0(audio_l_adau[15]),
        .I1(audio_l_adau[14]),
        .I2(o[1]),
        .I3(audio_l_adau[13]),
        .I4(o[0]),
        .I5(audio_l_adau[12]),
        .O(sdata_out_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_21
       (.I0(audio_l_adau[19]),
        .I1(audio_l_adau[18]),
        .I2(o[1]),
        .I3(audio_l_adau[17]),
        .I4(o[0]),
        .I5(audio_l_adau[16]),
        .O(sdata_out_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_22
       (.I0(audio_l_adau[23]),
        .I1(audio_l_adau[22]),
        .I2(o[1]),
        .I3(audio_l_adau[21]),
        .I4(o[0]),
        .I5(audio_l_adau[20]),
        .O(sdata_out_i_22_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    sdata_out_i_3
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(sdata_out_reg_i_8_n_0),
        .I2(o[3]),
        .I3(sdata_out_reg_i_9_n_0),
        .I4(o[4]),
        .I5(sdata_out_reg_i_10_n_0),
        .O(sdata_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20202220)) 
    sdata_out_i_4
       (.I0(BCLK_q2d_3),
        .I1(BCLK_q2d_2),
        .I2(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I3(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I4(o[31]),
        .O(sdata_out_i_4_n_0));
  FDRE sdata_out_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(sdata_out_i_1_n_0),
        .Q(sdata_out),
        .R(rst));
  MUXF7 sdata_out_reg_i_10
       (.I0(sdata_out_i_21_n_0),
        .I1(sdata_out_i_22_n_0),
        .O(sdata_out_reg_i_10_n_0),
        .S(o[2]));
  MUXF7 sdata_out_reg_i_5
       (.I0(sdata_out_i_11_n_0),
        .I1(sdata_out_i_12_n_0),
        .O(sdata_out_reg_i_5_n_0),
        .S(o[2]));
  MUXF7 sdata_out_reg_i_6
       (.I0(sdata_out_i_13_n_0),
        .I1(sdata_out_i_14_n_0),
        .O(sdata_out_reg_i_6_n_0),
        .S(o[2]));
  MUXF7 sdata_out_reg_i_7
       (.I0(sdata_out_i_15_n_0),
        .I1(sdata_out_i_16_n_0),
        .O(sdata_out_reg_i_7_n_0),
        .S(o[2]));
  MUXF7 sdata_out_reg_i_8
       (.I0(sdata_out_i_17_n_0),
        .I1(sdata_out_i_18_n_0),
        .O(sdata_out_reg_i_8_n_0),
        .S(o[2]));
  MUXF7 sdata_out_reg_i_9
       (.I0(sdata_out_i_19_n_0),
        .I1(sdata_out_i_20_n_0),
        .O(sdata_out_reg_i_9_n_0),
        .S(o[2]));
  FDRE validSDin_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(SDin_q2d_3),
        .Q(validSDin),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \write_states[0]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .O(WriteState_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \write_states[1]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .O(WriteState_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \write_states[2]_i_1 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I1(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .O(WriteState_reg[2]));
  FDSE \write_states_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(WriteState_reg[0]),
        .Q(write_states[0]),
        .S(rst));
  FDSE \write_states_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(WriteState_reg[1]),
        .Q(write_states[1]),
        .S(rst));
  FDSE \write_states_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(WriteState_reg[2]),
        .Q(write_states[2]),
        .S(rst));
endmodule

(* CHECK_LICENSE_TYPE = "top_I2S_audio_interface_0_0,I2S_audio_interface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2S_audio_interface,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    fpga_clk,
    bclk,
    lrclk,
    sdata_in,
    audio_valid_adau,
    audio_r_adau,
    audio_l_adau,
    audio_valid_pl,
    audio_r_pl,
    audio_l_pl,
    read_states,
    write_states,
    sdata_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 fpga_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME fpga_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input fpga_clk;
  input bclk;
  input lrclk;
  input sdata_in;
  input audio_valid_adau;
  input [23:0]audio_r_adau;
  input [23:0]audio_l_adau;
  output audio_valid_pl;
  output [23:0]audio_r_pl;
  output [23:0]audio_l_pl;
  output [2:0]read_states;
  output [2:0]write_states;
  output sdata_out;

  wire [23:0]audio_l_adau;
  wire [23:0]audio_l_pl;
  wire [23:0]audio_r_adau;
  wire [23:0]audio_r_pl;
  wire audio_valid_adau;
  wire audio_valid_pl;
  wire bclk;
  wire fpga_clk;
  wire lrclk;
  wire [2:0]read_states;
  wire rst;
  wire sdata_in;
  wire sdata_out;
  wire [2:0]write_states;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2S_audio_interface U0
       (.audio_l_adau(audio_l_adau),
        .audio_l_pl(audio_l_pl),
        .audio_r_adau(audio_r_adau),
        .audio_r_pl(audio_r_pl),
        .audio_valid_adau(audio_valid_adau),
        .audio_valid_pl(audio_valid_pl),
        .bclk(bclk),
        .fpga_clk(fpga_clk),
        .lrclk(lrclk),
        .read_states(read_states),
        .rst(rst),
        .sdata_in(sdata_in),
        .sdata_out(sdata_out),
        .write_states(write_states));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
