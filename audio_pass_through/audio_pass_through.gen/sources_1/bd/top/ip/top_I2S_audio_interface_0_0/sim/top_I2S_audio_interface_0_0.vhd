-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:I2S_audio_interface:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_I2S_audio_interface_0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    fpga_clk : IN STD_LOGIC;
    bclk : IN STD_LOGIC;
    lrclk : IN STD_LOGIC;
    sdata_in : IN STD_LOGIC;
    audio_valid_adau : IN STD_LOGIC;
    audio_r_adau : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    audio_l_adau : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    audio_valid_pl : OUT STD_LOGIC;
    audio_r_pl : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    audio_l_pl : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    sdata_out : OUT STD_LOGIC
  );
END top_I2S_audio_interface_0_0;

ARCHITECTURE top_I2S_audio_interface_0_0_arch OF top_I2S_audio_interface_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_I2S_audio_interface_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT I2S_audio_interface IS
    PORT (
      rst : IN STD_LOGIC;
      fpga_clk : IN STD_LOGIC;
      bclk : IN STD_LOGIC;
      lrclk : IN STD_LOGIC;
      sdata_in : IN STD_LOGIC;
      audio_valid_adau : IN STD_LOGIC;
      audio_r_adau : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      audio_l_adau : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      audio_valid_pl : OUT STD_LOGIC;
      audio_r_pl : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      audio_l_pl : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      sdata_out : OUT STD_LOGIC
    );
  END COMPONENT I2S_audio_interface;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_I2S_audio_interface_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpga_clk: SIGNAL IS "XIL_INTERFACENAME fpga_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpga_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpga_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : I2S_audio_interface
    PORT MAP (
      rst => rst,
      fpga_clk => fpga_clk,
      bclk => bclk,
      lrclk => lrclk,
      sdata_in => sdata_in,
      audio_valid_adau => audio_valid_adau,
      audio_r_adau => audio_r_adau,
      audio_l_adau => audio_l_adau,
      audio_valid_pl => audio_valid_pl,
      audio_r_pl => audio_r_pl,
      audio_l_pl => audio_l_pl,
      sdata_out => sdata_out
    );
END top_I2S_audio_interface_0_0_arch;
