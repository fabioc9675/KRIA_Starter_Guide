onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xilinx_vip -L xpm -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.pynq_bd xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {pynq_bd.udo}

run 1000ns

quit -force
