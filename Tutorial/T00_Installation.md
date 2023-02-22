# Instalación de Vivado, Vitis y Petalinux

### Instalación de máquina virtual de Linux

Para este proceso seguir el siguiente [tutorial](https://www.hackster.io/whitney-knitter/installing-vivado-vitis-petalinux-2021-2-on-ubuntu-18-04-0d0fdf).

En nuestro proceso de instalación utilizaremos una maquina virtual de Ubunto corriendo en Windows.

En este caso utilizaremos [VirtualBox 6](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1), e instalaremos el [Ubuntu 20.04.5 LTS](https://releases.ubuntu.com/focal/) desde la pagina oficial de Linux, se deben seguir algunos tutoriales de Youtube para que quede bien configurada la maquina virtual:

- Como instalar Ubuntu en la maquina virtual (https://youtu.be/x5MhydijWmc)
- Como compartir archivos entre Ubuntu y Windows (https://youtu.be/Mzd5i48OAiU)

### Instalación de Vivado, Vitis y Petalinux

primero es necesario ejecutar los siguientes comandos de Linux para garantizar la estabilidad en la instalacion delos software de Xilinx

```bash
sudo apt-get install libtinfo5
sudo apt install libncurses5
```

Adicionalmente, y como dice el tutorial, es necesario instalar algunos paquetes de linux para la compilacion de Petalinux:

```bash
sudo apt-get install lib32stdc++6
sudo apt-get install libgtk2.0-0:i386
sudo apt-get install libfontconfig1:i386
sudo apt-get install libx11-6:i386
sudo apt-get install libxext6:i386
sudo apt-get install libxrender1:i386
sudo apt-get install libsm6:i386
sudo apt-get install libqtgui4:i386
sudo apt-get install xinetd
sudo apt-get install iproute2
sudo apt-get install gawk
sudo apt-get install gcc
sudo apt-get install net-tools
sudo apt-get install ncurses-dev
sudo apt-get install openssl
sudo apt-get install libssl-dev
sudo apt-get install flex
sudo apt-get install bison
sudo apt-get install xterm
sudo apt-get install autoconf
sudo apt-get install libtool
sudo apt-get install texinfo
sudo apt-get install zlib1g-dev
sudo apt-get install gcc-multilib
sudo apt-get install build-essential
sudo apt-get install automake
sudo apt-get install screen
sudo apt-get install putty
sudo apt-get install pax
sudo apt-get install g++
sudo apt-get install python3-pip
sudo apt-get install xz-utils
sudo apt-get install python3-git
sudo apt-get install python3-jinja2
sudo apt-get install python3-pexpect
sudo apt-get install debianutils
sudo apt-get install iputils-ping
sudo apt-get install libegl1-mesa
sudo apt-get install libsdl1.2-dev
sudo apt-get install pylint3
sudo apt-get install python3
sudo apt-get install cpio
sudo apt-get install tftpd-hpa
sudo apt-get install gnupg
sudo apt-get install zlib1g:i386
sudo apt-get install haveged
sudo apt-get install perl
sudo apt-get install liberror-perl
sudo apt-get install mtd-utils
sudo apt-get install xtrans-dev
sudo apt-get install libxcb-randr0-dev
sudo apt-get install libxcb-xtest0-dev
sudo apt-get install libxcb-xinerama0-dev
sudo apt-get install libxcb-shape0-dev
sudo apt-get install libxcb-xkb-dev
sudo apt-get install openssh-server
sudo apt-get install util-linux
sudo apt-get install sysvinit-utils
sudo apt-get install cython
sudo apt-get install google-perftools
```

### Creacion del TFTP Server

PetaLinux also requires a TFTP server service to support TFTP booting on a target system. In the /etc/xinetd.d/ directory create a TFTP service file:

```sh
~$ sudo nano /etc/xinetd.d/tftp
```

y configurar este como:

```
service tftp
    {
    protocol = udp
    port = 69
    socket_type = dgram
    wait = yes
    user = nobody
    server = /usr/sbin/in.tftpd
    server_args = /tftpboot
    disable = no
    }
```

Then create the directory for the TFTP service to pull files from during the target boot process such as the boot image file (BOOT.bin), kernel, device tree, etc. Give the directory the appropriate permissions and give ownership to the same user specified in the TFTP service.

```sh
~$ sudo mkdir /tftpboot
~$ sudo chmod -R 777 /tftpboot
~$ sudo chown -R nobody /tftpboot
```

Stop and restart the host machine's extended internet services for these changes to take effect.

```sh
~$ sudo /etc/init.d/xinetd stop
~$ sudo /etc/init.d/xinetd start
```
