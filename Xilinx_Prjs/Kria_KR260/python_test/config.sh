echo "################################################"
echo " ------ Configuracion de salidas -----"
echo "################################################"

echo petalinux | sudo -S xmutil unloadapp  # despues del echo va el password para el "sudo" y el comando va con la directiva "-S" 
echo petalinux | sudo -S xmutil loadapp kr260_gpio


echo petalinux | sudo -S chown petalinux:petalinux -R /sys/class/gpio/*
echo 439 > /sys/class/gpio/export
echo petalinux | sudo -S chown petalinux:petalinux -R /sys/class/gpio/gpio439/*

echo out > /sys/class/gpio/gpio439/direction

echo "################################################"
echo " ------ Inicio de prueba python ------ "
echo "################################################"

python gpio_test.py

echo "################################################"
echo " ------ Finalizacion de prueba ------ "
echo "################################################"

