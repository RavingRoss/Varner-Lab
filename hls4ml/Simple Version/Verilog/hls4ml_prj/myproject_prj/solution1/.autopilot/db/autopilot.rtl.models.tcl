set SynModuleInfo {
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<18,14,5,3,0>,config2> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s
    SUBMODULES {
      {MODELNAME myproject_mul_30s_18s_34_1_1 RTLNAME myproject_mul_30s_18s_34_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_18s_15s_33_1_1 RTLNAME myproject_mul_18s_15s_33_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s_w2_76_ROM_Nbkb RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config2_s_w2_76_ROM_Nbkb BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_frp_fifoout RTLNAME myproject_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME myproject_frp_pipeline_valid RTLNAME myproject_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME myproject_frp_pipeline_valid_U}
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {relu<ap_fixed<18, 14, 5, 3, 0>, ap_fixed<24, 12, 5, 3, 0>, relu_config3>} MODELNAME relu_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_relu_config3_s RTLNAME myproject_relu_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_relu_config3_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<18,14,5,3,0>,config4> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s
    SUBMODULES {
      {MODELNAME myproject_mul_30s_24s_38_1_1 RTLNAME myproject_mul_30s_24s_38_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_sparsemux_129_6_24_1_1 RTLNAME myproject_sparsemux_129_6_24_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_mul_24s_12s_36_1_1 RTLNAME myproject_mul_24s_12s_36_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s_w4_75_ROM_Ncud RTLNAME myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_18_14_5_3_0_config4_s_w4_75_ROM_Ncud BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {linear<ap_fixed<18, 14, 5, 3, 0>, ap_fixed<24, 12, 5, 3, 0>, linear_config5>} MODELNAME linear_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_linear_config5_s RTLNAME myproject_linear_ap_fixed_18_14_5_3_0_ap_fixed_24_12_5_3_0_linear_config5_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_1_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_2_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_3_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_4_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_5_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_6_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_7_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_8_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_9_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_10_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_11_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_12_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_13_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_14_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_15_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_16_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_17_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_18_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_19_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_20_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_21_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_22_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_23_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_24_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_25_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_26_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_27_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_28_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_29_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_30_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_31_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_32_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_33_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_34_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_35_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_36_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_37_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_38_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_39_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_40_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_41_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_42_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_43_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_44_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_45_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_46_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_47_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_48_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_49_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_50_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_51_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_52_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_53_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_54_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_55_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_56_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_57_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_58_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_59_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_60_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_61_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_62_U}
      {MODELNAME myproject_fifo_w18_d2_S RTLNAME myproject_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_63_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_1_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_2_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_3_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_4_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_5_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_6_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_7_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_8_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_9_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_10_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_11_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_12_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_13_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_14_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_15_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_16_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_17_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_18_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_19_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_20_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_21_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_22_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_23_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_24_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_25_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_26_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_27_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_28_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_29_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_30_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_31_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_32_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_33_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_34_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_35_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_36_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_37_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_38_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_39_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_40_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_41_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_42_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_43_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_44_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_45_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_46_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_47_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_48_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_49_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_50_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_51_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_52_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_53_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_54_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_55_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_56_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_57_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_58_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_59_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_60_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_61_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_62_U}
      {MODELNAME myproject_fifo_w24_d2_S RTLNAME myproject_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_63_U}
      {MODELNAME myproject_fifo_w16_d2_S RTLNAME myproject_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w16_d2_S RTLNAME myproject_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_1_U}
    }
  }
}
