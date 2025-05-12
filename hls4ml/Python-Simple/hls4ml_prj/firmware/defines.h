#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 100
#define N_LAYER_2 32
#define N_LAYER_2 32
#define N_LAYER_4 4


// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<24,12> input_t;
typedef ap_fixed<24,12> model_default_t;
typedef ap_fixed<24,12> layer2_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<24,12> layer3_t;
typedef ap_fixed<18,8> dense_relu_table_t;
typedef ap_fixed<24,12> result_t;
typedef ap_uint<1> layer4_index;


#endif
