#include <iostream>

#include "myproject.h"
#include "parameters.h"


//void myproject(
//    input_t inputLayer[N_INPUT_1_1],
//    result_t layer19_out[N_LAYER_17]
//) {
//
//    // hls-fpga-machine-learning insert IO
//    #pragma HLS ARRAY_RESHAPE variable=inputLayer complete dim=0
//    #pragma HLS ARRAY_PARTITION variable=layer19_out complete dim=0
//    #pragma HLS INTERFACE ap_vld port=inputLayer,layer19_out
//    #pragma HLS PIPELINE

void GN_inference(

	hls::stream<AXI_VALUE_IN> &input,
	int *result

) {
    #pragma HLS INTERFACE mode=ap_ctrl_hs port=return
    #pragma HLS INTERFACE axis register both port=input
    #pragma HLS INTERFACE ap_vld port=result
    #pragma HLS PIPELINE



    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight2_t, 966>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 6>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight5_t, 24>(w5, "w5.txt");
        nnet::load_weights_from_txt<bias5_t, 4>(b5, "b5.txt");
        nnet::load_weights_from_txt<weight8_t, 8>(w8, "w8.txt");
        nnet::load_weights_from_txt<bias8_t, 2>(b8, "b8.txt");
        nnet::load_weights_from_txt<weight11_t, 8>(w11, "w11.txt");
        nnet::load_weights_from_txt<bias11_t, 4>(b11, "b11.txt");
        nnet::load_weights_from_txt<weight14_t, 12>(w14, "w14.txt");
        nnet::load_weights_from_txt<bias14_t, 3>(b14, "b14.txt");
        nnet::load_weights_from_txt<weight17_t, 6>(w17, "w17.txt");
        nnet::load_weights_from_txt<bias17_t, 2>(b17, "b17.txt");
        loaded_weights = true;    }
#endif

    AXI_VALUE_IN valIn;

    input_t inputLayer[N_INPUT_1_1];
    result_t layer19_out[N_LAYER_17];

    #pragma HLS ARRAY_RESHAPE variable=inputLayer complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer19_out complete dim=0

    for(int h=0; h<N_INPUT_1_1; h++){
    #pragma HLS PIPELINE
    	// Read and cache value
    	valIn = input.read();
    	inputLayer[h] = valIn.data;
    }


    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer2_t layer2_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    nnet::dense<input_t, layer2_t, config2>(inputLayer, layer2_out, w2, b2); // fc1

    layer5_t layer5_out[N_LAYER_5];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::dense<layer2_t, layer5_t, config5>(layer2_out, layer5_out, w5, b5); // fc2

    layer8_t layer8_out[N_LAYER_8];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::dense<layer5_t, layer8_t, config8>(layer5_out, layer8_out, w8, b8); // fc3

    layer11_t layer11_out[N_LAYER_11];
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    nnet::dense<layer8_t, layer11_t, config11>(layer8_out, layer11_out, w11, b11); // fc4

    layer14_t layer14_out[N_LAYER_14];
    #pragma HLS ARRAY_PARTITION variable=layer14_out complete dim=0
    nnet::dense<layer11_t, layer14_t, config14>(layer11_out, layer14_out, w14, b14); // fc5

    layer17_t layer17_out[N_LAYER_17];
    #pragma HLS ARRAY_PARTITION variable=layer17_out complete dim=0
    nnet::dense<layer14_t, layer17_t, config17>(layer14_out, layer17_out, w17, b17); // output

    nnet::sigmoid<layer17_t, result_t, sigmoid_config19>(layer17_out, layer19_out); // outputActivation

    int tmpVal = 0;
    if(layer19_out[0] > 0.5){
    	// Value 2 corresponds to class 0 gamma
    	tmpVal = 5;
    	*result = tmpVal;
    }
    else {
    	// Value 3 corresponds to class 1 neutron
    	tmpVal = 3;
    	*result = tmpVal;

    }


}

