--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Sat Sep 16 21:19:23 2023
--Host        : fabian-VirtualBox running 64-bit Ubuntu 22.04.2 LTS
--Command     : generate_target kria_bd_wrapper.bd
--Design      : kria_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kria_bd_wrapper is
  port (
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 );
    kria_i2c_scl_io : inout STD_LOGIC;
    kria_i2c_sda_io : inout STD_LOGIC;
    kria_spi_io0_io : inout STD_LOGIC;
    kria_spi_io1_io : inout STD_LOGIC;
    kria_spi_sck_io : inout STD_LOGIC;
    kria_spi_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    kria_uart_rxd : in STD_LOGIC;
    kria_uart_txd : out STD_LOGIC;
    pmod2_io_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod3_io_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod4_io_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    rpi_gpio_tri_io : inout STD_LOGIC_VECTOR ( 27 downto 0 );
    uf_leds_tri_io : inout STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end kria_bd_wrapper;

architecture STRUCTURE of kria_bd_wrapper is
  component kria_bd is
  port (
    pmod2_io_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod2_io_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod2_io_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod3_io_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod3_io_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod3_io_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod4_io_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod4_io_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmod4_io_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rpi_gpio_tri_i : in STD_LOGIC_VECTOR ( 27 downto 0 );
    rpi_gpio_tri_o : out STD_LOGIC_VECTOR ( 27 downto 0 );
    rpi_gpio_tri_t : out STD_LOGIC_VECTOR ( 27 downto 0 );
    uf_leds_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    uf_leds_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    uf_leds_tri_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    kria_uart_rxd : in STD_LOGIC;
    kria_uart_txd : out STD_LOGIC;
    kria_i2c_scl_i : in STD_LOGIC;
    kria_i2c_scl_o : out STD_LOGIC;
    kria_i2c_scl_t : out STD_LOGIC;
    kria_i2c_sda_i : in STD_LOGIC;
    kria_i2c_sda_o : out STD_LOGIC;
    kria_i2c_sda_t : out STD_LOGIC;
    kria_spi_io0_i : in STD_LOGIC;
    kria_spi_io0_o : out STD_LOGIC;
    kria_spi_io0_t : out STD_LOGIC;
    kria_spi_io1_i : in STD_LOGIC;
    kria_spi_io1_o : out STD_LOGIC;
    kria_spi_io1_t : out STD_LOGIC;
    kria_spi_sck_i : in STD_LOGIC;
    kria_spi_sck_o : out STD_LOGIC;
    kria_spi_sck_t : out STD_LOGIC;
    kria_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    kria_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    kria_spi_ss_t : out STD_LOGIC;
    fan_en_b : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component kria_bd;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal kria_i2c_scl_i : STD_LOGIC;
  signal kria_i2c_scl_o : STD_LOGIC;
  signal kria_i2c_scl_t : STD_LOGIC;
  signal kria_i2c_sda_i : STD_LOGIC;
  signal kria_i2c_sda_o : STD_LOGIC;
  signal kria_i2c_sda_t : STD_LOGIC;
  signal kria_spi_io0_i : STD_LOGIC;
  signal kria_spi_io0_o : STD_LOGIC;
  signal kria_spi_io0_t : STD_LOGIC;
  signal kria_spi_io1_i : STD_LOGIC;
  signal kria_spi_io1_o : STD_LOGIC;
  signal kria_spi_io1_t : STD_LOGIC;
  signal kria_spi_sck_i : STD_LOGIC;
  signal kria_spi_sck_o : STD_LOGIC;
  signal kria_spi_sck_t : STD_LOGIC;
  signal kria_spi_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal kria_spi_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal kria_spi_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal kria_spi_ss_t : STD_LOGIC;
  signal pmod2_io_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod2_io_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod2_io_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod2_io_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod2_io_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod2_io_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod2_io_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod2_io_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod2_io_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod2_io_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod2_io_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod2_io_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod2_io_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod2_io_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod2_io_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod2_io_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod2_io_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod2_io_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod2_io_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod2_io_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod2_io_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod2_io_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod2_io_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod2_io_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod2_io_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod2_io_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod2_io_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod2_io_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod2_io_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod2_io_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod2_io_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod2_io_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod3_io_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod3_io_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod3_io_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod3_io_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod3_io_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod3_io_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod3_io_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod3_io_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod3_io_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod3_io_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod3_io_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod3_io_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod3_io_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod3_io_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod3_io_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod3_io_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod3_io_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod3_io_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod3_io_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod3_io_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod3_io_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod3_io_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod3_io_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod3_io_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod3_io_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod3_io_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod3_io_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod3_io_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod3_io_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod3_io_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod3_io_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod3_io_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod4_io_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod4_io_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod4_io_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod4_io_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod4_io_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod4_io_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod4_io_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod4_io_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod4_io_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod4_io_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod4_io_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod4_io_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod4_io_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod4_io_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod4_io_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod4_io_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod4_io_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod4_io_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod4_io_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod4_io_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod4_io_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod4_io_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod4_io_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod4_io_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod4_io_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod4_io_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod4_io_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod4_io_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod4_io_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod4_io_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod4_io_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod4_io_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rpi_gpio_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rpi_gpio_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rpi_gpio_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rpi_gpio_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rpi_gpio_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal rpi_gpio_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal rpi_gpio_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal rpi_gpio_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal rpi_gpio_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal rpi_gpio_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal rpi_gpio_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal rpi_gpio_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal rpi_gpio_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rpi_gpio_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal rpi_gpio_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal rpi_gpio_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal rpi_gpio_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal rpi_gpio_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal rpi_gpio_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal rpi_gpio_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal rpi_gpio_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal rpi_gpio_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpi_gpio_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rpi_gpio_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rpi_gpio_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rpi_gpio_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rpi_gpio_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rpi_gpio_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rpi_gpio_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rpi_gpio_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rpi_gpio_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rpi_gpio_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rpi_gpio_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal rpi_gpio_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal rpi_gpio_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal rpi_gpio_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal rpi_gpio_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal rpi_gpio_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal rpi_gpio_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal rpi_gpio_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal rpi_gpio_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rpi_gpio_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal rpi_gpio_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal rpi_gpio_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal rpi_gpio_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal rpi_gpio_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal rpi_gpio_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal rpi_gpio_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal rpi_gpio_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal rpi_gpio_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpi_gpio_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rpi_gpio_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rpi_gpio_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rpi_gpio_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rpi_gpio_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rpi_gpio_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rpi_gpio_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rpi_gpio_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rpi_gpio_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rpi_gpio_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rpi_gpio_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal rpi_gpio_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal rpi_gpio_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal rpi_gpio_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal rpi_gpio_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal rpi_gpio_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal rpi_gpio_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal rpi_gpio_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal rpi_gpio_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rpi_gpio_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal rpi_gpio_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal rpi_gpio_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal rpi_gpio_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal rpi_gpio_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal rpi_gpio_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal rpi_gpio_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal rpi_gpio_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal rpi_gpio_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpi_gpio_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rpi_gpio_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rpi_gpio_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rpi_gpio_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rpi_gpio_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rpi_gpio_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal rpi_gpio_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rpi_gpio_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rpi_gpio_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal rpi_gpio_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal rpi_gpio_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal rpi_gpio_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal rpi_gpio_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal rpi_gpio_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal rpi_gpio_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal rpi_gpio_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal rpi_gpio_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal rpi_gpio_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal rpi_gpio_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rpi_gpio_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal rpi_gpio_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal rpi_gpio_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal rpi_gpio_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal rpi_gpio_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal rpi_gpio_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal rpi_gpio_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal rpi_gpio_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal rpi_gpio_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rpi_gpio_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal rpi_gpio_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal rpi_gpio_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal rpi_gpio_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rpi_gpio_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rpi_gpio_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal uf_leds_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal uf_leds_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal uf_leds_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal uf_leds_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal uf_leds_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal uf_leds_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal uf_leds_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal uf_leds_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
begin
kria_bd_i: component kria_bd
     port map (
      fan_en_b(0) => fan_en_b(0),
      kria_i2c_scl_i => kria_i2c_scl_i,
      kria_i2c_scl_o => kria_i2c_scl_o,
      kria_i2c_scl_t => kria_i2c_scl_t,
      kria_i2c_sda_i => kria_i2c_sda_i,
      kria_i2c_sda_o => kria_i2c_sda_o,
      kria_i2c_sda_t => kria_i2c_sda_t,
      kria_spi_io0_i => kria_spi_io0_i,
      kria_spi_io0_o => kria_spi_io0_o,
      kria_spi_io0_t => kria_spi_io0_t,
      kria_spi_io1_i => kria_spi_io1_i,
      kria_spi_io1_o => kria_spi_io1_o,
      kria_spi_io1_t => kria_spi_io1_t,
      kria_spi_sck_i => kria_spi_sck_i,
      kria_spi_sck_o => kria_spi_sck_o,
      kria_spi_sck_t => kria_spi_sck_t,
      kria_spi_ss_i(0) => kria_spi_ss_i_0(0),
      kria_spi_ss_o(0) => kria_spi_ss_o_0(0),
      kria_spi_ss_t => kria_spi_ss_t,
      kria_uart_rxd => kria_uart_rxd,
      kria_uart_txd => kria_uart_txd,
      pmod2_io_tri_i(7) => pmod2_io_tri_i_7(7),
      pmod2_io_tri_i(6) => pmod2_io_tri_i_6(6),
      pmod2_io_tri_i(5) => pmod2_io_tri_i_5(5),
      pmod2_io_tri_i(4) => pmod2_io_tri_i_4(4),
      pmod2_io_tri_i(3) => pmod2_io_tri_i_3(3),
      pmod2_io_tri_i(2) => pmod2_io_tri_i_2(2),
      pmod2_io_tri_i(1) => pmod2_io_tri_i_1(1),
      pmod2_io_tri_i(0) => pmod2_io_tri_i_0(0),
      pmod2_io_tri_o(7) => pmod2_io_tri_o_7(7),
      pmod2_io_tri_o(6) => pmod2_io_tri_o_6(6),
      pmod2_io_tri_o(5) => pmod2_io_tri_o_5(5),
      pmod2_io_tri_o(4) => pmod2_io_tri_o_4(4),
      pmod2_io_tri_o(3) => pmod2_io_tri_o_3(3),
      pmod2_io_tri_o(2) => pmod2_io_tri_o_2(2),
      pmod2_io_tri_o(1) => pmod2_io_tri_o_1(1),
      pmod2_io_tri_o(0) => pmod2_io_tri_o_0(0),
      pmod2_io_tri_t(7) => pmod2_io_tri_t_7(7),
      pmod2_io_tri_t(6) => pmod2_io_tri_t_6(6),
      pmod2_io_tri_t(5) => pmod2_io_tri_t_5(5),
      pmod2_io_tri_t(4) => pmod2_io_tri_t_4(4),
      pmod2_io_tri_t(3) => pmod2_io_tri_t_3(3),
      pmod2_io_tri_t(2) => pmod2_io_tri_t_2(2),
      pmod2_io_tri_t(1) => pmod2_io_tri_t_1(1),
      pmod2_io_tri_t(0) => pmod2_io_tri_t_0(0),
      pmod3_io_tri_i(7) => pmod3_io_tri_i_7(7),
      pmod3_io_tri_i(6) => pmod3_io_tri_i_6(6),
      pmod3_io_tri_i(5) => pmod3_io_tri_i_5(5),
      pmod3_io_tri_i(4) => pmod3_io_tri_i_4(4),
      pmod3_io_tri_i(3) => pmod3_io_tri_i_3(3),
      pmod3_io_tri_i(2) => pmod3_io_tri_i_2(2),
      pmod3_io_tri_i(1) => pmod3_io_tri_i_1(1),
      pmod3_io_tri_i(0) => pmod3_io_tri_i_0(0),
      pmod3_io_tri_o(7) => pmod3_io_tri_o_7(7),
      pmod3_io_tri_o(6) => pmod3_io_tri_o_6(6),
      pmod3_io_tri_o(5) => pmod3_io_tri_o_5(5),
      pmod3_io_tri_o(4) => pmod3_io_tri_o_4(4),
      pmod3_io_tri_o(3) => pmod3_io_tri_o_3(3),
      pmod3_io_tri_o(2) => pmod3_io_tri_o_2(2),
      pmod3_io_tri_o(1) => pmod3_io_tri_o_1(1),
      pmod3_io_tri_o(0) => pmod3_io_tri_o_0(0),
      pmod3_io_tri_t(7) => pmod3_io_tri_t_7(7),
      pmod3_io_tri_t(6) => pmod3_io_tri_t_6(6),
      pmod3_io_tri_t(5) => pmod3_io_tri_t_5(5),
      pmod3_io_tri_t(4) => pmod3_io_tri_t_4(4),
      pmod3_io_tri_t(3) => pmod3_io_tri_t_3(3),
      pmod3_io_tri_t(2) => pmod3_io_tri_t_2(2),
      pmod3_io_tri_t(1) => pmod3_io_tri_t_1(1),
      pmod3_io_tri_t(0) => pmod3_io_tri_t_0(0),
      pmod4_io_tri_i(7) => pmod4_io_tri_i_7(7),
      pmod4_io_tri_i(6) => pmod4_io_tri_i_6(6),
      pmod4_io_tri_i(5) => pmod4_io_tri_i_5(5),
      pmod4_io_tri_i(4) => pmod4_io_tri_i_4(4),
      pmod4_io_tri_i(3) => pmod4_io_tri_i_3(3),
      pmod4_io_tri_i(2) => pmod4_io_tri_i_2(2),
      pmod4_io_tri_i(1) => pmod4_io_tri_i_1(1),
      pmod4_io_tri_i(0) => pmod4_io_tri_i_0(0),
      pmod4_io_tri_o(7) => pmod4_io_tri_o_7(7),
      pmod4_io_tri_o(6) => pmod4_io_tri_o_6(6),
      pmod4_io_tri_o(5) => pmod4_io_tri_o_5(5),
      pmod4_io_tri_o(4) => pmod4_io_tri_o_4(4),
      pmod4_io_tri_o(3) => pmod4_io_tri_o_3(3),
      pmod4_io_tri_o(2) => pmod4_io_tri_o_2(2),
      pmod4_io_tri_o(1) => pmod4_io_tri_o_1(1),
      pmod4_io_tri_o(0) => pmod4_io_tri_o_0(0),
      pmod4_io_tri_t(7) => pmod4_io_tri_t_7(7),
      pmod4_io_tri_t(6) => pmod4_io_tri_t_6(6),
      pmod4_io_tri_t(5) => pmod4_io_tri_t_5(5),
      pmod4_io_tri_t(4) => pmod4_io_tri_t_4(4),
      pmod4_io_tri_t(3) => pmod4_io_tri_t_3(3),
      pmod4_io_tri_t(2) => pmod4_io_tri_t_2(2),
      pmod4_io_tri_t(1) => pmod4_io_tri_t_1(1),
      pmod4_io_tri_t(0) => pmod4_io_tri_t_0(0),
      rpi_gpio_tri_i(27) => rpi_gpio_tri_i_27(27),
      rpi_gpio_tri_i(26) => rpi_gpio_tri_i_26(26),
      rpi_gpio_tri_i(25) => rpi_gpio_tri_i_25(25),
      rpi_gpio_tri_i(24) => rpi_gpio_tri_i_24(24),
      rpi_gpio_tri_i(23) => rpi_gpio_tri_i_23(23),
      rpi_gpio_tri_i(22) => rpi_gpio_tri_i_22(22),
      rpi_gpio_tri_i(21) => rpi_gpio_tri_i_21(21),
      rpi_gpio_tri_i(20) => rpi_gpio_tri_i_20(20),
      rpi_gpio_tri_i(19) => rpi_gpio_tri_i_19(19),
      rpi_gpio_tri_i(18) => rpi_gpio_tri_i_18(18),
      rpi_gpio_tri_i(17) => rpi_gpio_tri_i_17(17),
      rpi_gpio_tri_i(16) => rpi_gpio_tri_i_16(16),
      rpi_gpio_tri_i(15) => rpi_gpio_tri_i_15(15),
      rpi_gpio_tri_i(14) => rpi_gpio_tri_i_14(14),
      rpi_gpio_tri_i(13) => rpi_gpio_tri_i_13(13),
      rpi_gpio_tri_i(12) => rpi_gpio_tri_i_12(12),
      rpi_gpio_tri_i(11) => rpi_gpio_tri_i_11(11),
      rpi_gpio_tri_i(10) => rpi_gpio_tri_i_10(10),
      rpi_gpio_tri_i(9) => rpi_gpio_tri_i_9(9),
      rpi_gpio_tri_i(8) => rpi_gpio_tri_i_8(8),
      rpi_gpio_tri_i(7) => rpi_gpio_tri_i_7(7),
      rpi_gpio_tri_i(6) => rpi_gpio_tri_i_6(6),
      rpi_gpio_tri_i(5) => rpi_gpio_tri_i_5(5),
      rpi_gpio_tri_i(4) => rpi_gpio_tri_i_4(4),
      rpi_gpio_tri_i(3) => rpi_gpio_tri_i_3(3),
      rpi_gpio_tri_i(2) => rpi_gpio_tri_i_2(2),
      rpi_gpio_tri_i(1) => rpi_gpio_tri_i_1(1),
      rpi_gpio_tri_i(0) => rpi_gpio_tri_i_0(0),
      rpi_gpio_tri_o(27) => rpi_gpio_tri_o_27(27),
      rpi_gpio_tri_o(26) => rpi_gpio_tri_o_26(26),
      rpi_gpio_tri_o(25) => rpi_gpio_tri_o_25(25),
      rpi_gpio_tri_o(24) => rpi_gpio_tri_o_24(24),
      rpi_gpio_tri_o(23) => rpi_gpio_tri_o_23(23),
      rpi_gpio_tri_o(22) => rpi_gpio_tri_o_22(22),
      rpi_gpio_tri_o(21) => rpi_gpio_tri_o_21(21),
      rpi_gpio_tri_o(20) => rpi_gpio_tri_o_20(20),
      rpi_gpio_tri_o(19) => rpi_gpio_tri_o_19(19),
      rpi_gpio_tri_o(18) => rpi_gpio_tri_o_18(18),
      rpi_gpio_tri_o(17) => rpi_gpio_tri_o_17(17),
      rpi_gpio_tri_o(16) => rpi_gpio_tri_o_16(16),
      rpi_gpio_tri_o(15) => rpi_gpio_tri_o_15(15),
      rpi_gpio_tri_o(14) => rpi_gpio_tri_o_14(14),
      rpi_gpio_tri_o(13) => rpi_gpio_tri_o_13(13),
      rpi_gpio_tri_o(12) => rpi_gpio_tri_o_12(12),
      rpi_gpio_tri_o(11) => rpi_gpio_tri_o_11(11),
      rpi_gpio_tri_o(10) => rpi_gpio_tri_o_10(10),
      rpi_gpio_tri_o(9) => rpi_gpio_tri_o_9(9),
      rpi_gpio_tri_o(8) => rpi_gpio_tri_o_8(8),
      rpi_gpio_tri_o(7) => rpi_gpio_tri_o_7(7),
      rpi_gpio_tri_o(6) => rpi_gpio_tri_o_6(6),
      rpi_gpio_tri_o(5) => rpi_gpio_tri_o_5(5),
      rpi_gpio_tri_o(4) => rpi_gpio_tri_o_4(4),
      rpi_gpio_tri_o(3) => rpi_gpio_tri_o_3(3),
      rpi_gpio_tri_o(2) => rpi_gpio_tri_o_2(2),
      rpi_gpio_tri_o(1) => rpi_gpio_tri_o_1(1),
      rpi_gpio_tri_o(0) => rpi_gpio_tri_o_0(0),
      rpi_gpio_tri_t(27) => rpi_gpio_tri_t_27(27),
      rpi_gpio_tri_t(26) => rpi_gpio_tri_t_26(26),
      rpi_gpio_tri_t(25) => rpi_gpio_tri_t_25(25),
      rpi_gpio_tri_t(24) => rpi_gpio_tri_t_24(24),
      rpi_gpio_tri_t(23) => rpi_gpio_tri_t_23(23),
      rpi_gpio_tri_t(22) => rpi_gpio_tri_t_22(22),
      rpi_gpio_tri_t(21) => rpi_gpio_tri_t_21(21),
      rpi_gpio_tri_t(20) => rpi_gpio_tri_t_20(20),
      rpi_gpio_tri_t(19) => rpi_gpio_tri_t_19(19),
      rpi_gpio_tri_t(18) => rpi_gpio_tri_t_18(18),
      rpi_gpio_tri_t(17) => rpi_gpio_tri_t_17(17),
      rpi_gpio_tri_t(16) => rpi_gpio_tri_t_16(16),
      rpi_gpio_tri_t(15) => rpi_gpio_tri_t_15(15),
      rpi_gpio_tri_t(14) => rpi_gpio_tri_t_14(14),
      rpi_gpio_tri_t(13) => rpi_gpio_tri_t_13(13),
      rpi_gpio_tri_t(12) => rpi_gpio_tri_t_12(12),
      rpi_gpio_tri_t(11) => rpi_gpio_tri_t_11(11),
      rpi_gpio_tri_t(10) => rpi_gpio_tri_t_10(10),
      rpi_gpio_tri_t(9) => rpi_gpio_tri_t_9(9),
      rpi_gpio_tri_t(8) => rpi_gpio_tri_t_8(8),
      rpi_gpio_tri_t(7) => rpi_gpio_tri_t_7(7),
      rpi_gpio_tri_t(6) => rpi_gpio_tri_t_6(6),
      rpi_gpio_tri_t(5) => rpi_gpio_tri_t_5(5),
      rpi_gpio_tri_t(4) => rpi_gpio_tri_t_4(4),
      rpi_gpio_tri_t(3) => rpi_gpio_tri_t_3(3),
      rpi_gpio_tri_t(2) => rpi_gpio_tri_t_2(2),
      rpi_gpio_tri_t(1) => rpi_gpio_tri_t_1(1),
      rpi_gpio_tri_t(0) => rpi_gpio_tri_t_0(0),
      uf_leds_tri_i(1) => uf_leds_tri_i_1(1),
      uf_leds_tri_i(0) => uf_leds_tri_i_0(0),
      uf_leds_tri_o(1) => uf_leds_tri_o_1(1),
      uf_leds_tri_o(0) => uf_leds_tri_o_0(0),
      uf_leds_tri_t(1) => uf_leds_tri_t_1(1),
      uf_leds_tri_t(0) => uf_leds_tri_t_0(0)
    );
kria_i2c_scl_iobuf: component IOBUF
     port map (
      I => kria_i2c_scl_o,
      IO => kria_i2c_scl_io,
      O => kria_i2c_scl_i,
      T => kria_i2c_scl_t
    );
kria_i2c_sda_iobuf: component IOBUF
     port map (
      I => kria_i2c_sda_o,
      IO => kria_i2c_sda_io,
      O => kria_i2c_sda_i,
      T => kria_i2c_sda_t
    );
kria_spi_io0_iobuf: component IOBUF
     port map (
      I => kria_spi_io0_o,
      IO => kria_spi_io0_io,
      O => kria_spi_io0_i,
      T => kria_spi_io0_t
    );
kria_spi_io1_iobuf: component IOBUF
     port map (
      I => kria_spi_io1_o,
      IO => kria_spi_io1_io,
      O => kria_spi_io1_i,
      T => kria_spi_io1_t
    );
kria_spi_sck_iobuf: component IOBUF
     port map (
      I => kria_spi_sck_o,
      IO => kria_spi_sck_io,
      O => kria_spi_sck_i,
      T => kria_spi_sck_t
    );
kria_spi_ss_iobuf_0: component IOBUF
     port map (
      I => kria_spi_ss_o_0(0),
      IO => kria_spi_ss_io(0),
      O => kria_spi_ss_i_0(0),
      T => kria_spi_ss_t
    );
pmod2_io_tri_iobuf_0: component IOBUF
     port map (
      I => pmod2_io_tri_o_0(0),
      IO => pmod2_io_tri_io(0),
      O => pmod2_io_tri_i_0(0),
      T => pmod2_io_tri_t_0(0)
    );
pmod2_io_tri_iobuf_1: component IOBUF
     port map (
      I => pmod2_io_tri_o_1(1),
      IO => pmod2_io_tri_io(1),
      O => pmod2_io_tri_i_1(1),
      T => pmod2_io_tri_t_1(1)
    );
pmod2_io_tri_iobuf_2: component IOBUF
     port map (
      I => pmod2_io_tri_o_2(2),
      IO => pmod2_io_tri_io(2),
      O => pmod2_io_tri_i_2(2),
      T => pmod2_io_tri_t_2(2)
    );
pmod2_io_tri_iobuf_3: component IOBUF
     port map (
      I => pmod2_io_tri_o_3(3),
      IO => pmod2_io_tri_io(3),
      O => pmod2_io_tri_i_3(3),
      T => pmod2_io_tri_t_3(3)
    );
pmod2_io_tri_iobuf_4: component IOBUF
     port map (
      I => pmod2_io_tri_o_4(4),
      IO => pmod2_io_tri_io(4),
      O => pmod2_io_tri_i_4(4),
      T => pmod2_io_tri_t_4(4)
    );
pmod2_io_tri_iobuf_5: component IOBUF
     port map (
      I => pmod2_io_tri_o_5(5),
      IO => pmod2_io_tri_io(5),
      O => pmod2_io_tri_i_5(5),
      T => pmod2_io_tri_t_5(5)
    );
pmod2_io_tri_iobuf_6: component IOBUF
     port map (
      I => pmod2_io_tri_o_6(6),
      IO => pmod2_io_tri_io(6),
      O => pmod2_io_tri_i_6(6),
      T => pmod2_io_tri_t_6(6)
    );
pmod2_io_tri_iobuf_7: component IOBUF
     port map (
      I => pmod2_io_tri_o_7(7),
      IO => pmod2_io_tri_io(7),
      O => pmod2_io_tri_i_7(7),
      T => pmod2_io_tri_t_7(7)
    );
pmod3_io_tri_iobuf_0: component IOBUF
     port map (
      I => pmod3_io_tri_o_0(0),
      IO => pmod3_io_tri_io(0),
      O => pmod3_io_tri_i_0(0),
      T => pmod3_io_tri_t_0(0)
    );
pmod3_io_tri_iobuf_1: component IOBUF
     port map (
      I => pmod3_io_tri_o_1(1),
      IO => pmod3_io_tri_io(1),
      O => pmod3_io_tri_i_1(1),
      T => pmod3_io_tri_t_1(1)
    );
pmod3_io_tri_iobuf_2: component IOBUF
     port map (
      I => pmod3_io_tri_o_2(2),
      IO => pmod3_io_tri_io(2),
      O => pmod3_io_tri_i_2(2),
      T => pmod3_io_tri_t_2(2)
    );
pmod3_io_tri_iobuf_3: component IOBUF
     port map (
      I => pmod3_io_tri_o_3(3),
      IO => pmod3_io_tri_io(3),
      O => pmod3_io_tri_i_3(3),
      T => pmod3_io_tri_t_3(3)
    );
pmod3_io_tri_iobuf_4: component IOBUF
     port map (
      I => pmod3_io_tri_o_4(4),
      IO => pmod3_io_tri_io(4),
      O => pmod3_io_tri_i_4(4),
      T => pmod3_io_tri_t_4(4)
    );
pmod3_io_tri_iobuf_5: component IOBUF
     port map (
      I => pmod3_io_tri_o_5(5),
      IO => pmod3_io_tri_io(5),
      O => pmod3_io_tri_i_5(5),
      T => pmod3_io_tri_t_5(5)
    );
pmod3_io_tri_iobuf_6: component IOBUF
     port map (
      I => pmod3_io_tri_o_6(6),
      IO => pmod3_io_tri_io(6),
      O => pmod3_io_tri_i_6(6),
      T => pmod3_io_tri_t_6(6)
    );
pmod3_io_tri_iobuf_7: component IOBUF
     port map (
      I => pmod3_io_tri_o_7(7),
      IO => pmod3_io_tri_io(7),
      O => pmod3_io_tri_i_7(7),
      T => pmod3_io_tri_t_7(7)
    );
pmod4_io_tri_iobuf_0: component IOBUF
     port map (
      I => pmod4_io_tri_o_0(0),
      IO => pmod4_io_tri_io(0),
      O => pmod4_io_tri_i_0(0),
      T => pmod4_io_tri_t_0(0)
    );
pmod4_io_tri_iobuf_1: component IOBUF
     port map (
      I => pmod4_io_tri_o_1(1),
      IO => pmod4_io_tri_io(1),
      O => pmod4_io_tri_i_1(1),
      T => pmod4_io_tri_t_1(1)
    );
pmod4_io_tri_iobuf_2: component IOBUF
     port map (
      I => pmod4_io_tri_o_2(2),
      IO => pmod4_io_tri_io(2),
      O => pmod4_io_tri_i_2(2),
      T => pmod4_io_tri_t_2(2)
    );
pmod4_io_tri_iobuf_3: component IOBUF
     port map (
      I => pmod4_io_tri_o_3(3),
      IO => pmod4_io_tri_io(3),
      O => pmod4_io_tri_i_3(3),
      T => pmod4_io_tri_t_3(3)
    );
pmod4_io_tri_iobuf_4: component IOBUF
     port map (
      I => pmod4_io_tri_o_4(4),
      IO => pmod4_io_tri_io(4),
      O => pmod4_io_tri_i_4(4),
      T => pmod4_io_tri_t_4(4)
    );
pmod4_io_tri_iobuf_5: component IOBUF
     port map (
      I => pmod4_io_tri_o_5(5),
      IO => pmod4_io_tri_io(5),
      O => pmod4_io_tri_i_5(5),
      T => pmod4_io_tri_t_5(5)
    );
pmod4_io_tri_iobuf_6: component IOBUF
     port map (
      I => pmod4_io_tri_o_6(6),
      IO => pmod4_io_tri_io(6),
      O => pmod4_io_tri_i_6(6),
      T => pmod4_io_tri_t_6(6)
    );
pmod4_io_tri_iobuf_7: component IOBUF
     port map (
      I => pmod4_io_tri_o_7(7),
      IO => pmod4_io_tri_io(7),
      O => pmod4_io_tri_i_7(7),
      T => pmod4_io_tri_t_7(7)
    );
rpi_gpio_tri_iobuf_0: component IOBUF
     port map (
      I => rpi_gpio_tri_o_0(0),
      IO => rpi_gpio_tri_io(0),
      O => rpi_gpio_tri_i_0(0),
      T => rpi_gpio_tri_t_0(0)
    );
rpi_gpio_tri_iobuf_1: component IOBUF
     port map (
      I => rpi_gpio_tri_o_1(1),
      IO => rpi_gpio_tri_io(1),
      O => rpi_gpio_tri_i_1(1),
      T => rpi_gpio_tri_t_1(1)
    );
rpi_gpio_tri_iobuf_10: component IOBUF
     port map (
      I => rpi_gpio_tri_o_10(10),
      IO => rpi_gpio_tri_io(10),
      O => rpi_gpio_tri_i_10(10),
      T => rpi_gpio_tri_t_10(10)
    );
rpi_gpio_tri_iobuf_11: component IOBUF
     port map (
      I => rpi_gpio_tri_o_11(11),
      IO => rpi_gpio_tri_io(11),
      O => rpi_gpio_tri_i_11(11),
      T => rpi_gpio_tri_t_11(11)
    );
rpi_gpio_tri_iobuf_12: component IOBUF
     port map (
      I => rpi_gpio_tri_o_12(12),
      IO => rpi_gpio_tri_io(12),
      O => rpi_gpio_tri_i_12(12),
      T => rpi_gpio_tri_t_12(12)
    );
rpi_gpio_tri_iobuf_13: component IOBUF
     port map (
      I => rpi_gpio_tri_o_13(13),
      IO => rpi_gpio_tri_io(13),
      O => rpi_gpio_tri_i_13(13),
      T => rpi_gpio_tri_t_13(13)
    );
rpi_gpio_tri_iobuf_14: component IOBUF
     port map (
      I => rpi_gpio_tri_o_14(14),
      IO => rpi_gpio_tri_io(14),
      O => rpi_gpio_tri_i_14(14),
      T => rpi_gpio_tri_t_14(14)
    );
rpi_gpio_tri_iobuf_15: component IOBUF
     port map (
      I => rpi_gpio_tri_o_15(15),
      IO => rpi_gpio_tri_io(15),
      O => rpi_gpio_tri_i_15(15),
      T => rpi_gpio_tri_t_15(15)
    );
rpi_gpio_tri_iobuf_16: component IOBUF
     port map (
      I => rpi_gpio_tri_o_16(16),
      IO => rpi_gpio_tri_io(16),
      O => rpi_gpio_tri_i_16(16),
      T => rpi_gpio_tri_t_16(16)
    );
rpi_gpio_tri_iobuf_17: component IOBUF
     port map (
      I => rpi_gpio_tri_o_17(17),
      IO => rpi_gpio_tri_io(17),
      O => rpi_gpio_tri_i_17(17),
      T => rpi_gpio_tri_t_17(17)
    );
rpi_gpio_tri_iobuf_18: component IOBUF
     port map (
      I => rpi_gpio_tri_o_18(18),
      IO => rpi_gpio_tri_io(18),
      O => rpi_gpio_tri_i_18(18),
      T => rpi_gpio_tri_t_18(18)
    );
rpi_gpio_tri_iobuf_19: component IOBUF
     port map (
      I => rpi_gpio_tri_o_19(19),
      IO => rpi_gpio_tri_io(19),
      O => rpi_gpio_tri_i_19(19),
      T => rpi_gpio_tri_t_19(19)
    );
rpi_gpio_tri_iobuf_2: component IOBUF
     port map (
      I => rpi_gpio_tri_o_2(2),
      IO => rpi_gpio_tri_io(2),
      O => rpi_gpio_tri_i_2(2),
      T => rpi_gpio_tri_t_2(2)
    );
rpi_gpio_tri_iobuf_20: component IOBUF
     port map (
      I => rpi_gpio_tri_o_20(20),
      IO => rpi_gpio_tri_io(20),
      O => rpi_gpio_tri_i_20(20),
      T => rpi_gpio_tri_t_20(20)
    );
rpi_gpio_tri_iobuf_21: component IOBUF
     port map (
      I => rpi_gpio_tri_o_21(21),
      IO => rpi_gpio_tri_io(21),
      O => rpi_gpio_tri_i_21(21),
      T => rpi_gpio_tri_t_21(21)
    );
rpi_gpio_tri_iobuf_22: component IOBUF
     port map (
      I => rpi_gpio_tri_o_22(22),
      IO => rpi_gpio_tri_io(22),
      O => rpi_gpio_tri_i_22(22),
      T => rpi_gpio_tri_t_22(22)
    );
rpi_gpio_tri_iobuf_23: component IOBUF
     port map (
      I => rpi_gpio_tri_o_23(23),
      IO => rpi_gpio_tri_io(23),
      O => rpi_gpio_tri_i_23(23),
      T => rpi_gpio_tri_t_23(23)
    );
rpi_gpio_tri_iobuf_24: component IOBUF
     port map (
      I => rpi_gpio_tri_o_24(24),
      IO => rpi_gpio_tri_io(24),
      O => rpi_gpio_tri_i_24(24),
      T => rpi_gpio_tri_t_24(24)
    );
rpi_gpio_tri_iobuf_25: component IOBUF
     port map (
      I => rpi_gpio_tri_o_25(25),
      IO => rpi_gpio_tri_io(25),
      O => rpi_gpio_tri_i_25(25),
      T => rpi_gpio_tri_t_25(25)
    );
rpi_gpio_tri_iobuf_26: component IOBUF
     port map (
      I => rpi_gpio_tri_o_26(26),
      IO => rpi_gpio_tri_io(26),
      O => rpi_gpio_tri_i_26(26),
      T => rpi_gpio_tri_t_26(26)
    );
rpi_gpio_tri_iobuf_27: component IOBUF
     port map (
      I => rpi_gpio_tri_o_27(27),
      IO => rpi_gpio_tri_io(27),
      O => rpi_gpio_tri_i_27(27),
      T => rpi_gpio_tri_t_27(27)
    );
rpi_gpio_tri_iobuf_3: component IOBUF
     port map (
      I => rpi_gpio_tri_o_3(3),
      IO => rpi_gpio_tri_io(3),
      O => rpi_gpio_tri_i_3(3),
      T => rpi_gpio_tri_t_3(3)
    );
rpi_gpio_tri_iobuf_4: component IOBUF
     port map (
      I => rpi_gpio_tri_o_4(4),
      IO => rpi_gpio_tri_io(4),
      O => rpi_gpio_tri_i_4(4),
      T => rpi_gpio_tri_t_4(4)
    );
rpi_gpio_tri_iobuf_5: component IOBUF
     port map (
      I => rpi_gpio_tri_o_5(5),
      IO => rpi_gpio_tri_io(5),
      O => rpi_gpio_tri_i_5(5),
      T => rpi_gpio_tri_t_5(5)
    );
rpi_gpio_tri_iobuf_6: component IOBUF
     port map (
      I => rpi_gpio_tri_o_6(6),
      IO => rpi_gpio_tri_io(6),
      O => rpi_gpio_tri_i_6(6),
      T => rpi_gpio_tri_t_6(6)
    );
rpi_gpio_tri_iobuf_7: component IOBUF
     port map (
      I => rpi_gpio_tri_o_7(7),
      IO => rpi_gpio_tri_io(7),
      O => rpi_gpio_tri_i_7(7),
      T => rpi_gpio_tri_t_7(7)
    );
rpi_gpio_tri_iobuf_8: component IOBUF
     port map (
      I => rpi_gpio_tri_o_8(8),
      IO => rpi_gpio_tri_io(8),
      O => rpi_gpio_tri_i_8(8),
      T => rpi_gpio_tri_t_8(8)
    );
rpi_gpio_tri_iobuf_9: component IOBUF
     port map (
      I => rpi_gpio_tri_o_9(9),
      IO => rpi_gpio_tri_io(9),
      O => rpi_gpio_tri_i_9(9),
      T => rpi_gpio_tri_t_9(9)
    );
uf_leds_tri_iobuf_0: component IOBUF
     port map (
      I => uf_leds_tri_o_0(0),
      IO => uf_leds_tri_io(0),
      O => uf_leds_tri_i_0(0),
      T => uf_leds_tri_t_0(0)
    );
uf_leds_tri_iobuf_1: component IOBUF
     port map (
      I => uf_leds_tri_o_1(1),
      IO => uf_leds_tri_io(1),
      O => uf_leds_tri_i_1(1),
      T => uf_leds_tri_t_1(1)
    );
end STRUCTURE;
