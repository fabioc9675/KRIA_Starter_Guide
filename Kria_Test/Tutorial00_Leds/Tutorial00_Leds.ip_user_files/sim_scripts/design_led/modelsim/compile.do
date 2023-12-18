vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/design_led/ip/design_led_Leds_test_0_0/sim/design_led_Leds_test_0_0.v" \
"../../../bd/design_led/sim/design_led.v" \


vlog -work xil_defaultlib \
"glbl.v"

