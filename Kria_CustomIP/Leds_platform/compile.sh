echo ""
echo ""
echo "#############################################################################"
echo "Creacion de la carpeta device tree"
echo "#############################################################################"
echo ""
echo ""

mkdir /lib/firmware/xilinx/kr260_leds/
mv kr260_leds.bit.bin kr260_leds.dtbo shell.json /lib/firmware/xilinx/kr260_leds/

echo ""
echo ""
echo "#############################################################################"
echo "Cargar el device tree overlay"
echo "#############################################################################"
echo ""
echo ""

xmutil unloadapp
xmutil loadapp kr260_leds

echo ""
echo ""
echo "#############################################################################"
echo "Final del proceso"
echo "#############################################################################"
echo ""
echo ""
