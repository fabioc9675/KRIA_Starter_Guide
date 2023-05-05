#!/bin/bash


echo ""
echo ""
echo "#############################################################################"
echo "Activate 86 architecture"
echo "#############################################################################"
echo ""
echo ""

sudo dpkg --add-architecture i386
sudo dpkg-reconfigure dash

echo ""
echo ""
echo "#############################################################################"
echo "Installing packages"
echo "#############################################################################"
echo ""
echo ""

sudo apt-get install -y iproute2 make libncurses5-dev tftpd libselinux1 wget diffstat chrpath socat tar unzip gzip tofrodos
sudo apt-get install -y debianutils iputils-ping libegl1-mesa libsdl1.2-dev pylint python3 python2 cpio tftpd gnupg zlib1g:i386 haveged perl
sudo apt-get install -y lib32stdc++6 libgtk2.0-0:i386 libfontconfig1:i386 libx11-6:i386 libxext6:i386 libxrender1:i386 libsm6:i386
sudo apt-get install -y xinetd gawk gcc net-tools ncurses-dev openssl libssl-dev flex bison xterm autoconf libtool texinfo zlib1g-dev
sudo apt-get install -y gcc-multilib build-essential automake screen putty pax g++ python3-pip xz-utils python3-git python3-jinja2 python3-pexpect
sudo apt-get install -y liberror-perl mtd-utils xtrans-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
sudo apt-get install -y openssh-server util-linux sysvinit-utils google-perftools
sudo apt-get install -y libncurses5 libncurses5-dev libncursesw5-dev libncurses5:i386 libtinfo5
sudo apt-get install -y libstdc++6:i386 libgtk2.0-0:i386 dpkg-dev:i386
sudo apt-get install -y ocl-icd-libopencl1 opencl-headers ocl-icd-opencl-dev

echo ""
echo ""
echo "#############################################################################"
echo "Running XILINX commands"
echo "#############################################################################"
echo ""
echo ""

sudo apt-get install libtinfo5
sudo apt install libncurses5

echo ""
echo ""
echo "#############################################################################"
echo "Installing packages"
echo "#############################################################################"
echo ""
echo ""

sudo apt-get install -y lib32stdc++6
sudo apt-get install -y libgtk2.0-0:i386
sudo apt-get install -y libfontconfig1:i386
sudo apt-get install -y libx11-6:i386
sudo apt-get install -y libxext6:i386
sudo apt-get install -y libxrender1:i386
sudo apt-get install -y libsm6:i386
sudo apt-get install -y libqtgui4:i386
sudo apt-get install -y xinetd
sudo apt-get install -y iproute2
sudo apt-get install -y gawk
sudo apt-get install -y gcc
sudo apt-get install -y net-tools
sudo apt-get install -y ncurses-dev
sudo apt-get install -y openssl
sudo apt-get install -y libssl-dev
sudo apt-get install -y flex
sudo apt-get install -y bison
sudo apt-get install -y xterm
sudo apt-get install -y autoconf
sudo apt-get install -y libtool
sudo apt-get install -y texinfo
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y gcc-multilib
sudo apt-get install -y build-essential
sudo apt-get install -y automake
sudo apt-get install -y screen
sudo apt-get install -y putty
sudo apt-get install -y pax
sudo apt-get install -y g++
sudo apt-get install -y python3-pip
sudo apt-get install -y xz-utils
sudo apt-get install -y python3-git
sudo apt-get install -y python3-jinja2
sudo apt-get install -y python3-pexpect
sudo apt-get install -y debianutils
sudo apt-get install -y iputils-ping
sudo apt-get install -y libegl1-mesa
sudo apt-get install -y libsdl1.2-dev
sudo apt-get install -y pylint3
sudo apt-get install -y python3
sudo apt-get install -y cpio
sudo apt-get install -y tftpd-hpa
sudo apt-get install -y gnupg
sudo apt-get install -y zlib1g:i386
sudo apt-get install -y haveged
sudo apt-get install -y perl
sudo apt-get install -y liberror-perl
sudo apt-get install -y mtd-utils
sudo apt-get install -y xtrans-dev
sudo apt-get install -y libxcb-randr0-dev
sudo apt-get install -y libxcb-xtest0-dev
sudo apt-get install -y libxcb-xinerama0-dev
sudo apt-get install -y libxcb-shape0-dev
sudo apt-get install -y libxcb-xkb-dev
sudo apt-get install -y openssh-server
sudo apt-get install -y util-linux
sudo apt-get install -y sysvinit-utils
sudo apt-get install -y cython
sudo apt-get install -y google-perftools
