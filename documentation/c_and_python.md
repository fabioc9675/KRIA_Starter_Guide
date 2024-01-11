Para lograr ejecutar una función en C desde Python y permitir la modificación del valor a escribir en la memoria, puedes emplear la biblioteca `ctypes` de Python, la cual facilita la llamada a funciones de bibliotecas compartidas en C desde Python.

Primero, convierte tu código C en una función. Luego, compila tu código C como una biblioteca compartida (un archivo .so en Linux) para que Python pueda llamar a esa función.

Aquí hay un ejemplo simplificado para ilustrar cómo hacerlo:

### 1. Código C convertido en función:

```c
// my_c_function.c

#include <stdio.h>
#include <stdlib.h>

#define IP_BASE_ADDRESS 0x80010000 // Dirección base del IP personalizado
#define REGISTER_SIZE    4        // Tamaño del registro en bytes (32 bits = 4 bytes)

void write_to_register(int value_to_write) {
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
```

### 2. Compilar el código C como una biblioteca compartida (.so):

```bash
gcc -shared -o my_c_function.so -fPIC my_c_function.c
```

Esto generará un archivo `my_c_function.so`.

### 3. Llamada a la función C desde Python usando `ctypes`:

```python
# my_python_script.py
import ctypes

# Cargar la biblioteca compartida
my_c_function = ctypes.CDLL('./my_c_function.so')

# Definir el tipo de argumento y valor a escribir en el registro
value = ctypes.c_uint(0x12345678)  # Cambia este valor según sea necesario

# Llamar a la función C desde Python
my_c_function.write_to_register(value)
```

Asegúrate de especificar el nombre del archivo `.so` generado por tu compilador en la función `CDLL()` según sea necesario.

Esto te permitirá ejecutar la función C desde Python y modificar el valor a escribir en la memoria simplemente cambiando el valor de `value` en tu script de Python.

### 4. Uso de funcion en C para usar SPIDEV

aqui se encuentra un ejemplo de uso de C para crear la funcion usando SPIDEV

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <linux/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>

#define SPI_DEVICE          "/dev/spidev0.0"

uint8_t tx_buffer[32];
uint8_t rx_buffer[32];
uint32_t len_data = 32;
uint32_t spi_speed = 1000000;
int fd;
int ret;
struct spi_ioc_transfer trx;
uint8_t looper;
uint32_t scratch32;

int main(void) {
    trx.tx_buf = (unsigned long)tx_buffer;
    trx.rx_buf = (unsigned long)rx_buffer;
    trx.bits_per_word = 0;
    trx.speed_hz = spi_speed;
    trx.delay_usecs = 0;
    trx.len = 32;

    for(looper=0; looper<32; ++looper) {
        tx_buffer[looper] = looper;
        rx_buffer[looper] = 0xFF;
    }

    fd = open(SPI_DEVICE, O_RDWR);
    if(fd < 0) {
        printf("Could not open the SPI device...\r\n");
        exit(EXIT_FAILURE);
    }

    ret = ioctl(fd, SPI_IOC_RD_MODE32, &scratch32);
    if(ret != 0) {
        printf("Could not read SPI mode...\r\n");
        close(fd);
        exit(EXIT_FAILURE);
    }

    scratch32 |= SPI_MODE_0;

    ret = ioctl(fd, SPI_IOC_WR_MODE32, &scratch32);
    if(ret != 0) {
        printf("Could not write SPI mode...\r\n");
        close(fd);
        exit(EXIT_FAILURE);
    }

    ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &scratch32);
    if(ret != 0) {
        printf("Could not read the SPI max speed...\r\n");
        close(fd);
        exit(EXIT_FAILURE);
    }

    scratch32 = 5000000;

    ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &scratch32);
    if(ret != 0) {
        printf("Could not write the SPI max speed...\r\n");
        close(fd);
        exit(EXIT_FAILURE);
    }

    ret = ioctl(fd, SPI_IOC_MESSAGE(1), &trx);
    if(ret != 0) {
        printf("SPI transfer returned %d...\r\n", ret);
    }

    printf("Received SPI buffer...\r\n");
    for(looper=0; looper<32; ++looper) {
        printf("%02x",rx_buffer[looper]);
    }
    printf("\r\n");

    close(fd);

    exit(EXIT_SUCCESS);



  

}
```

Fin de la funcion 

---
