# Primeros pasos con Kria KR260 en Petalinux 2022.2

## Tutorial paso a paso

Para este proceso seguir el siguiente [tutorial](https://www.hackster.io/whitney-knitter/getting-started-with-the-kria-kr260-in-petalinux-2022-1-daec16).

![Petalinux_download](./T04_Images/Portada.avif)

### Resumen

Continuing on with my getting started series for the Kria KR260 Robotics Starter kit, I'm covering how to create an embedded Linux image for it using PetaLinux with the appropriate hooks enabled for FPGA accelerated applications to be developed for it later on using Vitis.

As I explained in my Vitis 2022.1 on Ubuntu 22.04 installation project post, KRS does not support PetaLinux for the KR260, it only supports the cross compilation of an Ubuntu 22.04 image as the root filesystem. So I have switched back to the `gcc-multilib` GNU C compiler on my host machine to be able to compile PetaLinux root filesystems. Therefore any PetaLinux projects I will be doing for the KR260 will not involve KRS, and will just be accelerated applications and/or regular Linux applications.

## Paso opcional (Yo no lo realice)

### Upgrade Petalinux SDK

The BSPs for the Kria KR260 and KV260 require the Update1 to be applied to PetaLinux, otherwise the project will not build correctly (if at all). Start be sourcing the PetaLinux tools in the host machine environment.

```bash
~$ source /tools/Xilinx/PetaLinux/2022.2/settings.sh
```

And upgrade the PetaLinux eSDK with Update1:

```bash
~$ petalinux-upgrade -u http://petalinux.xilinx.com/sswreleases/rel-v2022/sdkupdate/2022.2_update1/ -p "aarch64" --wget-args "--wait 1 -nH --cut-dirs=4"
```

## Source the Petalinux folder

Para realizar la compilacion de Petalinux es necesario hacer source de la carpeta contenedora de Petalinux, para eso utilizamos el siguiente comando

```bash
~$ source /tools/Xilinx/PetaLinux/2022.2/settings.sh
```

## Creacion de un proyecto Petalinux para KR260 BSP

Primero es necesario desactivar los proxy http y https, para que no presente problemas con la ejecucion de scripts de python en la construccion de PetaLinux.

```bash
~$ unset http_proxy
~$ unset https_proxy
```

Change directories into the desired location to create the PetaLinux project in. I personally like to create my PetaLinux projects in the top level directory of the corresponding Vivado project I'm pulling the hardware design in from. Once in the desired directory location, create a PetaLinux project using the Kria KR260 BSP (download here), and change directories into it.

```bash
~$ cd <repository path>/Kria_KR260/
~/Kria_KR260$ petalinux-create --type project -s /tools/Xilinx/PetaLinux/2022.2/bsp_files/xilinx-kr260-starterkit-v2022.2-10141622.bsp --name linux_os
~/Kria_KR260$ cd ./linux_os/
```

Then import the hardware platform exported from Vivado that has the hooks for an accelerated design, esto importará el archivo XSA y lo utilizará como plataforma para Petalinux:

```bash
~/Kria_KR260/linux_os$ petalinux-config --get-hw-description ../
```

In the system configuration editor, start by enabling **FPGA manager** (which I'm not totally sure why the FPGA manager isn't enabled by default in the BSP since the KR260 definitely needs it for the device tree overlay functionality).

Then set the root filesystem type to `INITRD` with the **INITRAMFS/INITRD Image name** set as **petalinux-initramfs-image**, and disable TFTP boot if you don't plan to use it.

```bash
FPGA Manager --> Fpga Manager[*]

Image Packaging Configuration --> Root Filesystem Type --> INITRD[*]
Image Packaging Configuration --> INITRAMFS/INITRD Image name --> petalinux-initramfs-image
Image Packaging Configuration --> Copy final images to tftpboot[]
```

![Petalinux_download](./T04_Images/PetaConfig-1.avif)

Changing the image name to `petalinux-initramfs-image` (default is **petalinux-image-minimal**) is super important or the ramdisk image to mount the root filesystem in the early steps of the boot process will not be generated which will cause the root filesystem to not be persistent between power cycles on the KR260.

![Petalinux_download](./T04_Images/PetaConfig-2.avif)

Exit the system configuration editor, opting to save the changes.

Then attempt to build the project for the first time.

```bash
~/Kria_KR260/linux_os$ petaliunx-build
```

This first build took a little over two hours for me; this PetaLinux project for the KR260 is very large, and with all of the required libraries it's just a lot right now. I'm sure there will be an improvement in some future iterations.

Which I why I recommend running that first build before customizing the root filesystem and/or kernel at all to add any packages. The subsequent build after that first one do execute within a few minutes since it's just adding on the extra packages.

## Construir Sysroot (SDK) para el proyecto

After the project has been built, build the SDK for the project to get a sysroot to use with Vitis to compile any custom accelerated applications later on:

```bash
~/Kria_KR260/linux_os$ petaliunx-build --sdk
```

## Empaquetas WIC file para SD Card
