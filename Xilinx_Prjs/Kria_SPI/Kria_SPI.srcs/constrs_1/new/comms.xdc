##################### PMOD 1 Upper ################################
set_property PACKAGE_PIN H12 [get_ports {kria_uart_rxd}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_rxd}] 
                                                                   
set_property PACKAGE_PIN E10 [get_ports {kria_i2c_sda_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_sda_io}] 
set_property PULLUP TRUE [get_ports {kria_i2c_sda_io}]
                                                                   
set_property PACKAGE_PIN D10 [get_ports {kria_spi_io0_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_io0_io}] 
                                                                   
set_property PACKAGE_PIN C11 [get_ports {kria_spi_ss_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_ss_io}] 
                                                                   
##################### PMOD 1 Lower ################################
set_property PACKAGE_PIN B10 [get_ports {kria_uart_txd}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_txd}] 
                                                                   
set_property PACKAGE_PIN E12 [get_ports {kria_i2c_scl_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_scl_io}] 
set_property PULLUP TRUE [get_ports {kria_i2c_scl_io}]
                                                                   
set_property PACKAGE_PIN D11 [get_ports {kria_spi_sck_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_sck_io}] 
                                                                   
set_property PACKAGE_PIN B11 [get_ports {kria_spi_io1_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_io1_io}] 