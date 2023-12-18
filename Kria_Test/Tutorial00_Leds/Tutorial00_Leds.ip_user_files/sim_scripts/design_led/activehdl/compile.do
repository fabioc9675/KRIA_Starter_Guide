vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_led/ip/design_led_Leds_test_0_0/sim/design_led_Leds_test_0_0.v" \
"../../../bd/design_led/sim/design_led.v" \


vlog -work xil_defaultlib \
"glbl.v"

