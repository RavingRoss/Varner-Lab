-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed May 14 20:14:37 2025
-- Host        : pclab4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/student/Documents/jromeo/FinalProject/Waveform/Waveform/Waveform.gen/sources_1/ip/myproject_1/myproject_1_stub.vhdl
-- Design      : myproject_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity myproject_1 is
  Port ( 
    input_1_ap_vld : in STD_LOGIC;
    layer5_out_0_ap_vld : out STD_LOGIC;
    layer5_out_1_ap_vld : out STD_LOGIC;
    input_1 : in STD_LOGIC_VECTOR ( 1799 downto 0 );
    layer5_out_0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    layer5_out_1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );

end myproject_1;

architecture stub of myproject_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_1_ap_vld,layer5_out_0_ap_vld,layer5_out_1_ap_vld,input_1[1799:0],layer5_out_0[23:0],layer5_out_1[23:0],ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "myproject,Vivado 2023.2";
begin
end;
