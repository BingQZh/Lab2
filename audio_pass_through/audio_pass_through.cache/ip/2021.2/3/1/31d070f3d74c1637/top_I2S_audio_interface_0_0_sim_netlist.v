// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Feb 17 20:57:00 2022
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
    audio_valid_pl,
    sdata_out,
    rst,
    audio_valid_adau,
    fpga_clk,
    bclk,
    lrclk,
    sdata_in,
    audio_l_adau,
    audio_r_adau);
  output [23:0]audio_r_pl;
  output [23:0]audio_l_pl;
  output audio_valid_pl;
  output sdata_out;
  input rst;
  input audio_valid_adau;
  input fpga_clk;
  input bclk;
  input lrclk;
  input sdata_in;
  input [23:0]audio_l_adau;
  input [23:0]audio_r_adau;

  wire BCLK_FF1_n_0;
  wire BCLK_FF2_n_0;
  wire BCLK_FF2_n_1;
  wire BCLK_FF2_n_2;
  wire BCLK_FF2_n_3;
  wire BCLK_FF3_n_1;
  wire BCLK_q2d_3;
  wire D;
  wire \FSM_onehot_ReadState[5]_i_1_n_0 ;
  wire \FSM_onehot_ReadState[5]_i_2_n_0 ;
  wire \FSM_onehot_ReadState[5]_i_3_n_0 ;
  wire \FSM_onehot_ReadState_reg_n_0_[0] ;
  wire \FSM_onehot_ReadState_reg_n_0_[1] ;
  wire \FSM_onehot_ReadState_reg_n_0_[2] ;
  wire \FSM_onehot_ReadState_reg_n_0_[3] ;
  wire \FSM_onehot_ReadState_reg_n_0_[4] ;
  wire \FSM_onehot_ReadState_reg_n_0_[5] ;
  wire \FSM_onehot_WriteState[5]_i_1_n_0 ;
  wire \FSM_onehot_WriteState[5]_i_2_n_0 ;
  wire \FSM_onehot_WriteState[5]_i_4_n_0 ;
  wire \FSM_onehot_WriteState_reg_n_0_[0] ;
  wire \FSM_onehot_WriteState_reg_n_0_[1] ;
  wire \FSM_onehot_WriteState_reg_n_0_[2] ;
  wire \FSM_onehot_WriteState_reg_n_0_[3] ;
  wire \FSM_onehot_WriteState_reg_n_0_[4] ;
  wire \FSM_onehot_WriteState_reg_n_0_[5] ;
  wire LRCLK_FF1_n_0;
  wire LRCLK_FF2_n_0;
  wire LRCLK_FF2_n_1;
  wire LRCLK_FF2_n_2;
  wire LRCLK_FF3_n_1;
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
  wire ReadState1;
  wire ReadState130_out__0;
  wire ReadState1_carry__0_i_1_n_0;
  wire ReadState1_carry__0_i_2_n_0;
  wire ReadState1_carry__0_i_3_n_0;
  wire ReadState1_carry__0_i_4_n_0;
  wire ReadState1_carry__0_n_0;
  wire ReadState1_carry__0_n_1;
  wire ReadState1_carry__0_n_2;
  wire ReadState1_carry__0_n_3;
  wire ReadState1_carry__1_i_1_n_0;
  wire ReadState1_carry__1_i_2_n_0;
  wire ReadState1_carry__1_i_3_n_0;
  wire ReadState1_carry__1_i_4_n_0;
  wire ReadState1_carry__1_n_0;
  wire ReadState1_carry__1_n_1;
  wire ReadState1_carry__1_n_2;
  wire ReadState1_carry__1_n_3;
  wire ReadState1_carry__2_i_1_n_0;
  wire ReadState1_carry__2_i_2_n_0;
  wire ReadState1_carry__2_i_3_n_0;
  wire ReadState1_carry__2_n_2;
  wire ReadState1_carry__2_n_3;
  wire ReadState1_carry_i_1_n_0;
  wire ReadState1_carry_i_2_n_0;
  wire ReadState1_carry_i_3_n_0;
  wire ReadState1_carry_i_4_n_0;
  wire ReadState1_carry_i_5_n_0;
  wire ReadState1_carry_i_6_n_0;
  wire ReadState1_carry_n_0;
  wire ReadState1_carry_n_1;
  wire ReadState1_carry_n_2;
  wire ReadState1_carry_n_3;
  wire \RightChannel[0]_i_1_n_0 ;
  wire \RightChannel[0]_i_2_n_0 ;
  wire \RightChannel[10]_i_1_n_0 ;
  wire \RightChannel[10]_i_2_n_0 ;
  wire \RightChannel[11]_i_1_n_0 ;
  wire \RightChannel[11]_i_2_n_0 ;
  wire \RightChannel[12]_i_1_n_0 ;
  wire \RightChannel[12]_i_2_n_0 ;
  wire \RightChannel[13]_i_1_n_0 ;
  wire \RightChannel[13]_i_2_n_0 ;
  wire \RightChannel[14]_i_1_n_0 ;
  wire \RightChannel[14]_i_2_n_0 ;
  wire \RightChannel[15]_i_1_n_0 ;
  wire \RightChannel[15]_i_2_n_0 ;
  wire \RightChannel[16]_i_1_n_0 ;
  wire \RightChannel[16]_i_2_n_0 ;
  wire \RightChannel[16]_i_3_n_0 ;
  wire \RightChannel[17]_i_1_n_0 ;
  wire \RightChannel[17]_i_2_n_0 ;
  wire \RightChannel[17]_i_3_n_0 ;
  wire \RightChannel[18]_i_1_n_0 ;
  wire \RightChannel[18]_i_2_n_0 ;
  wire \RightChannel[18]_i_3_n_0 ;
  wire \RightChannel[19]_i_1_n_0 ;
  wire \RightChannel[19]_i_2_n_0 ;
  wire \RightChannel[19]_i_3_n_0 ;
  wire \RightChannel[1]_i_1_n_0 ;
  wire \RightChannel[1]_i_2_n_0 ;
  wire \RightChannel[20]_i_1_n_0 ;
  wire \RightChannel[20]_i_2_n_0 ;
  wire \RightChannel[20]_i_3_n_0 ;
  wire \RightChannel[21]_i_1_n_0 ;
  wire \RightChannel[21]_i_2_n_0 ;
  wire \RightChannel[21]_i_3_n_0 ;
  wire \RightChannel[22]_i_1_n_0 ;
  wire \RightChannel[22]_i_2_n_0 ;
  wire \RightChannel[22]_i_3_n_0 ;
  wire \RightChannel[23]_i_10_n_0 ;
  wire \RightChannel[23]_i_11_n_0 ;
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
  wire \RightChannel[2]_i_2_n_0 ;
  wire \RightChannel[3]_i_1_n_0 ;
  wire \RightChannel[3]_i_2_n_0 ;
  wire \RightChannel[4]_i_1_n_0 ;
  wire \RightChannel[4]_i_2_n_0 ;
  wire \RightChannel[5]_i_1_n_0 ;
  wire \RightChannel[5]_i_2_n_0 ;
  wire \RightChannel[6]_i_1_n_0 ;
  wire \RightChannel[6]_i_2_n_0 ;
  wire \RightChannel[7]_i_1_n_0 ;
  wire \RightChannel[7]_i_2_n_0 ;
  wire \RightChannel[8]_i_1_n_0 ;
  wire \RightChannel[8]_i_2_n_0 ;
  wire \RightChannel[9]_i_1_n_0 ;
  wire \RightChannel[9]_i_2_n_0 ;
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
  wire SDin_FF2_n_0;
  wire SDin_FF3_n_0;
  wire WriteState1;
  wire WriteState11_in;
  wire WriteState128_out__0;
  wire [23:0]audio_l_adau;
  wire [23:0]audio_l_pl;
  wire [23:0]audio_r_adau;
  wire [23:0]audio_r_pl;
  wire \audio_r_pl[23]_i_1_n_0 ;
  wire audio_valid_adau;
  wire audio_valid_pl;
  wire \bResults_reg_n_0_[0] ;
  wire bclk;
  wire fpga_clk;
  wire holdvalid_i_1_n_0;
  wire holdvalid_i_2_n_0;
  wire holdvalid_reg_n_0;
  wire i;
  wire \i[0]_i_3_n_0 ;
  wire \i[0]_i_4_n_0 ;
  wire \i[0]_i_5_n_0 ;
  wire \i[0]_i_6_n_0 ;
  wire \i[12]_i_2_n_0 ;
  wire \i[12]_i_3_n_0 ;
  wire \i[12]_i_4_n_0 ;
  wire \i[12]_i_5_n_0 ;
  wire \i[16]_i_2_n_0 ;
  wire \i[16]_i_3_n_0 ;
  wire \i[16]_i_4_n_0 ;
  wire \i[16]_i_5_n_0 ;
  wire \i[20]_i_2_n_0 ;
  wire \i[20]_i_3_n_0 ;
  wire \i[20]_i_4_n_0 ;
  wire \i[20]_i_5_n_0 ;
  wire \i[24]_i_2_n_0 ;
  wire \i[24]_i_3_n_0 ;
  wire \i[24]_i_4_n_0 ;
  wire \i[24]_i_5_n_0 ;
  wire \i[28]_i_2_n_0 ;
  wire \i[28]_i_3_n_0 ;
  wire \i[28]_i_4_n_0 ;
  wire \i[28]_i_5_n_0 ;
  wire \i[4]_i_2_n_0 ;
  wire \i[4]_i_3_n_0 ;
  wire \i[4]_i_4_n_0 ;
  wire \i[4]_i_5_n_0 ;
  wire \i[8]_i_2_n_0 ;
  wire \i[8]_i_3_n_0 ;
  wire \i[8]_i_4_n_0 ;
  wire \i[8]_i_5_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_1 ;
  wire \i_reg[0]_i_2_n_2 ;
  wire \i_reg[0]_i_2_n_3 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire ignoreWrite_i_1_n_0;
  wire ignoreWrite_i_2_n_0;
  wire ignoreWrite_reg_n_0;
  wire ignore_i_1_n_0;
  wire ignore_reg_n_0;
  wire \lrResults_reg_n_0_[0] ;
  wire lrclk;
  wire \o[0]_i_10_n_0 ;
  wire \o[0]_i_1_n_0 ;
  wire \o[0]_i_3_n_0 ;
  wire \o[0]_i_4_n_0 ;
  wire \o[0]_i_5_n_0 ;
  wire \o[0]_i_6_n_0 ;
  wire \o[0]_i_7_n_0 ;
  wire \o[0]_i_8_n_0 ;
  wire \o[0]_i_9_n_0 ;
  wire \o[12]_i_2_n_0 ;
  wire \o[12]_i_3_n_0 ;
  wire \o[12]_i_4_n_0 ;
  wire \o[12]_i_5_n_0 ;
  wire \o[12]_i_6_n_0 ;
  wire \o[12]_i_7_n_0 ;
  wire \o[12]_i_8_n_0 ;
  wire \o[12]_i_9_n_0 ;
  wire \o[16]_i_2_n_0 ;
  wire \o[16]_i_3_n_0 ;
  wire \o[16]_i_4_n_0 ;
  wire \o[16]_i_5_n_0 ;
  wire \o[16]_i_6_n_0 ;
  wire \o[16]_i_7_n_0 ;
  wire \o[16]_i_8_n_0 ;
  wire \o[16]_i_9_n_0 ;
  wire \o[20]_i_2_n_0 ;
  wire \o[20]_i_3_n_0 ;
  wire \o[20]_i_4_n_0 ;
  wire \o[20]_i_5_n_0 ;
  wire \o[20]_i_6_n_0 ;
  wire \o[20]_i_7_n_0 ;
  wire \o[20]_i_8_n_0 ;
  wire \o[20]_i_9_n_0 ;
  wire \o[24]_i_2_n_0 ;
  wire \o[24]_i_3_n_0 ;
  wire \o[24]_i_4_n_0 ;
  wire \o[24]_i_5_n_0 ;
  wire \o[24]_i_6_n_0 ;
  wire \o[24]_i_7_n_0 ;
  wire \o[24]_i_8_n_0 ;
  wire \o[24]_i_9_n_0 ;
  wire \o[28]_i_2_n_0 ;
  wire \o[28]_i_3_n_0 ;
  wire \o[28]_i_4_n_0 ;
  wire \o[28]_i_6_n_0 ;
  wire \o[28]_i_7_n_0 ;
  wire \o[28]_i_8_n_0 ;
  wire \o[4]_i_2_n_0 ;
  wire \o[4]_i_3_n_0 ;
  wire \o[4]_i_4_n_0 ;
  wire \o[4]_i_5_n_0 ;
  wire \o[4]_i_6_n_0 ;
  wire \o[4]_i_7_n_0 ;
  wire \o[4]_i_8_n_0 ;
  wire \o[4]_i_9_n_0 ;
  wire \o[8]_i_2_n_0 ;
  wire \o[8]_i_3_n_0 ;
  wire \o[8]_i_4_n_0 ;
  wire \o[8]_i_5_n_0 ;
  wire \o[8]_i_6_n_0 ;
  wire \o[8]_i_7_n_0 ;
  wire \o[8]_i_8_n_0 ;
  wire \o[8]_i_9_n_0 ;
  wire [31:0]o_reg;
  wire \o_reg[0]_i_2_n_0 ;
  wire \o_reg[0]_i_2_n_1 ;
  wire \o_reg[0]_i_2_n_2 ;
  wire \o_reg[0]_i_2_n_3 ;
  wire \o_reg[0]_i_2_n_4 ;
  wire \o_reg[0]_i_2_n_5 ;
  wire \o_reg[0]_i_2_n_6 ;
  wire \o_reg[0]_i_2_n_7 ;
  wire \o_reg[12]_i_1_n_0 ;
  wire \o_reg[12]_i_1_n_1 ;
  wire \o_reg[12]_i_1_n_2 ;
  wire \o_reg[12]_i_1_n_3 ;
  wire \o_reg[12]_i_1_n_4 ;
  wire \o_reg[12]_i_1_n_5 ;
  wire \o_reg[12]_i_1_n_6 ;
  wire \o_reg[12]_i_1_n_7 ;
  wire \o_reg[16]_i_1_n_0 ;
  wire \o_reg[16]_i_1_n_1 ;
  wire \o_reg[16]_i_1_n_2 ;
  wire \o_reg[16]_i_1_n_3 ;
  wire \o_reg[16]_i_1_n_4 ;
  wire \o_reg[16]_i_1_n_5 ;
  wire \o_reg[16]_i_1_n_6 ;
  wire \o_reg[16]_i_1_n_7 ;
  wire \o_reg[20]_i_1_n_0 ;
  wire \o_reg[20]_i_1_n_1 ;
  wire \o_reg[20]_i_1_n_2 ;
  wire \o_reg[20]_i_1_n_3 ;
  wire \o_reg[20]_i_1_n_4 ;
  wire \o_reg[20]_i_1_n_5 ;
  wire \o_reg[20]_i_1_n_6 ;
  wire \o_reg[20]_i_1_n_7 ;
  wire \o_reg[24]_i_1_n_0 ;
  wire \o_reg[24]_i_1_n_1 ;
  wire \o_reg[24]_i_1_n_2 ;
  wire \o_reg[24]_i_1_n_3 ;
  wire \o_reg[24]_i_1_n_4 ;
  wire \o_reg[24]_i_1_n_5 ;
  wire \o_reg[24]_i_1_n_6 ;
  wire \o_reg[24]_i_1_n_7 ;
  wire \o_reg[28]_i_1_n_1 ;
  wire \o_reg[28]_i_1_n_2 ;
  wire \o_reg[28]_i_1_n_3 ;
  wire \o_reg[28]_i_1_n_4 ;
  wire \o_reg[28]_i_1_n_5 ;
  wire \o_reg[28]_i_1_n_6 ;
  wire \o_reg[28]_i_1_n_7 ;
  wire \o_reg[4]_i_1_n_0 ;
  wire \o_reg[4]_i_1_n_1 ;
  wire \o_reg[4]_i_1_n_2 ;
  wire \o_reg[4]_i_1_n_3 ;
  wire \o_reg[4]_i_1_n_4 ;
  wire \o_reg[4]_i_1_n_5 ;
  wire \o_reg[4]_i_1_n_6 ;
  wire \o_reg[4]_i_1_n_7 ;
  wire \o_reg[8]_i_1_n_0 ;
  wire \o_reg[8]_i_1_n_1 ;
  wire \o_reg[8]_i_1_n_2 ;
  wire \o_reg[8]_i_1_n_3 ;
  wire \o_reg[8]_i_1_n_4 ;
  wire \o_reg[8]_i_1_n_5 ;
  wire \o_reg[8]_i_1_n_6 ;
  wire \o_reg[8]_i_1_n_7 ;
  wire \o_reg_n_0_[10] ;
  wire \o_reg_n_0_[11] ;
  wire \o_reg_n_0_[12] ;
  wire \o_reg_n_0_[13] ;
  wire \o_reg_n_0_[14] ;
  wire \o_reg_n_0_[15] ;
  wire \o_reg_n_0_[16] ;
  wire \o_reg_n_0_[17] ;
  wire \o_reg_n_0_[18] ;
  wire \o_reg_n_0_[19] ;
  wire \o_reg_n_0_[20] ;
  wire \o_reg_n_0_[21] ;
  wire \o_reg_n_0_[22] ;
  wire \o_reg_n_0_[23] ;
  wire \o_reg_n_0_[24] ;
  wire \o_reg_n_0_[25] ;
  wire \o_reg_n_0_[26] ;
  wire \o_reg_n_0_[27] ;
  wire \o_reg_n_0_[28] ;
  wire \o_reg_n_0_[29] ;
  wire \o_reg_n_0_[30] ;
  wire \o_reg_n_0_[5] ;
  wire \o_reg_n_0_[6] ;
  wire \o_reg_n_0_[7] ;
  wire \o_reg_n_0_[8] ;
  wire \o_reg_n_0_[9] ;
  wire p_0_in;
  wire p_0_in29_in;
  wire p_2_in;
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
  wire sdata_out_i_1_n_0;
  wire sdata_out_i_21_n_0;
  wire sdata_out_i_22_n_0;
  wire sdata_out_i_23_n_0;
  wire sdata_out_i_24_n_0;
  wire sdata_out_i_2_n_0;
  wire sdata_out_i_3_n_0;
  wire sdata_out_i_5_n_0;
  wire sdata_out_reg_i_10_n_0;
  wire sdata_out_reg_i_19_n_0;
  wire sdata_out_reg_i_20_n_0;
  wire sdata_out_reg_i_6_n_0;
  wire sdata_out_reg_i_7_n_0;
  wire sdata_out_reg_i_8_n_0;
  wire sdata_out_reg_i_9_n_0;
  wire validBCLK_reg_n_0;
  wire validLRCLK;
  wire validSDin;
  wire validbit_i_1_n_0;
  wire [3:0]NLW_ReadState1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ReadState1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ReadState1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_ReadState1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ReadState1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_i_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_reg[28]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop BCLK_FF1
       (.Q_reg_0(BCLK_FF1_n_0),
        .bclk(bclk),
        .fpga_clk(fpga_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_0 BCLK_FF2
       (.BCLK_q2d_3(BCLK_q2d_3),
        .Q_reg_0(BCLK_FF2_n_0),
        .Q_reg_1(BCLK_FF2_n_1),
        .Q_reg_2(BCLK_FF2_n_3),
        .Q_reg_3(BCLK_FF1_n_0),
        .\bResults_reg[1] (validBCLK_reg_n_0),
        .fpga_clk(fpga_clk),
        .rst(rst),
        .validBCLK_reg(BCLK_FF2_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_1 BCLK_FF3
       (.BCLK_q2d_3(BCLK_q2d_3),
        .Q_reg_0(BCLK_FF3_n_1),
        .Q_reg_1(BCLK_FF2_n_0),
        .fpga_clk(fpga_clk),
        .p_0_in(p_0_in),
        .rst(rst),
        .validBCLK_reg(validBCLK_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_ReadState[5]_i_1 
       (.I0(p_0_in29_in),
        .I1(\FSM_onehot_ReadState_reg_n_0_[1] ),
        .I2(\lrResults_reg_n_0_[0] ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .I4(\FSM_onehot_ReadState[5]_i_2_n_0 ),
        .I5(\FSM_onehot_ReadState[5]_i_3_n_0 ),
        .O(\FSM_onehot_ReadState[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AE00)) 
    \FSM_onehot_ReadState[5]_i_2 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[4] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I2(ignore_reg_n_0),
        .I3(p_0_in29_in),
        .I4(ReadState1),
        .O(\FSM_onehot_ReadState[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    \FSM_onehot_ReadState[5]_i_3 
       (.I0(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I1(ignore_reg_n_0),
        .I2(p_0_in29_in),
        .I3(ReadState1),
        .I4(\FSM_onehot_ReadState_reg_n_0_[3] ),
        .I5(p_2_in),
        .O(\FSM_onehot_ReadState[5]_i_3_n_0 ));
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
    .INIT(64'hAAAAA888A888A888)) 
    \FSM_onehot_WriteState[5]_i_1 
       (.I0(WriteState11_in),
        .I1(\FSM_onehot_WriteState[5]_i_2_n_0 ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[0] ),
        .I3(\lrResults_reg_n_0_[0] ),
        .I4(\FSM_onehot_WriteState_reg_n_0_[1] ),
        .I5(p_0_in29_in),
        .O(\FSM_onehot_WriteState[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    \FSM_onehot_WriteState[5]_i_2 
       (.I0(p_2_in),
        .I1(\FSM_onehot_WriteState_reg_n_0_[3] ),
        .I2(WriteState128_out__0),
        .I3(o_reg[31]),
        .I4(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I5(\FSM_onehot_WriteState[5]_i_4_n_0 ),
        .O(\FSM_onehot_WriteState[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_WriteState[5]_i_3 
       (.I0(\bResults_reg_n_0_[0] ),
        .I1(ignoreWrite_reg_n_0),
        .O(WriteState128_out__0));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \FSM_onehot_WriteState[5]_i_4 
       (.I0(\FSM_onehot_WriteState_reg_n_0_[4] ),
        .I1(p_0_in29_in),
        .I2(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I3(o_reg[31]),
        .I4(\bResults_reg_n_0_[0] ),
        .I5(ignoreWrite_reg_n_0),
        .O(\FSM_onehot_WriteState[5]_i_4_n_0 ));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_2 LRCLK_FF1
       (.Q_reg_0(LRCLK_FF1_n_0),
        .fpga_clk(fpga_clk),
        .lrclk(lrclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_3 LRCLK_FF2
       (.LRCLK_q2d_3(LRCLK_q2d_3),
        .Q_reg_0(LRCLK_FF2_n_0),
        .Q_reg_1(LRCLK_FF2_n_1),
        .Q_reg_2(LRCLK_FF1_n_0),
        .fpga_clk(fpga_clk),
        .rst(rst),
        .validLRCLK(validLRCLK),
        .validLRCLK_reg(LRCLK_FF2_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_4 LRCLK_FF3
       (.LRCLK_q2d_3(LRCLK_q2d_3),
        .Q_reg_0(LRCLK_FF3_n_1),
        .Q_reg_1(LRCLK_FF2_n_0),
        .fpga_clk(fpga_clk),
        .p_0_in(p_0_in),
        .rst(rst),
        .validLRCLK(validLRCLK));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[0]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[0]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[0] ),
        .O(\LeftChannel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[10]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[10]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[10] ),
        .O(\LeftChannel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[11]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[11]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[11] ),
        .O(\LeftChannel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[12]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[12]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[12] ),
        .O(\LeftChannel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[13]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[13]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[13] ),
        .O(\LeftChannel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[14]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[14]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[14] ),
        .O(\LeftChannel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[15]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[15]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[15] ),
        .O(\LeftChannel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[16]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[16]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[16] ),
        .O(\LeftChannel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[17]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[17]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[17] ),
        .O(\LeftChannel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[18]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[18]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[18] ),
        .O(\LeftChannel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[19]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[19]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[19] ),
        .O(\LeftChannel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[1]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[1]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[1] ),
        .O(\LeftChannel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[20]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[20]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[20] ),
        .O(\LeftChannel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[21]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[21]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[21] ),
        .O(\LeftChannel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[22]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[22]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[22] ),
        .O(\LeftChannel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[23]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[23]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[23] ),
        .O(\LeftChannel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[2]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[2]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[2] ),
        .O(\LeftChannel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[3]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[3]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[3] ),
        .O(\LeftChannel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[4]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[4]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[4] ),
        .O(\LeftChannel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[5]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[5]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[5] ),
        .O(\LeftChannel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[6]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[6]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[6] ),
        .O(\LeftChannel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[7]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[7]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[7] ),
        .O(\LeftChannel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[8]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[8]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[8] ),
        .O(\LeftChannel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \LeftChannel[9]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[9]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I4(rst),
        .I5(\LeftChannel_reg_n_0_[9] ),
        .O(\LeftChannel[9]_i_1_n_0 ));
  FDRE \LeftChannel_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[0]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[10] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[10]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[11] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[11]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[12] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[12]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[13] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[13]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[14] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[14]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[15] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[15]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[16] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[16]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[17] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[17]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[18] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[18]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[19] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[19]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[1]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[20] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[20]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[21] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[21]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[22] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[22]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[23] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[23]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[2]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[3] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[3]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[4] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[4]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[5] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[5]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[6] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[6]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[7] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[7]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[8] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[8]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \LeftChannel_reg[9] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\LeftChannel[9]_i_1_n_0 ),
        .Q(\LeftChannel_reg_n_0_[9] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ReadState1_carry
       (.CI(1'b0),
        .CO({ReadState1_carry_n_0,ReadState1_carry_n_1,ReadState1_carry_n_2,ReadState1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ReadState1_carry_i_1_n_0,ReadState1_carry_i_2_n_0}),
        .O(NLW_ReadState1_carry_O_UNCONNECTED[3:0]),
        .S({ReadState1_carry_i_3_n_0,ReadState1_carry_i_4_n_0,ReadState1_carry_i_5_n_0,ReadState1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ReadState1_carry__0
       (.CI(ReadState1_carry_n_0),
        .CO({ReadState1_carry__0_n_0,ReadState1_carry__0_n_1,ReadState1_carry__0_n_2,ReadState1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ReadState1_carry__0_O_UNCONNECTED[3:0]),
        .S({ReadState1_carry__0_i_1_n_0,ReadState1_carry__0_i_2_n_0,ReadState1_carry__0_i_3_n_0,ReadState1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__0_i_1
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(ReadState1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__0_i_2
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(ReadState1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__0_i_3
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(ReadState1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__0_i_4
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(ReadState1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ReadState1_carry__1
       (.CI(ReadState1_carry__0_n_0),
        .CO({ReadState1_carry__1_n_0,ReadState1_carry__1_n_1,ReadState1_carry__1_n_2,ReadState1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ReadState1_carry__1_O_UNCONNECTED[3:0]),
        .S({ReadState1_carry__1_i_1_n_0,ReadState1_carry__1_i_2_n_0,ReadState1_carry__1_i_3_n_0,ReadState1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__1_i_1
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(ReadState1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__1_i_2
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(ReadState1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__1_i_3
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(ReadState1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__1_i_4
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(ReadState1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ReadState1_carry__2
       (.CI(ReadState1_carry__1_n_0),
        .CO({NLW_ReadState1_carry__2_CO_UNCONNECTED[3],ReadState1,ReadState1_carry__2_n_2,ReadState1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i_reg[31],1'b0,1'b0}),
        .O(NLW_ReadState1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,ReadState1_carry__2_i_1_n_0,ReadState1_carry__2_i_2_n_0,ReadState1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__2_i_1
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(ReadState1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__2_i_2
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(ReadState1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry__2_i_3
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(ReadState1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry_i_1
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(ReadState1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ReadState1_carry_i_2
       (.I0(i_reg[3]),
        .O(ReadState1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry_i_3
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(ReadState1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ReadState1_carry_i_4
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(ReadState1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ReadState1_carry_i_5
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(ReadState1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ReadState1_carry_i_6
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(ReadState1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[0]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[0]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[0] ),
        .O(\RightChannel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[0]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[16]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[10]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[10]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[10] ),
        .O(\RightChannel[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[10]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[18]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[11]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[11]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[11] ),
        .O(\RightChannel[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[11]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[19]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[12]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[12]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[12] ),
        .O(\RightChannel[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[12]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[20]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[13]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[13]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[13] ),
        .O(\RightChannel[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[13]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[21]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[14]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[14]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[14] ),
        .O(\RightChannel[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[14]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[22]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[15]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[15]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[15] ),
        .O(\RightChannel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[15]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[23]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[16]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[16]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[16] ),
        .O(\RightChannel[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[16]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[16]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \RightChannel[16]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[17]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[17]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[17] ),
        .O(\RightChannel[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[17]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[17]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \RightChannel[17]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .O(\RightChannel[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[18]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[18]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[18] ),
        .O(\RightChannel[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[18]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[18]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \RightChannel[18]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[19]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[19]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[19] ),
        .O(\RightChannel[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[19]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[19]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \RightChannel[19]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[1]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[1]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[1] ),
        .O(\RightChannel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[1]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[17]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[20]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[20]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[20] ),
        .O(\RightChannel[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[20]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[20]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \RightChannel[20]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[21]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[21]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[21] ),
        .O(\RightChannel[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[21]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[21]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \RightChannel[21]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .O(\RightChannel[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[22]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[22]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[22] ),
        .O(\RightChannel[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[22]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[22]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \RightChannel[22]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[23]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[23]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[23] ),
        .O(\RightChannel[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_10 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .I2(i_reg[30]),
        .I3(i_reg[31]),
        .O(\RightChannel[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_11 
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .I2(i_reg[26]),
        .I3(i_reg[27]),
        .O(\RightChannel[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[23]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[23]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[4]),
        .O(\RightChannel[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \RightChannel[23]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\RightChannel[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RightChannel[23]_i_4 
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .I2(i_reg[5]),
        .I3(\RightChannel[23]_i_6_n_0 ),
        .I4(\RightChannel[23]_i_7_n_0 ),
        .O(\RightChannel[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \RightChannel[23]_i_5 
       (.I0(\RightChannel[23]_i_8_n_0 ),
        .I1(i_reg[17]),
        .I2(i_reg[16]),
        .I3(\RightChannel[23]_i_9_n_0 ),
        .I4(\RightChannel[23]_i_10_n_0 ),
        .I5(\RightChannel[23]_i_11_n_0 ),
        .O(\RightChannel[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_6 
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .I2(i_reg[15]),
        .I3(i_reg[14]),
        .O(\RightChannel[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_7 
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .I2(i_reg[11]),
        .I3(i_reg[10]),
        .O(\RightChannel[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \RightChannel[23]_i_8 
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .I2(i_reg[23]),
        .I3(i_reg[22]),
        .O(\RightChannel[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \RightChannel[23]_i_9 
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(\RightChannel[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[2]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[2]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[2] ),
        .O(\RightChannel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[2]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[18]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[3]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[3]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[3] ),
        .O(\RightChannel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[3]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[19]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[4]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[4]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[4] ),
        .O(\RightChannel[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[4]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[20]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[5]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[5]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[5] ),
        .O(\RightChannel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[5]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[21]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[6]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[6]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[6] ),
        .O(\RightChannel[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[6]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[22]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[7]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[7]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[7] ),
        .O(\RightChannel[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \RightChannel[7]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[23]_i_3_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .I4(\RightChannel[23]_i_4_n_0 ),
        .I5(\RightChannel[23]_i_5_n_0 ),
        .O(\RightChannel[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[8]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[8]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[8] ),
        .O(\RightChannel[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[8]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[16]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \RightChannel[9]_i_1 
       (.I0(validSDin),
        .I1(ReadState130_out__0),
        .I2(\RightChannel[9]_i_2_n_0 ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .I5(\RightChannel_reg_n_0_[9] ),
        .O(\RightChannel[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \RightChannel[9]_i_2 
       (.I0(ReadState1),
        .I1(\RightChannel[17]_i_3_n_0 ),
        .I2(i_reg[4]),
        .I3(\RightChannel[23]_i_4_n_0 ),
        .I4(\RightChannel[23]_i_5_n_0 ),
        .I5(i_reg[3]),
        .O(\RightChannel[9]_i_2_n_0 ));
  FDRE \RightChannel_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[0]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RightChannel_reg[10] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[10]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \RightChannel_reg[11] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[11]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \RightChannel_reg[12] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[12]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \RightChannel_reg[13] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[13]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \RightChannel_reg[14] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[14]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \RightChannel_reg[15] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[15]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \RightChannel_reg[16] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[16]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \RightChannel_reg[17] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[17]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \RightChannel_reg[18] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[18]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \RightChannel_reg[19] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[19]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \RightChannel_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[1]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \RightChannel_reg[20] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[20]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \RightChannel_reg[21] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[21]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \RightChannel_reg[22] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[22]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \RightChannel_reg[23] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[23]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \RightChannel_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[2]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \RightChannel_reg[3] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[3]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \RightChannel_reg[4] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[4]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \RightChannel_reg[5] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[5]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \RightChannel_reg[6] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[6]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \RightChannel_reg[7] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[7]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \RightChannel_reg[8] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[8]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \RightChannel_reg[9] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(\RightChannel[9]_i_1_n_0 ),
        .Q(\RightChannel_reg_n_0_[9] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_5 SDin_FF1
       (.D(D),
        .fpga_clk(fpga_clk),
        .sdata_in(sdata_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_6 SDin_FF2
       (.D(D),
        .Q_reg_0(SDin_FF2_n_0),
        .fpga_clk(fpga_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_7 SDin_FF3
       (.Q_reg_0(SDin_FF3_n_0),
        .Q_reg_1(SDin_FF2_n_0),
        .fpga_clk(fpga_clk),
        .p_0_in(p_0_in),
        .rst(rst),
        .validSDin(validSDin));
  FDRE \audio_l_pl_reg[0] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[0] ),
        .Q(audio_l_pl[0]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[10] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[10] ),
        .Q(audio_l_pl[10]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[11] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[11] ),
        .Q(audio_l_pl[11]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[12] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[12] ),
        .Q(audio_l_pl[12]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[13] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[13] ),
        .Q(audio_l_pl[13]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[14] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[14] ),
        .Q(audio_l_pl[14]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[15] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[15] ),
        .Q(audio_l_pl[15]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[16] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[16] ),
        .Q(audio_l_pl[16]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[17] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[17] ),
        .Q(audio_l_pl[17]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[18] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[18] ),
        .Q(audio_l_pl[18]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[19] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[19] ),
        .Q(audio_l_pl[19]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[1] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[1] ),
        .Q(audio_l_pl[1]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[20] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[20] ),
        .Q(audio_l_pl[20]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[21] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[21] ),
        .Q(audio_l_pl[21]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[22] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[22] ),
        .Q(audio_l_pl[22]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[23] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[23] ),
        .Q(audio_l_pl[23]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[2] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[2] ),
        .Q(audio_l_pl[2]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[3] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[3] ),
        .Q(audio_l_pl[3]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[4] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[4] ),
        .Q(audio_l_pl[4]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[5] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[5] ),
        .Q(audio_l_pl[5]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[6] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[6] ),
        .Q(audio_l_pl[6]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[7] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[7] ),
        .Q(audio_l_pl[7]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[8] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[8] ),
        .Q(audio_l_pl[8]),
        .R(1'b0));
  FDRE \audio_l_pl_reg[9] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\LeftChannel_reg_n_0_[9] ),
        .Q(audio_l_pl[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000400)) 
    \audio_r_pl[23]_i_1 
       (.I0(ignore_reg_n_0),
        .I1(p_0_in29_in),
        .I2(ReadState1),
        .I3(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I4(rst),
        .O(\audio_r_pl[23]_i_1_n_0 ));
  FDRE \audio_r_pl_reg[0] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[0] ),
        .Q(audio_r_pl[0]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[10] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[10] ),
        .Q(audio_r_pl[10]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[11] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[11] ),
        .Q(audio_r_pl[11]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[12] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[12] ),
        .Q(audio_r_pl[12]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[13] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[13] ),
        .Q(audio_r_pl[13]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[14] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[14] ),
        .Q(audio_r_pl[14]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[15] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[15] ),
        .Q(audio_r_pl[15]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[16] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[16] ),
        .Q(audio_r_pl[16]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[17] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[17] ),
        .Q(audio_r_pl[17]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[18] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[18] ),
        .Q(audio_r_pl[18]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[19] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[19] ),
        .Q(audio_r_pl[19]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[1] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[1] ),
        .Q(audio_r_pl[1]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[20] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[20] ),
        .Q(audio_r_pl[20]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[21] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[21] ),
        .Q(audio_r_pl[21]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[22] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[22] ),
        .Q(audio_r_pl[22]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[23] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[23] ),
        .Q(audio_r_pl[23]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[2] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[2] ),
        .Q(audio_r_pl[2]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[3] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[3] ),
        .Q(audio_r_pl[3]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[4] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[4] ),
        .Q(audio_r_pl[4]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[5] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[5] ),
        .Q(audio_r_pl[5]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[6] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[6] ),
        .Q(audio_r_pl[6]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[7] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[7] ),
        .Q(audio_r_pl[7]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[8] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[8] ),
        .Q(audio_r_pl[8]),
        .R(1'b0));
  FDRE \audio_r_pl_reg[9] 
       (.C(fpga_clk),
        .CE(\audio_r_pl[23]_i_1_n_0 ),
        .D(\RightChannel_reg_n_0_[9] ),
        .Q(audio_r_pl[9]),
        .R(1'b0));
  FDRE \bResults_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_FF2_n_2),
        .Q(\bResults_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bResults_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_FF2_n_1),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE \bResults_reg[2] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_FF2_n_3),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000008FFF8888)) 
    holdvalid_i_1
       (.I0(audio_valid_adau),
        .I1(\FSM_onehot_WriteState_reg_n_0_[0] ),
        .I2(holdvalid_i_2_n_0),
        .I3(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I4(holdvalid_reg_n_0),
        .I5(rst),
        .O(holdvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    holdvalid_i_2
       (.I0(o_reg[31]),
        .I1(\bResults_reg_n_0_[0] ),
        .I2(ignoreWrite_reg_n_0),
        .O(holdvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    holdvalid_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(holdvalid_i_1_n_0),
        .Q(holdvalid_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \i[0]_i_1 
       (.I0(ignore_reg_n_0),
        .I1(p_0_in29_in),
        .I2(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I3(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .O(i));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[3]),
        .O(\i[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[2]),
        .O(\i[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[1]),
        .O(\i[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \i[0]_i_6 
       (.I0(i_reg[0]),
        .I1(ReadState1),
        .O(\i[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[15]),
        .O(\i[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[14]),
        .O(\i[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[13]),
        .O(\i[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[12]),
        .O(\i[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[19]),
        .O(\i[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[18]),
        .O(\i[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[17]),
        .O(\i[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[16]),
        .O(\i[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[23]),
        .O(\i[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[22]),
        .O(\i[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[21]),
        .O(\i[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[20]),
        .O(\i[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[27]),
        .O(\i[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[26]),
        .O(\i[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[25]),
        .O(\i[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[24]),
        .O(\i[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[31]),
        .O(\i[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[30]),
        .O(\i[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[29]),
        .O(\i[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[28]),
        .O(\i[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[7]),
        .O(\i[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[6]),
        .O(\i[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[5]),
        .O(\i[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[4]),
        .O(\i[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_2 
       (.I0(ReadState1),
        .I1(i_reg[11]),
        .O(\i[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_3 
       (.I0(ReadState1),
        .I1(i_reg[10]),
        .O(\i[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_4 
       (.I0(ReadState1),
        .I1(i_reg[9]),
        .O(\i[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_5 
       (.I0(ReadState1),
        .I1(i_reg[8]),
        .O(\i[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2_n_0 ,\i_reg[0]_i_2_n_1 ,\i_reg[0]_i_2_n_2 ,\i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,ReadState1}),
        .O({\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({\i[0]_i_3_n_0 ,\i[0]_i_4_n_0 ,\i[0]_i_5_n_0 ,\i[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S({\i[12]_i_2_n_0 ,\i[12]_i_3_n_0 ,\i[12]_i_4_n_0 ,\i[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S({\i[16]_i_2_n_0 ,\i[16]_i_3_n_0 ,\i[16]_i_4_n_0 ,\i[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S({\i[20]_i_2_n_0 ,\i[20]_i_3_n_0 ,\i[20]_i_4_n_0 ,\i[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S({\i[24]_i_2_n_0 ,\i[24]_i_3_n_0 ,\i[24]_i_4_n_0 ,\i[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_reg[28]_i_1_CO_UNCONNECTED [3],\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S({\i[28]_i_2_n_0 ,\i[28]_i_3_n_0 ,\i[28]_i_4_n_0 ,\i[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[0]_i_2_n_4 ),
        .Q(i_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S({\i[4]_i_2_n_0 ,\i[4]_i_3_n_0 ,\i[4]_i_4_n_0 ,\i[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S({\i[8]_i_2_n_0 ,\i[8]_i_3_n_0 ,\i[8]_i_4_n_0 ,\i[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(fpga_clk),
        .CE(i),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h5700570057A85700)) 
    ignoreWrite_i_1
       (.I0(ignoreWrite_i_2_n_0),
        .I1(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I2(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I3(ignoreWrite_reg_n_0),
        .I4(\bResults_reg_n_0_[0] ),
        .I5(o_reg[31]),
        .O(ignoreWrite_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    ignoreWrite_i_2
       (.I0(holdvalid_reg_n_0),
        .I1(audio_valid_adau),
        .I2(rst),
        .O(ignoreWrite_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ignoreWrite_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(ignoreWrite_i_1_n_0),
        .Q(ignoreWrite_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF00001111E000)) 
    ignore_i_1
       (.I0(\FSM_onehot_ReadState_reg_n_0_[2] ),
        .I1(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I2(ReadState1),
        .I3(p_0_in29_in),
        .I4(ignore_reg_n_0),
        .I5(rst),
        .O(ignore_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ignore_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(ignore_i_1_n_0),
        .Q(ignore_reg_n_0),
        .R(1'b0));
  FDRE \lrResults_reg[0] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(LRCLK_FF2_n_2),
        .Q(\lrResults_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lrResults_reg[1] 
       (.C(fpga_clk),
        .CE(1'b1),
        .D(LRCLK_FF2_n_1),
        .Q(p_2_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE00000)) 
    \o[0]_i_1 
       (.I0(holdvalid_reg_n_0),
        .I1(audio_valid_adau),
        .I2(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I3(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I4(\bResults_reg_n_0_[0] ),
        .I5(ignoreWrite_reg_n_0),
        .O(\o[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \o[0]_i_10 
       (.I0(o_reg[0]),
        .I1(o_reg[31]),
        .O(\o[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[0]_i_3 
       (.I0(o_reg[3]),
        .I1(o_reg[31]),
        .O(\o[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o[0]_i_4 
       (.I0(o_reg[31]),
        .I1(o_reg[2]),
        .O(\o[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o[0]_i_5 
       (.I0(o_reg[31]),
        .I1(o_reg[1]),
        .O(\o[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o[0]_i_6 
       (.I0(o_reg[31]),
        .I1(o_reg[0]),
        .O(\o[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[0]_i_7 
       (.I0(o_reg[3]),
        .I1(o_reg[31]),
        .O(\o[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \o[0]_i_8 
       (.I0(o_reg[2]),
        .I1(o_reg[31]),
        .O(\o[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \o[0]_i_9 
       (.I0(o_reg[1]),
        .I1(o_reg[31]),
        .O(\o[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[12]_i_2 
       (.I0(\o_reg_n_0_[15] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[12]_i_3 
       (.I0(\o_reg_n_0_[14] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[12]_i_4 
       (.I0(\o_reg_n_0_[13] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[12]_i_5 
       (.I0(\o_reg_n_0_[12] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[12]_i_6 
       (.I0(\o_reg_n_0_[15] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[12]_i_7 
       (.I0(\o_reg_n_0_[14] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[12]_i_8 
       (.I0(\o_reg_n_0_[13] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[12]_i_9 
       (.I0(\o_reg_n_0_[12] ),
        .I1(o_reg[31]),
        .O(\o[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[16]_i_2 
       (.I0(\o_reg_n_0_[19] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[16]_i_3 
       (.I0(\o_reg_n_0_[18] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[16]_i_4 
       (.I0(\o_reg_n_0_[17] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[16]_i_5 
       (.I0(\o_reg_n_0_[16] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[16]_i_6 
       (.I0(\o_reg_n_0_[19] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[16]_i_7 
       (.I0(\o_reg_n_0_[18] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[16]_i_8 
       (.I0(\o_reg_n_0_[17] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[16]_i_9 
       (.I0(\o_reg_n_0_[16] ),
        .I1(o_reg[31]),
        .O(\o[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[20]_i_2 
       (.I0(\o_reg_n_0_[23] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[20]_i_3 
       (.I0(\o_reg_n_0_[22] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[20]_i_4 
       (.I0(\o_reg_n_0_[21] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[20]_i_5 
       (.I0(\o_reg_n_0_[20] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[20]_i_6 
       (.I0(\o_reg_n_0_[23] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[20]_i_7 
       (.I0(\o_reg_n_0_[22] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[20]_i_8 
       (.I0(\o_reg_n_0_[21] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[20]_i_9 
       (.I0(\o_reg_n_0_[20] ),
        .I1(o_reg[31]),
        .O(\o[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[24]_i_2 
       (.I0(\o_reg_n_0_[27] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[24]_i_3 
       (.I0(\o_reg_n_0_[26] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[24]_i_4 
       (.I0(\o_reg_n_0_[25] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[24]_i_5 
       (.I0(\o_reg_n_0_[24] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[24]_i_6 
       (.I0(\o_reg_n_0_[27] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[24]_i_7 
       (.I0(\o_reg_n_0_[26] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[24]_i_8 
       (.I0(\o_reg_n_0_[25] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[24]_i_9 
       (.I0(\o_reg_n_0_[24] ),
        .I1(o_reg[31]),
        .O(\o[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[28]_i_2 
       (.I0(\o_reg_n_0_[30] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[28]_i_3 
       (.I0(\o_reg_n_0_[29] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[28]_i_4 
       (.I0(\o_reg_n_0_[28] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o[28]_i_5 
       (.I0(o_reg[31]),
        .O(WriteState1));
  LUT2 #(
    .INIT(4'h1)) 
    \o[28]_i_6 
       (.I0(\o_reg_n_0_[30] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[28]_i_7 
       (.I0(\o_reg_n_0_[29] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[28]_i_8 
       (.I0(\o_reg_n_0_[28] ),
        .I1(o_reg[31]),
        .O(\o[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[4]_i_2 
       (.I0(\o_reg_n_0_[7] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[4]_i_3 
       (.I0(\o_reg_n_0_[6] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[4]_i_4 
       (.I0(\o_reg_n_0_[5] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o[4]_i_5 
       (.I0(o_reg[31]),
        .I1(o_reg[4]),
        .O(\o[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[4]_i_6 
       (.I0(\o_reg_n_0_[7] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[4]_i_7 
       (.I0(\o_reg_n_0_[6] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[4]_i_8 
       (.I0(\o_reg_n_0_[5] ),
        .I1(o_reg[31]),
        .O(\o[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \o[4]_i_9 
       (.I0(o_reg[4]),
        .I1(o_reg[31]),
        .O(\o[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[8]_i_2 
       (.I0(\o_reg_n_0_[11] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[8]_i_3 
       (.I0(\o_reg_n_0_[10] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[8]_i_4 
       (.I0(\o_reg_n_0_[9] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o[8]_i_5 
       (.I0(\o_reg_n_0_[8] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[8]_i_6 
       (.I0(\o_reg_n_0_[11] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[8]_i_7 
       (.I0(\o_reg_n_0_[10] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[8]_i_8 
       (.I0(\o_reg_n_0_[9] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o[8]_i_9 
       (.I0(\o_reg_n_0_[8] ),
        .I1(o_reg[31]),
        .O(\o[8]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \o_reg[0] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[0]_i_2_n_7 ),
        .Q(o_reg[0]),
        .S(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\o_reg[0]_i_2_n_0 ,\o_reg[0]_i_2_n_1 ,\o_reg[0]_i_2_n_2 ,\o_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[0]_i_3_n_0 ,\o[0]_i_4_n_0 ,\o[0]_i_5_n_0 ,\o[0]_i_6_n_0 }),
        .O({\o_reg[0]_i_2_n_4 ,\o_reg[0]_i_2_n_5 ,\o_reg[0]_i_2_n_6 ,\o_reg[0]_i_2_n_7 }),
        .S({\o[0]_i_7_n_0 ,\o[0]_i_8_n_0 ,\o[0]_i_9_n_0 ,\o[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[10] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[8]_i_1_n_5 ),
        .Q(\o_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[11] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[8]_i_1_n_4 ),
        .Q(\o_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[12] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[12]_i_1_n_7 ),
        .Q(\o_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[12]_i_1 
       (.CI(\o_reg[8]_i_1_n_0 ),
        .CO({\o_reg[12]_i_1_n_0 ,\o_reg[12]_i_1_n_1 ,\o_reg[12]_i_1_n_2 ,\o_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[12]_i_2_n_0 ,\o[12]_i_3_n_0 ,\o[12]_i_4_n_0 ,\o[12]_i_5_n_0 }),
        .O({\o_reg[12]_i_1_n_4 ,\o_reg[12]_i_1_n_5 ,\o_reg[12]_i_1_n_6 ,\o_reg[12]_i_1_n_7 }),
        .S({\o[12]_i_6_n_0 ,\o[12]_i_7_n_0 ,\o[12]_i_8_n_0 ,\o[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[13] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[12]_i_1_n_6 ),
        .Q(\o_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[14] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[12]_i_1_n_5 ),
        .Q(\o_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[15] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[12]_i_1_n_4 ),
        .Q(\o_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[16] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[16]_i_1_n_7 ),
        .Q(\o_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[16]_i_1 
       (.CI(\o_reg[12]_i_1_n_0 ),
        .CO({\o_reg[16]_i_1_n_0 ,\o_reg[16]_i_1_n_1 ,\o_reg[16]_i_1_n_2 ,\o_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[16]_i_2_n_0 ,\o[16]_i_3_n_0 ,\o[16]_i_4_n_0 ,\o[16]_i_5_n_0 }),
        .O({\o_reg[16]_i_1_n_4 ,\o_reg[16]_i_1_n_5 ,\o_reg[16]_i_1_n_6 ,\o_reg[16]_i_1_n_7 }),
        .S({\o[16]_i_6_n_0 ,\o[16]_i_7_n_0 ,\o[16]_i_8_n_0 ,\o[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[17] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[16]_i_1_n_6 ),
        .Q(\o_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[18] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[16]_i_1_n_5 ),
        .Q(\o_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[19] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[16]_i_1_n_4 ),
        .Q(\o_reg_n_0_[19] ),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \o_reg[1] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[0]_i_2_n_6 ),
        .Q(o_reg[1]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[20] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[20]_i_1_n_7 ),
        .Q(\o_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[20]_i_1 
       (.CI(\o_reg[16]_i_1_n_0 ),
        .CO({\o_reg[20]_i_1_n_0 ,\o_reg[20]_i_1_n_1 ,\o_reg[20]_i_1_n_2 ,\o_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[20]_i_2_n_0 ,\o[20]_i_3_n_0 ,\o[20]_i_4_n_0 ,\o[20]_i_5_n_0 }),
        .O({\o_reg[20]_i_1_n_4 ,\o_reg[20]_i_1_n_5 ,\o_reg[20]_i_1_n_6 ,\o_reg[20]_i_1_n_7 }),
        .S({\o[20]_i_6_n_0 ,\o[20]_i_7_n_0 ,\o[20]_i_8_n_0 ,\o[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[21] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[20]_i_1_n_6 ),
        .Q(\o_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[22] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[20]_i_1_n_5 ),
        .Q(\o_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[23] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[20]_i_1_n_4 ),
        .Q(\o_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[24] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[24]_i_1_n_7 ),
        .Q(\o_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[24]_i_1 
       (.CI(\o_reg[20]_i_1_n_0 ),
        .CO({\o_reg[24]_i_1_n_0 ,\o_reg[24]_i_1_n_1 ,\o_reg[24]_i_1_n_2 ,\o_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[24]_i_2_n_0 ,\o[24]_i_3_n_0 ,\o[24]_i_4_n_0 ,\o[24]_i_5_n_0 }),
        .O({\o_reg[24]_i_1_n_4 ,\o_reg[24]_i_1_n_5 ,\o_reg[24]_i_1_n_6 ,\o_reg[24]_i_1_n_7 }),
        .S({\o[24]_i_6_n_0 ,\o[24]_i_7_n_0 ,\o[24]_i_8_n_0 ,\o[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[25] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[24]_i_1_n_6 ),
        .Q(\o_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[26] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[24]_i_1_n_5 ),
        .Q(\o_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[27] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[24]_i_1_n_4 ),
        .Q(\o_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[28] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[28]_i_1_n_7 ),
        .Q(\o_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[28]_i_1 
       (.CI(\o_reg[24]_i_1_n_0 ),
        .CO({\NLW_o_reg[28]_i_1_CO_UNCONNECTED [3],\o_reg[28]_i_1_n_1 ,\o_reg[28]_i_1_n_2 ,\o_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o[28]_i_2_n_0 ,\o[28]_i_3_n_0 ,\o[28]_i_4_n_0 }),
        .O({\o_reg[28]_i_1_n_4 ,\o_reg[28]_i_1_n_5 ,\o_reg[28]_i_1_n_6 ,\o_reg[28]_i_1_n_7 }),
        .S({WriteState1,\o[28]_i_6_n_0 ,\o[28]_i_7_n_0 ,\o[28]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[29] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[28]_i_1_n_6 ),
        .Q(\o_reg_n_0_[29] ),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \o_reg[2] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[0]_i_2_n_5 ),
        .Q(o_reg[2]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[30] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[28]_i_1_n_5 ),
        .Q(\o_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[31] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[28]_i_1_n_4 ),
        .Q(o_reg[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[3] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[0]_i_2_n_4 ),
        .Q(o_reg[3]),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \o_reg[4] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[4]_i_1_n_7 ),
        .Q(o_reg[4]),
        .S(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[4]_i_1 
       (.CI(\o_reg[0]_i_2_n_0 ),
        .CO({\o_reg[4]_i_1_n_0 ,\o_reg[4]_i_1_n_1 ,\o_reg[4]_i_1_n_2 ,\o_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[4]_i_2_n_0 ,\o[4]_i_3_n_0 ,\o[4]_i_4_n_0 ,\o[4]_i_5_n_0 }),
        .O({\o_reg[4]_i_1_n_4 ,\o_reg[4]_i_1_n_5 ,\o_reg[4]_i_1_n_6 ,\o_reg[4]_i_1_n_7 }),
        .S({\o[4]_i_6_n_0 ,\o[4]_i_7_n_0 ,\o[4]_i_8_n_0 ,\o[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[5] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[4]_i_1_n_6 ),
        .Q(\o_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[6] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[4]_i_1_n_5 ),
        .Q(\o_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[7] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[4]_i_1_n_4 ),
        .Q(\o_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[8] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[8]_i_1_n_7 ),
        .Q(\o_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_reg[8]_i_1 
       (.CI(\o_reg[4]_i_1_n_0 ),
        .CO({\o_reg[8]_i_1_n_0 ,\o_reg[8]_i_1_n_1 ,\o_reg[8]_i_1_n_2 ,\o_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o[8]_i_2_n_0 ,\o[8]_i_3_n_0 ,\o[8]_i_4_n_0 ,\o[8]_i_5_n_0 }),
        .O({\o_reg[8]_i_1_n_4 ,\o_reg[8]_i_1_n_5 ,\o_reg[8]_i_1_n_6 ,\o_reg[8]_i_1_n_7 }),
        .S({\o[8]_i_6_n_0 ,\o[8]_i_7_n_0 ,\o[8]_i_8_n_0 ,\o[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[9] 
       (.C(fpga_clk),
        .CE(\o[0]_i_1_n_0 ),
        .D(\o_reg[8]_i_1_n_6 ),
        .Q(\o_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    sdata_out_i_1
       (.I0(sdata_out_i_2_n_0),
        .I1(sdata_out_i_3_n_0),
        .I2(rst),
        .I3(WriteState11_in),
        .I4(sdata_out_i_5_n_0),
        .I5(sdata_out),
        .O(sdata_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_11
       (.I0(audio_l_adau[3]),
        .I1(audio_l_adau[2]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[1]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[0]),
        .O(sdata_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_12
       (.I0(audio_l_adau[7]),
        .I1(audio_l_adau[6]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[5]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[4]),
        .O(sdata_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_13
       (.I0(audio_l_adau[11]),
        .I1(audio_l_adau[10]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[9]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[8]),
        .O(sdata_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_14
       (.I0(audio_l_adau[15]),
        .I1(audio_l_adau[14]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[13]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[12]),
        .O(sdata_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_15
       (.I0(audio_l_adau[19]),
        .I1(audio_l_adau[18]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[17]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[16]),
        .O(sdata_out_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_16
       (.I0(audio_l_adau[23]),
        .I1(audio_l_adau[22]),
        .I2(o_reg[1]),
        .I3(audio_l_adau[21]),
        .I4(o_reg[0]),
        .I5(audio_l_adau[20]),
        .O(sdata_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_17
       (.I0(audio_r_adau[19]),
        .I1(audio_r_adau[18]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[17]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[16]),
        .O(sdata_out_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_18
       (.I0(audio_r_adau[23]),
        .I1(audio_r_adau[22]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[21]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[20]),
        .O(sdata_out_i_18_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    sdata_out_i_2
       (.I0(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I1(sdata_out_reg_i_6_n_0),
        .I2(o_reg[3]),
        .I3(sdata_out_reg_i_7_n_0),
        .I4(o_reg[4]),
        .I5(sdata_out_reg_i_8_n_0),
        .O(sdata_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_21
       (.I0(audio_r_adau[3]),
        .I1(audio_r_adau[2]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[1]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[0]),
        .O(sdata_out_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_22
       (.I0(audio_r_adau[7]),
        .I1(audio_r_adau[6]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[5]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[4]),
        .O(sdata_out_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_23
       (.I0(audio_r_adau[11]),
        .I1(audio_r_adau[10]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[9]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[8]),
        .O(sdata_out_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_out_i_24
       (.I0(audio_r_adau[15]),
        .I1(audio_r_adau[14]),
        .I2(o_reg[1]),
        .I3(audio_r_adau[13]),
        .I4(o_reg[0]),
        .I5(audio_r_adau[12]),
        .O(sdata_out_i_24_n_0));
  LUT5 #(
    .INIT(32'h20222000)) 
    sdata_out_i_3
       (.I0(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .I1(o_reg[31]),
        .I2(sdata_out_reg_i_9_n_0),
        .I3(o_reg[4]),
        .I4(sdata_out_reg_i_10_n_0),
        .O(sdata_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sdata_out_i_4
       (.I0(audio_valid_adau),
        .I1(holdvalid_reg_n_0),
        .O(WriteState11_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00F00040)) 
    sdata_out_i_5
       (.I0(o_reg[31]),
        .I1(\FSM_onehot_WriteState_reg_n_0_[2] ),
        .I2(\bResults_reg_n_0_[0] ),
        .I3(ignoreWrite_reg_n_0),
        .I4(\FSM_onehot_WriteState_reg_n_0_[5] ),
        .O(sdata_out_i_5_n_0));
  FDRE sdata_out_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(sdata_out_i_1_n_0),
        .Q(sdata_out),
        .R(1'b0));
  MUXF8 sdata_out_reg_i_10
       (.I0(sdata_out_reg_i_19_n_0),
        .I1(sdata_out_reg_i_20_n_0),
        .O(sdata_out_reg_i_10_n_0),
        .S(o_reg[3]));
  MUXF7 sdata_out_reg_i_19
       (.I0(sdata_out_i_21_n_0),
        .I1(sdata_out_i_22_n_0),
        .O(sdata_out_reg_i_19_n_0),
        .S(o_reg[2]));
  MUXF7 sdata_out_reg_i_20
       (.I0(sdata_out_i_23_n_0),
        .I1(sdata_out_i_24_n_0),
        .O(sdata_out_reg_i_20_n_0),
        .S(o_reg[2]));
  MUXF7 sdata_out_reg_i_6
       (.I0(sdata_out_i_11_n_0),
        .I1(sdata_out_i_12_n_0),
        .O(sdata_out_reg_i_6_n_0),
        .S(o_reg[2]));
  MUXF7 sdata_out_reg_i_7
       (.I0(sdata_out_i_13_n_0),
        .I1(sdata_out_i_14_n_0),
        .O(sdata_out_reg_i_7_n_0),
        .S(o_reg[2]));
  MUXF7 sdata_out_reg_i_8
       (.I0(sdata_out_i_15_n_0),
        .I1(sdata_out_i_16_n_0),
        .O(sdata_out_reg_i_8_n_0),
        .S(o_reg[2]));
  MUXF7 sdata_out_reg_i_9
       (.I0(sdata_out_i_17_n_0),
        .I1(sdata_out_i_18_n_0),
        .O(sdata_out_reg_i_9_n_0),
        .S(o_reg[2]));
  FDRE validBCLK_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(BCLK_FF3_n_1),
        .Q(validBCLK_reg_n_0),
        .R(1'b0));
  FDRE validLRCLK_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(LRCLK_FF3_n_1),
        .Q(validLRCLK),
        .R(1'b0));
  FDRE validSDin_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(SDin_FF3_n_0),
        .Q(validSDin),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000CC00AEAA)) 
    validbit_i_1
       (.I0(audio_valid_pl),
        .I1(\FSM_onehot_ReadState_reg_n_0_[5] ),
        .I2(ReadState1),
        .I3(ReadState130_out__0),
        .I4(\FSM_onehot_ReadState_reg_n_0_[0] ),
        .I5(rst),
        .O(validbit_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    validbit_i_2
       (.I0(p_0_in29_in),
        .I1(ignore_reg_n_0),
        .O(ReadState130_out__0));
  FDRE #(
    .INIT(1'b0)) 
    validbit_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(validbit_i_1_n_0),
        .Q(audio_valid_pl),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop
   (Q_reg_0,
    bclk,
    fpga_clk);
  output Q_reg_0;
  input bclk;
  input fpga_clk;

  wire Q_reg_0;
  wire bclk;
  wire fpga_clk;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(bclk),
        .Q(Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_0
   (Q_reg_0,
    Q_reg_1,
    validBCLK_reg,
    Q_reg_2,
    Q_reg_3,
    fpga_clk,
    \bResults_reg[1] ,
    BCLK_q2d_3,
    rst);
  output Q_reg_0;
  output Q_reg_1;
  output validBCLK_reg;
  output Q_reg_2;
  input Q_reg_3;
  input fpga_clk;
  input \bResults_reg[1] ;
  input BCLK_q2d_3;
  input rst;

  wire BCLK_q2d_3;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire \bResults_reg[1] ;
  wire fpga_clk;
  wire rst;
  wire validBCLK_reg;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(Q_reg_3),
        .Q(Q_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bResults[0]_i_1 
       (.I0(\bResults_reg[1] ),
        .I1(Q_reg_0),
        .I2(Q_reg_3),
        .I3(BCLK_q2d_3),
        .I4(rst),
        .O(validBCLK_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \bResults[1]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(\bResults_reg[1] ),
        .I3(BCLK_q2d_3),
        .I4(rst),
        .O(Q_reg_1));
  LUT4 #(
    .INIT(16'h0081)) 
    \bResults[2]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(BCLK_q2d_3),
        .I3(rst),
        .O(Q_reg_2));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_1
   (BCLK_q2d_3,
    Q_reg_0,
    Q_reg_1,
    fpga_clk,
    p_0_in,
    rst,
    validBCLK_reg);
  output BCLK_q2d_3;
  output Q_reg_0;
  input Q_reg_1;
  input fpga_clk;
  input p_0_in;
  input rst;
  input validBCLK_reg;

  wire BCLK_q2d_3;
  wire Q_reg_0;
  wire Q_reg_1;
  wire fpga_clk;
  wire p_0_in;
  wire rst;
  wire validBCLK_reg;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(BCLK_q2d_3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    validBCLK_i_1
       (.I0(BCLK_q2d_3),
        .I1(p_0_in),
        .I2(rst),
        .I3(validBCLK_reg),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_2
   (Q_reg_0,
    lrclk,
    fpga_clk);
  output Q_reg_0;
  input lrclk;
  input fpga_clk;

  wire Q_reg_0;
  wire fpga_clk;
  wire lrclk;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(lrclk),
        .Q(Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_3
   (Q_reg_0,
    Q_reg_1,
    validLRCLK_reg,
    Q_reg_2,
    fpga_clk,
    validLRCLK,
    LRCLK_q2d_3,
    rst);
  output Q_reg_0;
  output Q_reg_1;
  output validLRCLK_reg;
  input Q_reg_2;
  input fpga_clk;
  input validLRCLK;
  input LRCLK_q2d_3;
  input rst;

  wire LRCLK_q2d_3;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire fpga_clk;
  wire rst;
  wire validLRCLK;
  wire validLRCLK_reg;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(Q_reg_2),
        .Q(Q_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \lrResults[0]_i_1 
       (.I0(validLRCLK),
        .I1(Q_reg_0),
        .I2(Q_reg_2),
        .I3(LRCLK_q2d_3),
        .I4(rst),
        .O(validLRCLK_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \lrResults[1]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(validLRCLK),
        .I3(LRCLK_q2d_3),
        .I4(rst),
        .O(Q_reg_1));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_4
   (LRCLK_q2d_3,
    Q_reg_0,
    Q_reg_1,
    fpga_clk,
    p_0_in,
    rst,
    validLRCLK);
  output LRCLK_q2d_3;
  output Q_reg_0;
  input Q_reg_1;
  input fpga_clk;
  input p_0_in;
  input rst;
  input validLRCLK;

  wire LRCLK_q2d_3;
  wire Q_reg_0;
  wire Q_reg_1;
  wire fpga_clk;
  wire p_0_in;
  wire rst;
  wire validLRCLK;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(LRCLK_q2d_3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    validLRCLK_i_1
       (.I0(LRCLK_q2d_3),
        .I1(p_0_in),
        .I2(rst),
        .I3(validLRCLK),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_5
   (D,
    sdata_in,
    fpga_clk);
  output D;
  input sdata_in;
  input fpga_clk;

  wire D;
  wire fpga_clk;
  wire sdata_in;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(sdata_in),
        .Q(D),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_6
   (Q_reg_0,
    D,
    fpga_clk);
  output Q_reg_0;
  input D;
  input fpga_clk;

  wire D;
  wire Q_reg_0;
  wire fpga_clk;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(D),
        .Q(Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flipflop_7
   (Q_reg_0,
    Q_reg_1,
    fpga_clk,
    p_0_in,
    rst,
    validSDin);
  output Q_reg_0;
  input Q_reg_1;
  input fpga_clk;
  input p_0_in;
  input rst;
  input validSDin;

  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_n_0;
  wire fpga_clk;
  wire p_0_in;
  wire rst;
  wire validSDin;

  FDRE Q_reg
       (.C(fpga_clk),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(Q_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    validSDin_i_1
       (.I0(Q_reg_n_0),
        .I1(p_0_in),
        .I2(rst),
        .I3(validSDin),
        .O(Q_reg_0));
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
    sdata_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
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
  wire rst;
  wire sdata_in;
  wire sdata_out;

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
        .rst(rst),
        .sdata_in(sdata_in),
        .sdata_out(sdata_out));
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
