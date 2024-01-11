##################### PMOD 1 Upper ################################
set_property PACKAGE_PIN H12 [get_ports {kria_uart_0_rxd}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_0_rxd}] 
                                                                   
set_property PACKAGE_PIN E10 [get_ports {kria_i2c_0_sda_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_0_sda_io}] 
set_property PULLUP TRUE [get_ports {kria_i2c_0_sda_io}]
                                                                   
set_property PACKAGE_PIN D10 [get_ports {kria_spi_0_io0_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_0_io0_io}] 
                                                                   
set_property PACKAGE_PIN C11 [get_ports {kria_spi_0_ss_io[0]}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_0_ss_io[0]}] 
                                                                   
##################### PMOD 1 Lower ################################
set_property PACKAGE_PIN B10 [get_ports {kria_uart_0_txd}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_0_txd}] 
                                                                   
set_property PACKAGE_PIN E12 [get_ports {kria_i2c_0_scl_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_0_scl_io}] 
set_property PULLUP TRUE [get_ports {kria_i2c_0_scl_io}]
                                                                   
set_property PACKAGE_PIN D11 [get_ports {kria_spi_0_sck_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_0_sck_io}] 
                                                                   
set_property PACKAGE_PIN B11 [get_ports {kria_spi_0_io1_io}]     
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_0_io1_io}] 



##################### PMOD 4 Upper ###################################
set_property PACKAGE_PIN AC12 [get_ports {kria_uart_1_rxd}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_1_rxd}]

set_property PACKAGE_PIN AD12 [get_ports {kria_i2c_1_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_1_sda_io}]
set_property PULLUP TRUE [get_ports {kria_i2c_1_sda_io}]

set_property PACKAGE_PIN AE10 [get_ports {kria_spi_1_io0_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_1_io0_io}]

set_property PACKAGE_PIN AF10 [get_ports {kria_spi_1_ss_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_1_ss_io}]

##################### PMOD 3 Lower ###################################
set_property PACKAGE_PIN AD11 [get_ports {kria_uart_1_txd}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_uart_1_txd}]

set_property PACKAGE_PIN AD10 [get_ports {kria_i2c_1_scl_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_i2c_1_scl_io}]
set_property PULLUP TRUE [get_ports {kria_i2c_1_scl_io}]

set_property PACKAGE_PIN AA11 [get_ports {kria_spi_1_sck_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_1_sck_io}]

set_property PACKAGE_PIN AA10 [get_ports {kria_spi_1_io1_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {kria_spi_1_io1_io}]

