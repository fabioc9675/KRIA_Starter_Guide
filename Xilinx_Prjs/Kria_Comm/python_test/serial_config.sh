echo "################################################"
echo " ------ Configuracion de Uartlite -----"
echo "################################################"

echo petalinux | sudo -S xmutil unloadapp  # despues del echo va el password para el "sudo" y el comando>
echo petalinux | sudo -S xmutil loadapp kr260_comm
echo petalinux | sudo -S chown petalinux:petalinux /dev/ttyUL0
echo petalinux | sudo -S chmod 777 /dev/ttyUL0

echo "################################################"
echo " ------ Inicio de prueba python ------ "
echo "################################################"

python Serial_test.py

echo "################################################"
echo " ------ Finalizacion de prueba ------ "
echo "################################################"

