############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project myproject_prj
set_top myproject
add_files firmware/myproject.cpp -cflags "-std=c++0x"
add_files -tb tb_data -cflags "-Wno-unknown-pragmas"
add_files -tb firmware/weights -cflags "-Wno-unknown-pragmas"
add_files -tb myproject_test.cpp -cflags "-std=c++0x -DRTL_SIM -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200t-sbg484-1}
create_clock -period 15 -name default
config_compile -name_max_length 80
config_schedule -enable_dsp_full_reg=0
set_clock_uncertainty 12.5%
source "./myproject_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -setup -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
