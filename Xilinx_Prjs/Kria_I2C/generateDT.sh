echo ""
echo ""
echo "#############################################################################"
echo "Creacion del device tree"
echo "#############################################################################"
echo ""
echo ""

source /tools/Xilinx/Vitis/2022.2/settings64.sh
cd /home/fabian/GitHub/KRIA_Starter_Guide/Xilinx_Prjs/Kria_I2C/
xsct xsct_script.tcl

echo ""
echo ""
echo "#############################################################################"
echo "Compilacion del device tree"
echo "#############################################################################"
echo ""
echo ""

dtc -@ -O dtb -o ./dtg_kr260_v0/dtg_kr260_v0/kr260_i2c/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./dtg_kr260_v0/dtg_kr260_v0/kr260_i2c/psu_cortexa53_0/device_tree_domain/bsp/pl.dtsi
cd /home/fabian/GitHub/KRIA_Starter_Guide/Xilinx_Prjs/Kria_I2C/i2c_file_transfer/
cp ../dtg_kr260_v0/dtg_kr260_v0/kr260_i2c/psu_cortexa53_0/device_tree_domain/bsp/pl.dtbo ./ & cp ../Kria_I2C.runs/impl_1/kria_bd_wrapper.bin ./
mv kria_bd_wrapper.bin kr260_i2c.bit.bin
mv pl.dtbo kr260_i2c.dtbo

echo ""
echo ""
echo "#############################################################################"
echo "Envio de archivos a la Kria"
echo "#############################################################################"
echo ""
echo ""

echo petalinux | scp kr260_i2c.bit.bin kr260_i2c.dtbo shell.json petalinux@192.168.1.12:/home/petalinux