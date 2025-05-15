`timescale 1ns/1ps

module top (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [1799:0] input_1,
    input  wire        input_1_vld,

    output wire [23:0] layer5_out_0,
    output wire [23:0] layer5_out_1,
    output wire        layer5_out_0_vld,
    output wire        layer5_out_1_vld,
    output wire        done
);

  // internal signals
  wire ap_ready;
  wire ap_idle;

  myproject_0 hls_inst (
    .ap_clk(clk),
    .ap_rst(rst),
    .ap_start(start),
    .ap_done(done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),

    .input_1(input_1),
    .input_1_ap_vld(input_1_vld),

    .layer5_out_0(layer5_out_0),
    .layer5_out_1(layer5_out_1),
    .layer5_out_0_ap_vld(layer5_out_0_vld),
    .layer5_out_1_ap_vld(layer5_out_1_vld)
  );

endmodule
