#ifndef MYPROJECT_H_
#define MYPROJECT_H_


#include "ap_int.h"

#include "ap_fixed.h"
#include "hls_stream.h"

#include "defines.h"

#include <hls_stream.h>
#include <ap_axi_sdata.h>

#include <iostream>

typedef ap_axis<32,2,5,6> AXI_VALUE_IN;
typedef ap_axis<32,2,5,6> AXI_VALUE_OUT;


// Prototype of top level function for C-synthesis
void GN_inference(
	hls::stream<AXI_VALUE_IN> &input,
//	hls::stream<AXI_VALUE_OUT> &result
	int *result

);


#endif
