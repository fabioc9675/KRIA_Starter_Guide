onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+tx_fifo  -L xpm -L fifo_generator_v13_2_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tx_fifo xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {tx_fifo.udo}

run 1000ns

endsim

quit -force
