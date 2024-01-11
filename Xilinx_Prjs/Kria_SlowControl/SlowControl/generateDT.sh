echo ""
echo ""
echo "#############################################################################"
echo "Creacion del device tree"
echo "#############################################################################"
echo ""
echo ""

source /tools/Xilinx/Vitis/2022.2/settings64.sh
# cd /home/fabian/Documents/SlowControl/
# xsct xsct_script.tcl

echo ""
echo ""
echo "#############################################################################"
echo "Compilacion del device tree"
echo "#############################################################################"
echo ""
echo ""

dtc -@ -O dtb -o ./dtg_kr260_v0/dtg_kr260_v0/kr260_slow/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./dtg_kr260_v0/dtg_kr260_v0/kr260_slow/psu_cortexa53_0/device_tree_domain/bsp/pl.dtsi
cd /home/fabian/Documents/SlowControl/file_transfer/
cp ../dtg_kr260_v0/dtg_kr260_v0/kr260_slow/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./ & cp ../kria_bd_wrapper.bin ./
mv kria_bd_wrapper.bin kr260_slow.bit.bin
mv pl.dtbo kr260_slow.dtbo

echo ""
echo ""
echo "#############################################################################"
echo "Envio de archivos a la Kria"
echo "#############################################################################"
echo ""
echo ""

echo petalinux | scp kr260_slow.bit.bin kr260_slow.dtbo shell.json petalinux@192.168.1.13:/home/petalinux
