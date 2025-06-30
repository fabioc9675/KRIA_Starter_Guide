
/* from https://gitlab.com/kbogt/infn_pamp/-/blob/master/SDK/UDMA_workspace/udma/src/comblock_configs.h
This file contains the definitions for the multiple instantiated Comblocks.
For each new Comblock in the design a new entry in the XComblock_ConfigTable must be done.
All required values are defined inside xparameters.h file.
*/

#ifndef COMBLOCK_CONFIG
#define COMBLOCK_CONFIG

#include "xparameters.h"
#include "comblock.h"

#define true 1
#define false 0

typedef struct {
    u32 DEVICE_ID;
    u32 AXIL_BASEADDR;
    u32 AXIL_HIGHADDR;
    u32 AXIF_BASEADDR;
    u32 AXIF_HIGHADDR;
    u32 REGS_IN_ENA;
    u32 REGS_IN_DWIDTH;
    u32 REGS_IN_DEPTH;
    u32 REGS_OUT_ENA;
    u32 REGS_OUT_DWIDTH;
    u32 REGS_OUT_DEPTH;
    u32 DRAM_IO_ENA;
    u32 DRAM_IO_DWIDTH;
    u32 DRAM_IO_AWIDTH;
    u32 DRAM_IO_DEPTH;
    u32 FIFO_IN_ENA;
    u32 FIFO_IN_DWIDTH;
    u32 FIFO_IN_DEPTH;
    u32 FIFO_IN_AFOFFSET;
    u32 FIFO_IN_AEOFFSET;
    u32 FIFO_OUT_ENA;
    u32 FIFO_OUT_DWIDTH;
    u32 FIFO_OUT_DEPTH;
    u32 FIFO_OUT_AFOFFSET;
    u32 FIFO_OUT_AEOFFSET;
} Comblock_Config;

extern Comblock_Config XComblock_ConfigTable [XPAR_COMBLOCK_NUM_INSTANCES];

#endif
    
