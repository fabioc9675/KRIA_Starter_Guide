#include "firTop.h"
#include "firCoeff.h"

void fir(data_t *y, data_t *x) {

// #pragma HLS INTERFACE mode=s_axilite port=return

#pragma HLS DATAFLOW
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=firCoeff

#pragma HLS INTERFACE mode=ap_ctrl_hs port=return
// #pragma HLS INTERFACE mode=axis register_mode=both port=x register
// #pragma HLS INTERFACE mode=axis register_mode=both port=y register

	static data_t shift_reg[N];
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=shift_reg

	acc_t acc;
	data_t data;
	int i;

	acc = 0;
	Shift_Accum_Loop: for (i = N - 1; i >= 0; --i) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=4

		if (i == 0) {
			shift_reg[0] = *x;
			data = *x;

		} else {
			shift_reg[i] = shift_reg[i - 1];
			data = shift_reg[i];
		}
		acc += data * firCoeff[i];
	}
	acc = acc >> 16;
	*y = acc;

}
