set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#Fan Speed Enable
set_property PACKAGE_PIN A12 [get_ports {fan_en_b}]
set_property IOSTANDARD LVCMOS33 [get_ports {fan_en_b}]
set_property SLEW SLOW [get_ports {fan_en_b}]
set_property DRIVE 4 [get_ports {fan_en_b}]

########################## UF User LEDs #############################
set_property PACKAGE_PIN F8 [get_ports {uf_leds_tri_io[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uf_leds_tri_io[0]}]

set_property PACKAGE_PIN E8 [get_ports {uf_leds_tri_io[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {uf_leds_tri_io[1]}]