UDMA Server 
----------------------------

The UDMA server runs a FreeRTOS lwIP tcp server application at port 7, or specified. 
Any data sent to this port is processed by the process_command function defined in udma.h.
The interaction with the FPGA is done through the ComBlock IP.

By default, the program assigns the following settings to the board:
IP Address: 192.168.1.10
Netmask   : 255.255.255.0
Gateway   : 192.168.1.1
MAC address:  00:0a:35:00:01:02
These settings can be changed in the file main.c.

The server logic is present in the file udma.c.

Running the UDMA Server example
-------------------------------

To connect and test the server, download and run the program on the board,
and then excecute the UDMA Python CLI in the host machine.
