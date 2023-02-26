import os
import sys
import time
import subprocess
import multiprocessing

for i in range(0,10):
    os.system('echo 1 > /sys/class/gpio/gpio480/value') # Turn on the led
    time.sleep(1)
    os.system('echo 0 > /sys/class/gpio/gpio480/value') # Turn off the led
    time.sleep(1)

    # also we can to read the state of a pin in case it is an input
    gpio_in_pin = open('/sys/class/gpio/gpio320/value', 'r')
    gpio_in = gpio_in_pin.read()
    print('entrada = ', gpio_in)

    if gpio_in == 1:
        os.system('echo 1 > /sys/class/gpio/gpio481/value')
    else:
        os.system('echo 0 > /sys/class/gpio/gpio481/value')


