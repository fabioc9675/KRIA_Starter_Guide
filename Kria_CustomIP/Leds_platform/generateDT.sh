echo ""
echo ""
echo "#############################################################################"
echo "Creacion del device tree"
echo "#############################################################################"
echo ""
echo ""

source /tools/Xilinx/Vitis/2022.2/settings64.sh
cd /home/fabian/Documents/Leds_platform/
xsct xsct_script.tcl

echo ""
echo ""
echo "#############################################################################"
echo "Compilacion del device tree"
echo "#############################################################################"
echo ""
echo ""

dtc -@ -O dtb -o ./dtg_kr260_v0/dtg_kr260_v0/kr260_leds/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./dtg_kr260_v0/dtg_kr260_v0/kr260_leds/psu_cortexa53_0/device_tree_domain/bsp/pl.dtsi
cd /home/fabian/Documents/Leds_platform/file_transfer/
cp ../dtg_kr260_v0/dtg_kr260_v0/kr260_leds/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./ & cp ../design_leds_wrapper.bin ./
mv design_leds_wrapper.bin kr260_leds.bit.bin
mv pl.dtbo kr260_leds.dtbo

echo ""
echo ""
echo "#############################################################################"
echo "Envio de archivos a la Kria"
echo "#############################################################################"
echo ""
echo ""

echo petalinux | scp kr260_leds.bit.bin kr260_leds.dtbo shell.json petalinux@192.168.1.9:/home/petalinux
