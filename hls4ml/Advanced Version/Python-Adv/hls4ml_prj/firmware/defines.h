#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 100
#define N_LAYER_2 128
#define N_LAYER_2 128
#define N_LAYER_4 256
#define N_LAYER_4 256
#define N_LAYER_6 4


// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<20,14> input_t;
typedef ap_fixed<44,26> dense_accum_t;
typedef ap_fixed<44,26> dense_result_t;
typedef ap_fixed<16,4> dense_weight_t;
typedef ap_fixed<16,6> dense_bias_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<20,14> layer3_t;
typedef ap_fixed<18,8> dense_relu_table_t;
typedef ap_fixed<46,28> dense_1_accum_t;
typedef ap_fixed<46,28> dense_1_result_t;
typedef ap_fixed<18,6> dense_1_weight_t;
typedef ap_fixed<14,8> dense_1_bias_t;
typedef ap_uint<1> layer4_index;
typedef ap_fixed<20,14> layer5_t;
typedef ap_fixed<18,8> dense_1_relu_table_t;
typedef ap_fixed<49,29> dense_2_accum_t;
typedef ap_fixed<49,29> result_t;
typedef ap_fixed<20,6> dense_2_weight_t;
typedef ap_fixed<10,8> dense_2_bias_t;
typedef ap_uint<1> layer6_index;


#endif
