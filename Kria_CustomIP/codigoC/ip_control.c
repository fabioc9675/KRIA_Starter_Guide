#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h> // Para la función sleep()

#define IP_BASE_ADDRESS 0x80010000 // Dirección base del IP personalizado
#define REGISTER_SIZE 4            // Tamaño del registro en bytes (32 bits = 4 bytes)

int main()
{
    int fd;
    void *mapped_base, *mapped_dev_base;

    // Abrir el dispositivo para acceder a su espacio de memoria
    if ((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1)
    {
        perror("Error abriendo /dev/mem");
        return -1;
    }

    // Mapear la memoria física en el espacio de memoria virtual del proceso
    mapped_base = mmap(0, REGISTER_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, IP_BASE_ADDRESS);
    if (mapped_base == (void *)-1)
    {
        perror("Error mapeando la dirección base");
        return -1;
    }

    // Calcular la dirección de memoria virtual del IP
    mapped_dev_base = mapped_base;

    // Acceder a registros del IP personalizado
    // Ejemplo de lectura de un registro
    int reg_value = *((volatile unsigned int *)mapped_dev_base);
    printf("Valor del registro: 0x%08x\n", reg_value);

    for (int i = 0; i < 10; i++)
    {

        // Ejemplo de escritura en un registro
        *((volatile unsigned int *)mapped_dev_base) = i;

        sleep(1);

        // Acceder a registros del IP personalizado
        // Ejemplo de lectura de un registro
        reg_value = *((volatile unsigned int *)mapped_dev_base);
        printf("Valor del registro: 0x%08x\n", reg_value);

        // Ejemplo de escritura en un registro
        *((volatile unsigned int *)mapped_dev_base) = 0x00;

        // Ejemplo de escritura en un registro
        *((volatile unsigned int *)mapped_dev_base) = 0xFF;

        // Acceder a registros del IP personalizado
        // Ejemplo de lectura de un registro
        reg_value = *((volatile unsigned int *)mapped_dev_base);
        printf("Valor del registro: 0x%08x\n", reg_value);

        // Agregar un retraso de 5 segundos antes de finalizar
        sleep(4);
    }

    // Liberar el mapeo de memoria
    if (munmap(mapped_base, REGISTER_SIZE) == -1)
    {
        perror("Error al liberar el mapeo de memoria");
        return -1;
    }

    // Cerrar el dispositivo
    close(fd);

    return 0;
}
