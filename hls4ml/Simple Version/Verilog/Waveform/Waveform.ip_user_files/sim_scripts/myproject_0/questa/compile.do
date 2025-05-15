vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s.v" \
"../../../ipstatic/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s_w2_76_ROM_Nbkb.v" \
"../../../ipstatic/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s.v" \
"../../../ipstatic/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s_w4_75_ROM_Ncud.v" \
"../../../ipstatic/hdl/verilog/myproject_fifo_w16_d2_S.v" \
"../../../ipstatic/hdl/verilog/myproject_fifo_w18_d2_S.v" \
"../../../ipstatic/hdl/verilog/myproject_fifo_w24_d2_S.v" \
"../../../ipstatic/hdl/verilog/myproject_flow_control_loop_pipe.v" \
"../../../ipstatic/hdl/verilog/myproject_frp_fifoout.v" \
"../../../ipstatic/hdl/verilog/myproject_frp_pipeline_valid.v" \
"../../../ipstatic/hdl/verilog/myproject_linear_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_linear_config5_s.v" \
"../../../ipstatic/hdl/verilog/myproject_mul_18s_15s_33_1_1.v" \
"../../../ipstatic/hdl/verilog/myproject_mul_24s_12s_36_1_1.v" \
"../../../ipstatic/hdl/verilog/myproject_mul_30s_18s_34_1_1.v" \
"../../../ipstatic/hdl/verilog/myproject_mul_30s_24s_38_1_1.v" \
"../../../ipstatic/hdl/verilog/myproject_relu_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_relu_config3_s.v" \
"../../../ipstatic/hdl/verilog/myproject_sparsemux_129_6_24_1_1.v" \
"../../../ipstatic/hdl/verilog/myproject.v" \
"../../../../Waveform.gen/sources_1/ip/myproject_0/sim/myproject_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

