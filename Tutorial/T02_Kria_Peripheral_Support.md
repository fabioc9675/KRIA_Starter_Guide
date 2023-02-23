# Agregar soporte de perifericos en Kria KR260 usando Vivado 2022.2

## Tutorial paso a paso

Para este proceso seguir el siguiente [tutorial](https://www.hackster.io/whitney-knitter/add-peripheral-support-to-kria-kr260-vivado-2022-1-project-874960).

![Petalinux_download](./T02_Images/Portada.avif)

### Resumen

This post is a follow on to it (using that same Vivado 2022.1 project created in that post) that covers how to add some of the specific hardware hooks for the peripherals on the KR260 carrier board.

## Habilitar Hardware en ZynqMP Processing System IP

The main configuration that needs to be done is enabling the respective ports for each peripheral on the Zynq MPSoC chip itself. To do this, open the block design in the Vivado project and double-click on the Zynq UltraScale+ MPSoC IP block to bring up it configuration window.

Start with the I/O Configuration tab, under Low Speed > Memory Interfaces, verify the following QSPI settings (this should have been set automatically when block automation was ran for the Zynq MPSoC IP in the previous post):

![Petalinux_download](./T02_Images/IO_Config_1.avif)

Under **Low Speed** > **I/O Peripherals**, enable `I2C1` on MIO pins 24 - 25. MIO pins are dedicated interface pins on the Zynq MPSoC chips with direct connection to the ARM-cores. These pins are routed to specific packages pins of the chip that are not accessible to the programmable logic of the FPGA and are not changeable, so there is no need for the user to manually map a signal name to pin number in a constraints file.

![Petalinux_download](./T02_Images/IO_Config_2.avif)

Verify the PMU settings:

![Petalinux_download](./T02_Images/IO_Config_3-1.avif)
![Petalinux_download](./T02_Images/IO_Config_3-2.avif)

Enable `SPI1` on MIO pins 6 - 11:

![Petalinux_download](./T02_Images/IO_Config_4.avif)

Enable `UART1` on MIO pins 36 - 37:

![Petalinux_download](./T02_Images/IO_Config_5.avif)

Enable `GPIO0` MIO and `GPIO1` MIO:

![Petalinux_download](./T02_Images/IO_Config_6.avif)

Enable both system-wide watch dog timers `SWDT 0` and `SWDT 1` under **Processing Unit**:

![Petalinux_download](./T02_Images/IO_Config_7.avif)

Enable all four triple timer counters (`TTC0` - `TTC3`) with the first of which outputting its wave out signal to `EMIO`:

![Petalinux_download](./T02_Images/IO_Config_8.avif)

Next under **High Speed** for the `RJ45` Ethernet ports on the KR260, enable `GEM 0` on GT Lane0 and GEM 1 on MIO pins 38 - 49 with its MDIO on MIO pins 50 -51:

![Petalinux_download](./T02_Images/IO_Config_9.avif)

Under `USB0`, enable `USB0` on MIO pins 52 - 63 and USB 3.0 on GT Lane2:

![Petalinux_download](./T02_Images/IO_Config_10-1.avif)

Under `USB1`, enable `USB1` on MIO pins 64 - 75 and USB 3.0 on GT Lane3:

![Petalinux_download](./T02_Images/IO_Config_10-2.avif)

Configure the reset pins for the USB ports to use a **separate MIO pin** with an **active low** polarity. Put `USB 0` reset on MIO pin 76 and `USB 1` reset on MIO pin 77:

![Petalinux_download](./T02_Images/IO_Config_10-3.avif)

Enable the `DisplayPort` on MIO pins 27 - 30 with a Single Lower lane selection on **GT Lane1**:

![Petalinux_download](./T02_Images/IO_Config_11.avif)

There is no benefit to enabling the SATA or PCIe peripherals as they are not physically routed to anything on the Kria PCB nor KR260 PCB.

Again, **Clock Configuration** and **DDR Configuration** were taken care of by the block automation that was ran for the Zynq MPSoC IP which applied the Kria board presets.

Thus, skip to the **PS-PL Configuration** tab (PS = Processing System, PL = Programmable Logic). Under **General** > **Fabric Reset Enable**, increase **Number of Fabric Resets** from 1 to 4:

![Petalinux_download](./T02_Images/IO_Config_12.avif)

In the end, the block design tab should have check marks on each of the enabled peripherals:

![Petalinux_download](./T02_Images/IO_Config_13.avif)

To see how each of these peripherals connect on the KR260 PCB, check out and download its schematic [here](https://login.xilinx.com/app/xilinxinc_f5awsprod_1/exknv8ms950lm0Ldh0x7/sso/saml). There is a very helpful block diagram overview on the second page.

## CPU Fan Driver IP Block Design

To drive the CPU fan on the Kria with the appropriate PWM signal, the wave output of TTC0 is used. Of the 3-bits of the TTC0 wave out signal, only bit 0 is needed.

Add **Xslice IP** block and configure to take a 3-bit input and output the LSB, bit 0:

![Petalinux_download](./T02_Images/FanDriver_1.avif)

Connect the `Din` input of **xslice_0** to `emio_ttc0_wave_o` of the **Zynq MPSoC** IP.

Right-click on the `Dout` pin of **xslice_0** and select the option to **Make External**. This will create a port pin and connect the Dout pin to it automatically. Rename the port to `fan_en_b` and regenerate the layout.

![Petalinux_download](./T02_Images/FanDriver_2.avif)

Validate the block design, save it again, and select **Generate Block Design** from the **Flow Navigator** window. Then create a new **HDL wrapper**, selecting the option to let Vivado auto-manage (see previous post for how to create an HDL wrapper).

## CPU Fan Constrain

Agregar el archivo de constrains para el `fan_en_b`, esto basado en el diseño PCB para la KR260 board (ver [esquematico](https://login.xilinx.com/app/xilinxinc_f5awsprod_1/exknv8ms950lm0Ldh0x7/sso/saml)).

Crea el archivo de constrains `fan_pinout.xdc` y agrega el siguiente codigo.

```bash
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#Fan Speed Enable
set_property PACKAGE_PIN A12 [get_ports {fan_en_b}]
set_property IOSTANDARD LVCMOS33 [get_ports {fan_en_b}]
set_property SLEW SLOW [get_ports {fan_en_b}]
set_property DRIVE 4 [get_ports {fan_en_b}]
```

Guarde el archivo de constrains

Finalmente, genere de nuevo el **Bitstream** y exporte la plataforma tal como se mostró en el tutorial anterior:

## Exportar la plataforma para el SW development

In order to use the hardware design in Vitis and/or PetaLinux to develop software, it needs to be packaged up into a platform file.

Select the option to **Export Platform** from the **Flow Navigator** window.

In the platform packaging windows, select **Hardware** for **Platform Type** (the Kria doesn't currently have emulation support) and be sure to check the option to **include the bitstream** in **Platform State**.

![ProcesorReset](./T01_Images/export_1.avif)
![ProcesorReset](./T01_Images/export_2.avif)
![ProcesorReset](./T01_Images/export_3.avif)
![ProcesorReset](./T01_Images/export_4.avif)
![ProcesorReset](./T01_Images/export_5.avif)
![ProcesorReset](./T01_Images/export_6.avif)

Finally, give the platform the desired name, vendor/version info, description, and select the desired output directory for the exported platform.

At this point, this Vivado project is the perfect base for adding custom hardware to the design and then importing into Vitis and/or PetaLinux. Next week, I'll be posting how to pull this exported platform into PetaLinux 2022.1 and add hardware acceleration support to the kernel/root filesystem.
