# my_python_script.py
import ctypes
import time

# Cargar la biblioteca compartida
my_c_function = ctypes.CDLL('./IP_Custom_Func.so')

# Definir el tipo de argumento y valor a escribir en el registro
value = ctypes.c_uint(0x00)  # Cambia este valor según sea necesario
# Llamar a la función C desde Python
my_c_function.Fab_Led_IP_writeReg(value)
time.sleep(2)

value = ctypes.c_uint(0xFF)  # Cambia este valor según sea necesario
# Llamar a la función C desde Python
my_c_function.Fab_Led_IP_writeReg(value)
time.sleep(2)

