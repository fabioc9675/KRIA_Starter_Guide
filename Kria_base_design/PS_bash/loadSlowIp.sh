#! bash
# File to load the device tree overlay and provide permissions

echo ""
echo "#############################################################################"
echo "Cargar el device tree overlay"
echo "#############################################################################"
echo ""
echo ""

xmutil unloadapp
xmutil loadapp kr260_slow

echo ""
echo ""
echo "#############################################################################"
echo "Cambiar propietario de los IPs"
echo "#############################################################################"
echo ""
echo ""

chown petalinux:petalinux /dev/spidev3.0
chown petalinux:petalinux /dev/spidev4.0
chown petalinux:petalinux /dev/spidev5.0
chown petalinux:petalinux /dev/spidev6.0
chown petalinux:petalinux /dev/i2c-7

# chown petalinux:petalinux -R /sys/class/gpio/gpiochip484/*
# chown petalinux:petalinux -R /sys/class/gpio/gpiochip492/*

echo ""
echo ""
echo "#############################################################################"
echo "Exportar los GPIO pins"
echo "#############################################################################"
echo ""
echo ""

# User Leds
echo 469 | sudo tee /sys/class/gpio/export
echo 470 | sudo tee /sys/class/gpio/export

# AFEs Ctrl
echo 471 | sudo tee /sys/class/gpio/export
echo 472 | sudo tee /sys/class/gpio/export
echo 473 | sudo tee /sys/class/gpio/export
echo 474 | sudo tee /sys/class/gpio/export
echo 475 | sudo tee /sys/class/gpio/export
echo 476 | sudo tee /sys/class/gpio/export
echo 477 | sudo tee /sys/class/gpio/export
echo 478 | sudo tee /sys/class/gpio/export
echo 479 | sudo tee /sys/class/gpio/export
echo 480 | sudo tee /sys/class/gpio/export
echo 481 | sudo tee /sys/class/gpio/export
echo 482 | sudo tee /sys/class/gpio/export
echo 483 | sudo tee /sys/class/gpio/export
echo 484 | sudo tee /sys/class/gpio/export
echo 485 | sudo tee /sys/class/gpio/export
echo 486 | sudo tee /sys/class/gpio/export
echo 487 | sudo tee /sys/class/gpio/export
echo 488 | sudo tee /sys/class/gpio/export
echo 489 | sudo tee /sys/class/gpio/export
echo 490 | sudo tee /sys/class/gpio/export
echo 491 | sudo tee /sys/class/gpio/export
echo 492 | sudo tee /sys/class/gpio/export
echo 493 | sudo tee /sys/class/gpio/export
echo 494 | sudo tee /sys/class/gpio/export
echo 495 | sudo tee /sys/class/gpio/export

# BIAS Ctrl
echo 496 | sudo tee /sys/class/gpio/export
echo 497 | sudo tee /sys/class/gpio/export

# AFEs PDN RST
echo 498 | sudo tee /sys/class/gpio/export
echo 499 | sudo tee /sys/class/gpio/export


chown petalinux:petalinux -R /sys/class/gpio/gpio469/*
chown petalinux:petalinux -R /sys/class/gpio/gpio470/*
chown petalinux:petalinux -R /sys/class/gpio/gpio471/*
chown petalinux:petalinux -R /sys/class/gpio/gpio472/*
chown petalinux:petalinux -R /sys/class/gpio/gpio473/*
chown petalinux:petalinux -R /sys/class/gpio/gpio474/*
chown petalinux:petalinux -R /sys/class/gpio/gpio475/*
chown petalinux:petalinux -R /sys/class/gpio/gpio476/*
chown petalinux:petalinux -R /sys/class/gpio/gpio477/*
chown petalinux:petalinux -R /sys/class/gpio/gpio478/*
chown petalinux:petalinux -R /sys/class/gpio/gpio479/*
chown petalinux:petalinux -R /sys/class/gpio/gpio480/*
chown petalinux:petalinux -R /sys/class/gpio/gpio481/*
chown petalinux:petalinux -R /sys/class/gpio/gpio482/*
chown petalinux:petalinux -R /sys/class/gpio/gpio483/*
chown petalinux:petalinux -R /sys/class/gpio/gpio484/*
chown petalinux:petalinux -R /sys/class/gpio/gpio485/*
chown petalinux:petalinux -R /sys/class/gpio/gpio486/*
chown petalinux:petalinux -R /sys/class/gpio/gpio487/*
chown petalinux:petalinux -R /sys/class/gpio/gpio488/*
chown petalinux:petalinux -R /sys/class/gpio/gpio489/*
chown petalinux:petalinux -R /sys/class/gpio/gpio490/*
chown petalinux:petalinux -R /sys/class/gpio/gpio491/*
chown petalinux:petalinux -R /sys/class/gpio/gpio492/*
chown petalinux:petalinux -R /sys/class/gpio/gpio493/*
chown petalinux:petalinux -R /sys/class/gpio/gpio494/*
chown petalinux:petalinux -R /sys/class/gpio/gpio495/*
chown petalinux:petalinux -R /sys/class/gpio/gpio496/*
chown petalinux:petalinux -R /sys/class/gpio/gpio497/*
chown petalinux:petalinux -R /sys/class/gpio/gpio498/*
chown petalinux:petalinux -R /sys/class/gpio/gpio499/*

echo ""
echo ""
echo "#############################################################################"
echo "Cambiar permisos de los IPs"
echo "#############################################################################"
echo ""
echo ""

chmod 777 /dev/spidev3.0
chmod 777 /dev/spidev4.0
chmod 777 /dev/spidev5.0
chmod 777 /dev/spidev6.0
chmod 777 /dev/i2c-7

echo ""
echo ""
echo "#############################################################################"
echo "Fin de la prueba"
echo "#############################################################################"
echo ""
echo ""