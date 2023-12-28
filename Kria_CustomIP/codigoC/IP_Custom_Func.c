#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>

#define IP_BASE_ADDRESS 0x80010000 // Dirección base del IP personalizado
#define REGISTER_SIZE    4        // Tamaño del registro en bytes (32 bits = 4 bytes)

void Fab_Led_IP_writeReg(int value_to_write) {
    int fd;
    void *mapped_base, *mapped_dev_base;

    // Abrir el dispositivo para acceder a su espacio de memoria
    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) {
        perror("Error abriendo /dev/mem");
        exit(-1);
    }

    // Mapear la memoria física en el espacio de memoria virtual del proceso
    mapped_base = mmap(0, REGISTER_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, IP_BASE_ADDRESS);
    if(mapped_base == (void *) -1) {
        perror("Error mapeando la dirección base");
        exit(-1);
    }

    // Calcular la dirección de memoria virtual del IP
    mapped_dev_base = mapped_base;

    // Escribir en el registro
    *((volatile unsigned int *) mapped_dev_base) = value_to_write;

    // Liberar el mapeo de memoria
    if (munmap(mapped_base, REGISTER_SIZE) == -1) {
        perror("Error al liberar el mapeo de memoria");
        exit(-1);
    }

    // Cerrar el dispositivo
    close(fd);
}