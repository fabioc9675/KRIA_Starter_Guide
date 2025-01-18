#! bash
# File to load the device tree overlay and provide permissions
# echo petalinux | sudo -S chmod 777 /dev/ttyUL0

echo ""
echo "#############################################################################"
echo "Cargar los archivos de C a petalinux"
echo "#############################################################################"
echo ""
echo ""

echo petalinux | scp -r ../basic_prj/ petalinux@192.168.1.17:/home/petalinux

echo ""
echo "#############################################################################"
echo "Fin cargar de archivos"
echo "#############################################################################"
echo ""
echo ""
