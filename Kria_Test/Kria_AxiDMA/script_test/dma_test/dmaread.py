import os
import mmap
import struct

# Configuración del AXI DMA
DMA_BASE_ADDR = 0x80010000  # Dirección base del AXI DMA
DMA_ADDR_SIZE = 0x2000      # Tamaño mapeado (8 KB)

# Dirección y tamaño del buffer de datos
BUFFER_ADDR = 0x1B000000  # Dirección en DDR donde se escribirán los datos
BUFFER_SIZE = 8191        # Tamaño del buffer (8191 bytes)

# Registros de control y estado del AXI DMA
S2MM_DMACR = 0x30  # Registro de control S2MM
S2MM_DMASR = 0x34  # Registro de estado S2MM
S2MM_DA    = 0x48  # Dirección de destino S2MM
S2MM_LENGTH = 0x58 # Longitud de la transferencia S2MM

# Mapear /dev/mem
with open("/dev/mem", "r+b") as f:
    # Mapear el espacio de memoria del AXI DMA
    dma_mem = mmap.mmap(f.fileno(), DMA_ADDR_SIZE, offset=DMA_BASE_ADDR)

    # Mapear el buffer en memoria DDR
    ddr_mem = mmap.mmap(f.fileno(), BUFFER_SIZE, offset=BUFFER_ADDR)

    # Función para leer un registro
    def read_reg(offset):
        dma_mem.seek(offset)
        return int.from_bytes(dma_mem.read(4), byteorder='little')

    # Función para escribir en un registro
    def write_reg(offset, value):
        dma_mem.seek(offset)
        dma_mem.write(value.to_bytes(4, byteorder='little'))

    # Configurar y comenzar la transferencia S2MM
    def start_s2mm_transfer():
        print("Iniciando transferencia S2MM...")
        write_reg(S2MM_DMACR, 0x4)  # Reset del DMA
        write_reg(S2MM_DMACR, 0x1)  # Iniciar transferencia
        write_reg(S2MM_DA, BUFFER_ADDR)  # Configurar dirección del buffer
        write_reg(S2MM_LENGTH, BUFFER_SIZE)  # Configurar tamaño de la transferencia

    # Leer el estado del DMA
    def get_s2mm_status():
        status = read_reg(S2MM_DMASR)
        print(f"S2MM Status: 0x{status:08X}")
        return status

    # Iniciar la transferencia
    start_s2mm_transfer()

    # Esperar a que la transferencia se complete
    while True:
        status = get_s2mm_status()
        if status & 0x2:  # Bit 1: Transferencia completada
            print("Transferencia completada.")
            break
        if status & 0x10:  # Bit 4: Error
            print("Error en la transferencia.")
            break

    # Leer los datos recibidos desde el buffer
    ddr_mem.seek(0)  # Volver al inicio del buffer
    data = ddr_mem.read(BUFFER_SIZE)

    # Interpretar los datos como enteros de 32 bits (por ejemplo)
    data_values = struct.unpack(f"<{BUFFER_SIZE // 4}I", data)
    print("Datos recibidos:", data_values)

    # Cerrar los mapeos de memoria
    dma_mem.close()
    ddr_mem.close()

