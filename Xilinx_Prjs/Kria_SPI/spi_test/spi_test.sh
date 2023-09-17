
 #!/bin/sh

 # 1. Basic Initialization
echo ""
echo "Read and clear interrupts"
devmem 0x80080020                                # to clear interrupts - 1
devmem 0x80080070 32 0xffffffff                  # clear SS - 1
devmem 0x80080060 32 0x180 # 0x1e6                       # inhibit transaction -1

 # 2. Setup for multi-byte
 # ~> Default is fine: devmem 0x8008001C 32 0x00000000           # configure DGIER (Device Global Int En Reg) - 2
 # ~> Default is fine: devmem 0x80080028 32 0x00000000           # configure IPIER (IP Int En Reg) - 2

 # 3. and 4.
devmem 0x80080060 32 0x00000000          # write data to master SPICR

 # 5. Select the slave
devmem 0x80080070 32 0xfffffffe          # set SS - 5

 # 6. and 7. Send Transaction
devmem 0x80080068 8 0xDE
devmem 0x80080068 8 0xAD
devmem 0x80080068 8 0xBE
devmem 0x80080068 8 0xEF
devmem 0x80080068 8 0x40
devmem 0x80080068 8 0x48

 # deactivate SS
 # devmem 0x80080070 32 0xffffffff          # set SS - 5

echo "read status"
devmem 0x80080064

echo "read Data"
devmem 0x8008006C
devmem 0x8008006C
devmem 0x8008006C
devmem 0x8008006C
devmem 0x8008006C
devmem 0x8008006C

echo ""
echo "Read out buffer occupancy: x \+ 1 = number of bytes"
devmem 0x80080074                                        # read out fifo - 6 and 7

echo ""
echo "Send buffer"
devmem 0x80080060 32 0x86                                # write data to master SPICR - 8

echo ""
echo "Read and clear interrupts"
devmem 0x80080020

echo ""
echo "Read and clear interrupts"
devmem 0x80080064                                        # Read SPISR reg - 11 and 12

