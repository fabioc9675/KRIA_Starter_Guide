#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>

void print_mem(void *virtual_address, int byte_count) {
    char *data_ptr = virtual_address;

    for (int i = 0; i < byte_count; i++) {
        printf("%02X", data_ptr[i]);

        // Imprimir un espacio cada 4 bytes (índice 0)
        if (i % 4 == 3) {
            printf(" ");
        }
    }
    printf("\n");
}

int main() {
    printf("Leyendo el buffer de destino lleno por la FPGA...\n");

    // Abrir el archivo de memoria de dispositivo
    int ddr_memory = open("/dev/mem", O_RDWR | O_SYNC);
    if (ddr_memory < 0) {
        perror("No se pudo abrir /dev/mem");
        return -1;
    }

    // Dirección física donde la FPGA llena el buffer (ejemplo: 0x80010000)
    unsigned int buffer_address = 0xC0000000;

    // Mapear la dirección del buffer en el espacio de usuario
    unsigned int *virtual_dst_addr = mmap(NULL, 8192, PROT_READ | PROT_WRITE, MAP_SHARED, ddr_memory, buffer_address);
    if (virtual_dst_addr == MAP_FAILED) {
        perror("Fallo al mapear el buffer de destino");
        close(ddr_memory);
        return -1;
    }

    // Leer el contenido del buffer (8191 bytes)
    printf("Contenido del buffer:\n");
    print_mem(virtual_dst_addr, 8191);

    // Desmapear la memoria y cerrar el archivo
    munmap(virtual_dst_addr, 8192);
    close(ddr_memory);

    printf("Lectura del buffer completa.\n");
    return 0;
}

