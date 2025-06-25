#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 161
#define N_LAYER_2 6
#define N_LAYER_5 4
#define N_LAYER_8 2
#define N_LAYER_11 4
#define N_LAYER_14 3
#define N_LAYER_17 2
#define N_LAYER_17 2


// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<8,4> fc1_accum_t;
typedef ap_fixed<8,4> layer2_t;
typedef ap_fixed<8,5> weight2_t;
typedef ap_fixed<8,5> bias2_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<8,4> fc2_accum_t;
typedef ap_fixed<8,4> layer5_t;
typedef ap_fixed<8,5> weight5_t;
typedef ap_fixed<8,5> bias5_t;
typedef ap_uint<1> layer5_index;
typedef ap_fixed<8,4> fc3_accum_t;
typedef ap_fixed<8,4> layer8_t;
typedef ap_fixed<8,5> weight8_t;
typedef ap_fixed<8,5> bias8_t;
typedef ap_uint<1> layer8_index;
typedef ap_fixed<8,4> fc4_accum_t;
typedef ap_fixed<8,4> layer11_t;
typedef ap_fixed<8,5> weight11_t;
typedef ap_fixed<8,5> bias11_t;
typedef ap_uint<1> layer11_index;
typedef ap_fixed<8,4> fc5_accum_t;
typedef ap_fixed<8,4> layer14_t;
typedef ap_fixed<8,5> weight14_t;
typedef ap_fixed<8,5> bias14_t;
typedef ap_uint<1> layer14_index;
typedef ap_fixed<8,4> output_accum_t;
typedef ap_fixed<8,4> layer17_t;
typedef ap_fixed<16,7> weight17_t;
typedef ap_fixed<16,7> bias17_t;
typedef ap_uint<1> layer17_index;
typedef ap_fixed<8,4> result_t;
typedef ap_fixed<18,8> outputActivation_table_t;


#endif
