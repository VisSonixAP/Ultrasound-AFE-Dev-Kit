
# Program bin file (Update: 2026/09/03)

```
D:\Xilinx\SDK\2018.3\bin>cmd /C program_flash -f ~\BOOT.bin -offset 0 -flash_type qspi-x4-single -fsbl ~\FSBL_DL_Ver.elf -cable type xilinx_tcf url TCP:127.0.0.1:3121

****** Xilinx Program Flash
****** Program Flash v2018.3 (64-bit)
  **** SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
    ** Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.


WARNING: Failed to connect to hw_server at TCP:127.0.0.1:3121
Attempting to launch hw_server at TCP:127.0.0.1:3121

Connected to hw_server @ TCP:127.0.0.1:3121
Available targets and devices:
Target 0 : jsn-JTAG-SMT1-000000000069A
        Device 0: jsn-JTAG-SMT1-000000000069A-4ba00477-0

Retrieving Flash info...

Initialization done, programming the memory
===== mrd->addr=0xF800025C, data=0x00000001 =====
BOOT_MODE REG = 0x00000001
WARNING: [Xicom 50-100] The current boot mode is QSPI.
If flash programming fails, configure device for JTAG boot mode and try again.
===== mrd->addr=0xF8007080, data=0x30800100 =====
===== mrd->addr=0xF8000B18, data=0x00000000 =====
Downloading FSBL...
Running FSBL...
Finished running FSBL.
===== mrd->addr=0xF8000110, data=0x00113220 =====
READ: ARM_PLL_CFG (0xF8000110) = 0x00113220
===== mrd->addr=0xF8000100, data=0x00024008 =====
READ: ARM_PLL_CTRL (0xF8000100) = 0x00024008
===== mrd->addr=0xF8000120, data=0x1F000200 =====
READ: ARM_CLK_CTRL (0xF8000120) = 0x1F000200
===== mrd->addr=0xF8000118, data=0x001452C0 =====
READ: IO_PLL_CFG (0xF8000118) = 0x001452C0
===== mrd->addr=0xF8000108, data=0x0001E008 =====
READ: IO_PLL_CTRL (0xF8000108) = 0x0001E008
Info:  Remapping 256KB of on-chip-memory RAM memory to 0xFFFC0000.
===== mrd->addr=0xF8000008, data=0x00000000 =====
===== mwr->addr=0xF8000008, data=0x0000DF0D =====
MASKWRITE: addr=0xF8000008, mask=0x0000FFFF, newData=0x0000DF0D
===== mwr->addr=0xF8000910, data=0x000001FF =====
===== mrd->addr=0xF8000004, data=0x00000000 =====
===== mwr->addr=0xF8000004, data=0x0000767B =====
MASKWRITE: addr=0xF8000004, mask=0x0000FFFF, newData=0x0000767B


U-Boot 2018.01-00073-g63efa8c-dirty (Oct 04 2018 - 08:22:22 -0600)

Model: Zynq CSE QSPI Board
Board: Xilinx Zynq
Silicon: v3.1
DRAM:  256 KiB
WARNING: Caches not enabled
Using default environment

In:    dcc
Out:   dcc
Err:   dcc
Zynq> sf probe 0 0 0
SF: Detected s25fl256s_64k with page size 256 Bytes, erase size 64 KiB, total 32 MiB
Zynq> Sector size = 65536.
f probe 0 0 0
Performing Erase Operation...
sf erase 0 1010000
SF: 16842752 bytes @ 0x0 Erased: OK
Zynq> Erase Operation successful.
INFO: [Xicom 50-44] Elapsed time = 41 sec.
Performing Program Operation...
0%...sf write FFFC0000 0 20000
device 0 offset 0x0, size 0x20000
SF: 131072 bytes @ 0x0 Written: OK
Zynq> sf write FFFC0000 20000 20000
device 0 offset 0x20000, size 0x20000
SF: 131072 bytes @ 0x20000 Written: OK
Zynq> sf write FFFC0000 40000 20000
device 0 offset 0x40000, size 0x20000
SF: 131072 bytes @ 0x40000 Written: OK
Zynq> sf write FFFC0000 60000 20000
device 0 offset 0x60000, size 0x20000
SF: 131072 bytes @ 0x60000 Written: OK
Zynq> sf write FFFC0000 80000 20000
device 0 offset 0x80000, size 0x20000
SF: 131072 bytes @ 0x80000 Written: OK
Zynq> sf write FFFC0000 A0000 20000
device 0 offset 0xa0000, size 0x20000
SF: 131072 bytes @ 0xa0000 Written: OK
Zynq> sf write FFFC0000 C0000 20000
device 0 offset 0xc0000, size 0x20000
SF: 131072 bytes @ 0xc0000 Written: OK
Zynq> sf write FFFC0000 E0000 20000
device 0 offset 0xe0000, size 0x20000
SF: 131072 bytes @ 0xe0000 Written: OK
Zynq> sf write FFFC0000 100000 20000
device 0 offset 0x100000, size 0x20000
SF: 131072 bytes @ 0x100000 Written: OK
Zynq> sf write FFFC0000 120000 20000
device 0 offset 0x120000, size 0x20000
SF: 131072 bytes @ 0x120000 Written: OK
Zynq> sf write FFFC0000 140000 20000
device 0 offset 0x140000, size 0x20000
SF: 131072 bytes @ 0x140000 Written: OK
Zynq> sf write FFFC0000 160000 20000
device 0 offset 0x160000, size 0x20000
SF: 131072 bytes @ 0x160000 Written: OK
Zynq> sf write FFFC0000 180000 20000
device 0 offset 0x180000, size 0x20000
SF: 131072 bytes @ 0x180000 Written: OK
Zynq> 10%...sf write FFFC0000 1A0000 20000
device 0 offset 0x1a0000, size 0x20000
SF: 131072 bytes @ 0x1a0000 Written: OK
Zynq> sf write FFFC0000 1C0000 20000
device 0 offset 0x1c0000, size 0x20000
SF: 131072 bytes @ 0x1c0000 Written: OK
Zynq> sf write FFFC0000 1E0000 20000
device 0 offset 0x1e0000, size 0x20000
SF: 131072 bytes @ 0x1e0000 Written: OK
Zynq> sf write FFFC0000 200000 20000
device 0 offset 0x200000, size 0x20000
SF: 131072 bytes @ 0x200000 Written: OK
Zynq> sf write FFFC0000 220000 20000
device 0 offset 0x220000, size 0x20000
SF: 131072 bytes @ 0x220000 Written: OK
Zynq> sf write FFFC0000 240000 20000
device 0 offset 0x240000, size 0x20000
SF: 131072 bytes @ 0x240000 Written: OK
Zynq> sf write FFFC0000 260000 20000
device 0 offset 0x260000, size 0x20000
SF: 131072 bytes @ 0x260000 Written: OK
Zynq> sf write FFFC0000 280000 20000
device 0 offset 0x280000, size 0x20000
SF: 131072 bytes @ 0x280000 Written: OK
Zynq> sf write FFFC0000 2A0000 20000
device 0 offset 0x2a0000, size 0x20000
SF: 131072 bytes @ 0x2a0000 Written: OK
Zynq> sf write FFFC0000 2C0000 20000
device 0 offset 0x2c0000, size 0x20000
SF: 131072 bytes @ 0x2c0000 Written: OK
Zynq> sf write FFFC0000 2E0000 20000
device 0 offset 0x2e0000, size 0x20000
SF: 131072 bytes @ 0x2e0000 Written: OK
Zynq> sf write FFFC0000 300000 20000
device 0 offset 0x300000, size 0x20000
SF: 131072 bytes @ 0x300000 Written: OK
Zynq> sf write FFFC0000 320000 20000
device 0 offset 0x320000, size 0x20000
SF: 131072 bytes @ 0x320000 Written: OK
Zynq> 20%...sf write FFFC0000 340000 20000
device 0 offset 0x340000, size 0x20000
SF: 131072 bytes @ 0x340000 Written: OK
Zynq> sf write FFFC0000 360000 20000
device 0 offset 0x360000, size 0x20000
SF: 131072 bytes @ 0x360000 Written: OK
Zynq> sf write FFFC0000 380000 20000
device 0 offset 0x380000, size 0x20000
SF: 131072 bytes @ 0x380000 Written: OK
Zynq> sf write FFFC0000 3A0000 20000
device 0 offset 0x3a0000, size 0x20000
SF: 131072 bytes @ 0x3a0000 Written: OK
Zynq> sf write FFFC0000 3C0000 20000
device 0 offset 0x3c0000, size 0x20000
SF: 131072 bytes @ 0x3c0000 Written: OK
Zynq> sf write FFFC0000 3E0000 20000
device 0 offset 0x3e0000, size 0x20000
SF: 131072 bytes @ 0x3e0000 Written: OK
Zynq> sf write FFFC0000 400000 20000
device 0 offset 0x400000, size 0x20000
SF: 131072 bytes @ 0x400000 Written: OK
Zynq> sf write FFFC0000 420000 20000
device 0 offset 0x420000, size 0x20000
SF: 131072 bytes @ 0x420000 Written: OK
Zynq> sf write FFFC0000 440000 20000
device 0 offset 0x440000, size 0x20000
SF: 131072 bytes @ 0x440000 Written: OK
Zynq> sf write FFFC0000 460000 20000
device 0 offset 0x460000, size 0x20000
SF: 131072 bytes @ 0x460000 Written: OK
Zynq> sf write FFFC0000 480000 20000
device 0 offset 0x480000, size 0x20000
SF: 131072 bytes @ 0x480000 Written: OK
Zynq> sf write FFFC0000 4A0000 20000
device 0 offset 0x4a0000, size 0x20000
SF: 131072 bytes @ 0x4a0000 Written: OK
Zynq> sf write FFFC0000 4C0000 20000
device 0 offset 0x4c0000, size 0x20000
SF: 131072 bytes @ 0x4c0000 Written: OK
Zynq> 30%...sf write FFFC0000 4E0000 20000
device 0 offset 0x4e0000, size 0x20000
SF: 131072 bytes @ 0x4e0000 Written: OK
Zynq> sf write FFFC0000 500000 20000
device 0 offset 0x500000, size 0x20000
SF: 131072 bytes @ 0x500000 Written: OK
Zynq> sf write FFFC0000 520000 20000
device 0 offset 0x520000, size 0x20000
SF: 131072 bytes @ 0x520000 Written: OK
Zynq> sf write FFFC0000 540000 20000
device 0 offset 0x540000, size 0x20000
SF: 131072 bytes @ 0x540000 Written: OK
Zynq> sf write FFFC0000 560000 20000
device 0 offset 0x560000, size 0x20000
SF: 131072 bytes @ 0x560000 Written: OK
Zynq> sf write FFFC0000 580000 20000
device 0 offset 0x580000, size 0x20000
SF: 131072 bytes @ 0x580000 Written: OK
Zynq> sf write FFFC0000 5A0000 20000
device 0 offset 0x5a0000, size 0x20000
SF: 131072 bytes @ 0x5a0000 Written: OK
Zynq> sf write FFFC0000 5C0000 20000
device 0 offset 0x5c0000, size 0x20000
SF: 131072 bytes @ 0x5c0000 Written: OK
Zynq> sf write FFFC0000 5E0000 20000
device 0 offset 0x5e0000, size 0x20000
SF: 131072 bytes @ 0x5e0000 Written: OK
Zynq> sf write FFFC0000 600000 20000
device 0 offset 0x600000, size 0x20000
SF: 131072 bytes @ 0x600000 Written: OK
Zynq> sf write FFFC0000 620000 20000
device 0 offset 0x620000, size 0x20000
SF: 131072 bytes @ 0x620000 Written: OK
Zynq> sf write FFFC0000 640000 20000
device 0 offset 0x640000, size 0x20000
SF: 131072 bytes @ 0x640000 Written: OK
Zynq> sf write FFFC0000 660000 20000
device 0 offset 0x660000, size 0x20000
SF: 131072 bytes @ 0x660000 Written: OK
Zynq> 40%...sf write FFFC0000 680000 20000
device 0 offset 0x680000, size 0x20000
SF: 131072 bytes @ 0x680000 Written: OK
Zynq> sf write FFFC0000 6A0000 20000
device 0 offset 0x6a0000, size 0x20000
SF: 131072 bytes @ 0x6a0000 Written: OK
Zynq> sf write FFFC0000 6C0000 20000
device 0 offset 0x6c0000, size 0x20000
SF: 131072 bytes @ 0x6c0000 Written: OK
Zynq> sf write FFFC0000 6E0000 20000
device 0 offset 0x6e0000, size 0x20000
SF: 131072 bytes @ 0x6e0000 Written: OK
Zynq> sf write FFFC0000 700000 20000
device 0 offset 0x700000, size 0x20000
SF: 131072 bytes @ 0x700000 Written: OK
Zynq> sf write FFFC0000 720000 20000
device 0 offset 0x720000, size 0x20000
SF: 131072 bytes @ 0x720000 Written: OK
Zynq> sf write FFFC0000 740000 20000
device 0 offset 0x740000, size 0x20000
SF: 131072 bytes @ 0x740000 Written: OK
Zynq> sf write FFFC0000 760000 20000
device 0 offset 0x760000, size 0x20000
SF: 131072 bytes @ 0x760000 Written: OK
Zynq> sf write FFFC0000 780000 20000
device 0 offset 0x780000, size 0x20000
SF: 131072 bytes @ 0x780000 Written: OK
Zynq> sf write FFFC0000 7A0000 20000
device 0 offset 0x7a0000, size 0x20000
SF: 131072 bytes @ 0x7a0000 Written: OK
Zynq> sf write FFFC0000 7C0000 20000
device 0 offset 0x7c0000, size 0x20000
SF: 131072 bytes @ 0x7c0000 Written: OK
Zynq> sf write FFFC0000 7E0000 20000
device 0 offset 0x7e0000, size 0x20000
SF: 131072 bytes @ 0x7e0000 Written: OK
Zynq> 50%...sf write FFFC0000 800000 20000
device 0 offset 0x800000, size 0x20000
SF: 131072 bytes @ 0x800000 Written: OK
Zynq> sf write FFFC0000 820000 20000
device 0 offset 0x820000, size 0x20000
SF: 131072 bytes @ 0x820000 Written: OK
Zynq> sf write FFFC0000 840000 20000
device 0 offset 0x840000, size 0x20000
SF: 131072 bytes @ 0x840000 Written: OK
Zynq> sf write FFFC0000 860000 20000
device 0 offset 0x860000, size 0x20000
SF: 131072 bytes @ 0x860000 Written: OK
Zynq> sf write FFFC0000 880000 20000
device 0 offset 0x880000, size 0x20000
SF: 131072 bytes @ 0x880000 Written: OK
Zynq> sf write FFFC0000 8A0000 20000
device 0 offset 0x8a0000, size 0x20000
SF: 131072 bytes @ 0x8a0000 Written: OK
Zynq> sf write FFFC0000 8C0000 20000
device 0 offset 0x8c0000, size 0x20000
SF: 131072 bytes @ 0x8c0000 Written: OK
Zynq> sf write FFFC0000 8E0000 20000
device 0 offset 0x8e0000, size 0x20000
SF: 131072 bytes @ 0x8e0000 Written: OK
Zynq> sf write FFFC0000 900000 20000
device 0 offset 0x900000, size 0x20000
SF: 131072 bytes @ 0x900000 Written: OK
Zynq> sf write FFFC0000 920000 20000
device 0 offset 0x920000, size 0x20000
SF: 131072 bytes @ 0x920000 Written: OK
Zynq> sf write FFFC0000 940000 20000
device 0 offset 0x940000, size 0x20000
SF: 131072 bytes @ 0x940000 Written: OK
Zynq> sf write FFFC0000 960000 20000
device 0 offset 0x960000, size 0x20000
SF: 131072 bytes @ 0x960000 Written: OK
Zynq> sf write FFFC0000 980000 20000
device 0 offset 0x980000, size 0x20000
SF: 131072 bytes @ 0x980000 Written: OK
Zynq> 60%...sf write FFFC0000 9A0000 20000
device 0 offset 0x9a0000, size 0x20000
SF: 131072 bytes @ 0x9a0000 Written: OK
Zynq> sf write FFFC0000 9C0000 20000
device 0 offset 0x9c0000, size 0x20000
SF: 131072 bytes @ 0x9c0000 Written: OK
Zynq> sf write FFFC0000 9E0000 20000
device 0 offset 0x9e0000, size 0x20000
SF: 131072 bytes @ 0x9e0000 Written: OK
Zynq> sf write FFFC0000 A00000 20000
device 0 offset 0xa00000, size 0x20000
SF: 131072 bytes @ 0xa00000 Written: OK
Zynq> sf write FFFC0000 A20000 20000
device 0 offset 0xa20000, size 0x20000
SF: 131072 bytes @ 0xa20000 Written: OK
Zynq> sf write FFFC0000 A40000 20000
device 0 offset 0xa40000, size 0x20000
SF: 131072 bytes @ 0xa40000 Written: OK
Zynq> sf write FFFC0000 A60000 20000
device 0 offset 0xa60000, size 0x20000
SF: 131072 bytes @ 0xa60000 Written: OK
Zynq> sf write FFFC0000 A80000 20000
device 0 offset 0xa80000, size 0x20000
SF: 131072 bytes @ 0xa80000 Written: OK
Zynq> sf write FFFC0000 AA0000 20000
device 0 offset 0xaa0000, size 0x20000
SF: 131072 bytes @ 0xaa0000 Written: OK
Zynq> sf write FFFC0000 AC0000 20000
device 0 offset 0xac0000, size 0x20000
SF: 131072 bytes @ 0xac0000 Written: OK
Zynq> sf write FFFC0000 AE0000 20000
device 0 offset 0xae0000, size 0x20000
SF: 131072 bytes @ 0xae0000 Written: OK
Zynq> sf write FFFC0000 B00000 20000
device 0 offset 0xb00000, size 0x20000
SF: 131072 bytes @ 0xb00000 Written: OK
Zynq> sf write FFFC0000 B20000 20000
device 0 offset 0xb20000, size 0x20000
SF: 131072 bytes @ 0xb20000 Written: OK
Zynq> 70%...sf write FFFC0000 B40000 20000
device 0 offset 0xb40000, size 0x20000
SF: 131072 bytes @ 0xb40000 Written: OK
Zynq> sf write FFFC0000 B60000 20000
device 0 offset 0xb60000, size 0x20000
SF: 131072 bytes @ 0xb60000 Written: OK
Zynq> sf write FFFC0000 B80000 20000
device 0 offset 0xb80000, size 0x20000
SF: 131072 bytes @ 0xb80000 Written: OK
Zynq> sf write FFFC0000 BA0000 20000
device 0 offset 0xba0000, size 0x20000
SF: 131072 bytes @ 0xba0000 Written: OK
Zynq> sf write FFFC0000 BC0000 20000
device 0 offset 0xbc0000, size 0x20000
SF: 131072 bytes @ 0xbc0000 Written: OK
Zynq> sf write FFFC0000 BE0000 20000
device 0 offset 0xbe0000, size 0x20000
SF: 131072 bytes @ 0xbe0000 Written: OK
Zynq> sf write FFFC0000 C00000 20000
device 0 offset 0xc00000, size 0x20000
SF: 131072 bytes @ 0xc00000 Written: OK
Zynq> sf write FFFC0000 C20000 20000
device 0 offset 0xc20000, size 0x20000
SF: 131072 bytes @ 0xc20000 Written: OK
Zynq> sf write FFFC0000 C40000 20000
device 0 offset 0xc40000, size 0x20000
SF: 131072 bytes @ 0xc40000 Written: OK
Zynq> sf write FFFC0000 C60000 20000
device 0 offset 0xc60000, size 0x20000
SF: 131072 bytes @ 0xc60000 Written: OK
Zynq> sf write FFFC0000 C80000 20000
device 0 offset 0xc80000, size 0x20000
SF: 131072 bytes @ 0xc80000 Written: OK
Zynq> sf write FFFC0000 CA0000 20000
device 0 offset 0xca0000, size 0x20000
SF: 131072 bytes @ 0xca0000 Written: OK
Zynq> sf write FFFC0000 CC0000 20000
device 0 offset 0xcc0000, size 0x20000
SF: 131072 bytes @ 0xcc0000 Written: OK
Zynq> 80%...sf write FFFC0000 CE0000 20000
device 0 offset 0xce0000, size 0x20000
SF: 131072 bytes @ 0xce0000 Written: OK
Zynq> sf write FFFC0000 D00000 20000
device 0 offset 0xd00000, size 0x20000
SF: 131072 bytes @ 0xd00000 Written: OK
Zynq> sf write FFFC0000 D20000 20000
device 0 offset 0xd20000, size 0x20000
SF: 131072 bytes @ 0xd20000 Written: OK
Zynq> sf write FFFC0000 D40000 20000
device 0 offset 0xd40000, size 0x20000
SF: 131072 bytes @ 0xd40000 Written: OK
Zynq> sf write FFFC0000 D60000 20000
device 0 offset 0xd60000, size 0x20000
SF: 131072 bytes @ 0xd60000 Written: OK
Zynq> sf write FFFC0000 D80000 20000
device 0 offset 0xd80000, size 0x20000
SF: 131072 bytes @ 0xd80000 Written: OK
Zynq> sf write FFFC0000 DA0000 20000
device 0 offset 0xda0000, size 0x20000
SF: 131072 bytes @ 0xda0000 Written: OK
Zynq> sf write FFFC0000 DC0000 20000
device 0 offset 0xdc0000, size 0x20000
SF: 131072 bytes @ 0xdc0000 Written: OK
Zynq> sf write FFFC0000 DE0000 20000
device 0 offset 0xde0000, size 0x20000
SF: 131072 bytes @ 0xde0000 Written: OK
Zynq> sf write FFFC0000 E00000 20000
device 0 offset 0xe00000, size 0x20000
SF: 131072 bytes @ 0xe00000 Written: OK
Zynq> sf write FFFC0000 E20000 20000
device 0 offset 0xe20000, size 0x20000
SF: 131072 bytes @ 0xe20000 Written: OK
Zynq> sf write FFFC0000 E40000 20000
device 0 offset 0xe40000, size 0x20000
SF: 131072 bytes @ 0xe40000 Written: OK
Zynq> sf write FFFC0000 E60000 20000
device 0 offset 0xe60000, size 0x20000
SF: 131072 bytes @ 0xe60000 Written: OK
Zynq> 90%...sf write FFFC0000 E80000 20000
device 0 offset 0xe80000, size 0x20000
SF: 131072 bytes @ 0xe80000 Written: OK
Zynq> sf write FFFC0000 EA0000 20000
device 0 offset 0xea0000, size 0x20000
SF: 131072 bytes @ 0xea0000 Written: OK
Zynq> sf write FFFC0000 EC0000 20000
device 0 offset 0xec0000, size 0x20000
SF: 131072 bytes @ 0xec0000 Written: OK
Zynq> sf write FFFC0000 EE0000 20000
device 0 offset 0xee0000, size 0x20000
SF: 131072 bytes @ 0xee0000 Written: OK
Zynq> sf write FFFC0000 F00000 20000
device 0 offset 0xf00000, size 0x20000
SF: 131072 bytes @ 0xf00000 Written: OK
Zynq> sf write FFFC0000 F20000 20000
device 0 offset 0xf20000, size 0x20000
SF: 131072 bytes @ 0xf20000 Written: OK
Zynq> sf write FFFC0000 F40000 20000
device 0 offset 0xf40000, size 0x20000
SF: 131072 bytes @ 0xf40000 Written: OK
Zynq> sf write FFFC0000 F60000 20000
device 0 offset 0xf60000, size 0x20000
SF: 131072 bytes @ 0xf60000 Written: OK
Zynq> sf write FFFC0000 F80000 20000
device 0 offset 0xf80000, size 0x20000
SF: 131072 bytes @ 0xf80000 Written: OK
Zynq> sf write FFFC0000 FA0000 20000
device 0 offset 0xfa0000, size 0x20000
SF: 131072 bytes @ 0xfa0000 Written: OK
Zynq> sf write FFFC0000 FC0000 20000
device 0 offset 0xfc0000, size 0x20000
SF: 131072 bytes @ 0xfc0000 Written: OK
Zynq> sf write FFFC0000 FE0000 20000
device 0 offset 0xfe0000, size 0x20000
SF: 131072 bytes @ 0xfe0000 Written: OK
Zynq> 100%
sf write FFFC0000 1000000 DEDC
device 0 offset 0x1000000, size 0xdedc
SF: 57052 bytes @ 0x1000000 Written: OK
Zynq> Program Operation successful.
INFO: [Xicom 50-44] Elapsed time = 72 sec.

Flash Operation Successful

D:\Xilinx\SDK\2018.3\bin>
```


# Update of the ultrasound imaging system based on Zynq 7020 (Update: 2026/08/22)

## B‑mode ultrasound images

**Convex array:**

<img src="https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/ultrasound_img/conv_img.jpg" alt="conv_img" width="400">

<img src="https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/ultrasound_img/conv_img2.jpg" alt="conv_img2" width="400">

**Linear array:**

<img src="https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/ultrasound_img/line_img.jpg" alt="line_img" width="400">

<img src="https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/ultrasound_img/line_img2.jpg" alt="line_img2" width="400">

---

## 1. Firmware files
- `BOOT.bin` – programming file for Zynq 7020

## 2. Hardware – hardware documentation
- `io.xdc` – the Zynq 7020 project I/O constraints file

## 3. Pic – picture data
*(Placeholder for additional picture data if any)*

## 4. Software
- `android-build-debugCon.apk` – convex‑array software version
- `android-build-debugLine.apk` – linear‑array software version

## 5. ultrasound_img – ultrasound images
(These are the image files displayed in the **B‑mode ultrasound images** section above.)

## 6. Firmware upgrade process
```
cmd
cmd /C program_flash -f ~\BOOT.bin -offset 0 -flash_type qspi-x4-single -fsbl ~\FSBL_DL_Ver.elf -cable type xilinx_tcf url TCP:127.0.0.1:3121
```

> 


# Ultrasound Imaging Platform Technical Solution Details – Full‑Chain Implementation from FPGA to WiFi Hotspot(Update : 2026/07/28)

> 

This article takes a Zynq SoC‑based portable ultrasound system as an example to thoroughly analyse the entire technical chain – from FPGA logic design, high‑voltage driving, ADC sampling, data transfer, embedded system porting, to WiFi hotspot setup.

![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/11.JPG)

## 1. FPGA Logic and High‑Voltage Driving

The quality of ultrasound imaging first depends on the performance of the analogue front‑end chain. This solution uses an FPGA as the central controller, responsible for transmit waveform generation, receive signal processing, and timing control. The high‑voltage driver section is especially critical – by optimising the high‑voltage circuit design, the system achieves multiple adjustable output levels from 20 V to 49 V. Measured data show good linearity and stability, providing flexible voltage support for ultrasound detection at different depths.
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap10.jpg) 

![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap11.jpg)
## 2. Transmit and Receive Chain

The transmit chain is built around the 5584 device; the drive current is precisely set via TRSW configuration to ensure controllable and consistent transmit energy. Frequency tests verified reliable response under complex operating conditions.

![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/5584.png)

> According to the TRSW configuration, set the drive current; the transmit frequency was tested at 7.5 MHz.
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/DS1Z_QuickPrint1.png)

## 3. ADC Sampling and Spectrum Analysis

ADC sampling is the bridge between the analogue front‑end and digital signal processing. This solution completed a full ADC debug workflow. After correctly receiving the serial data, CSV data were exported using Vivado ILA and analysed in MATLAB for spectrum analysis. The spectrum results directly reflect signal quality and provide a basis for optimising subsequent digital signal processing algorithms.

> **AD9278 Test Mode**: After correct serial reception, the data are as follows:
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/ILA.png)
> ```
> write_hw_ila_data -csv_file C:/Data/design1_ila_data[current_hw_ila_data]
> ```
> **MATLAB Spectrum**
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/matlabrf.png)
## 4. PL‑PS Co‑design and DMA Transfer

The system fully leverages the strengths of the Zynq platform – FPGA (PL) and ARM (PS) – by using the Xillybus DMA engine for efficient register configuration and bulk data transfer. The DMA mechanism effectively reduces CPU load, enabling seamless large‑data‑flow movement between PL and PS, which provides ample bandwidth for real‑time imaging.
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap12.jpg)

## 5. Deep Customisation of the Embedded System

Building the entire stack from U‑Boot to Rootfs directly determines the maintainability and scalability of the device. This solution completed the following key tasks:

### BIF File Configuration

The BOOT.bin structure was carefully arranged to integrate FSBL, FPGA bitstream, U‑Boot, Linux kernel image, device tree, and Ramdisk, enabling one‑click firmware packaging.

the_ROM_image: {
[bootloader]E:\UtrasoundProject\WiFi8_Hand\FPGA_Ver\URV2_WIFI8_7020_LCD_WIFI_Eth_Update7010\verilog\vivado\xillydemo.sdk\FSBL_APP\Debug\FSBL_APP.elf
E:\UtrasoundProject\WiFi8_Hand\FPGA_Ver\URV2_WIFI8_7020_LCD_WIFI_Eth_Update7010\verilog\vivado\xillydemo.sdk\RichyTek_Top_hw_platform_0\RichyTek_Top.bit
E:\UtrasoundProject\WiFi8_Hand\LinuxMass\u-boot20240505.elf[load = 0x3000000]
E:\UtrasoundProject\WiFi8_Hand\Linux\uImagebefore[load = 0x2a00000]
E:\UtrasoundProject\WiFi8_Hand\LinuxMass\devicetree20240507.dtb [load = 0x2000000]
E:\UtrasoundProject\WiFi8_Hand\Linux\updateall_uramdisk.image.gz
}


### U‑Boot and Device Tree Customisation

U‑Boot was deeply customised for the Zynq platform, and the DTS file was used to precisely describe the address mapping and interrupt configuration of PL peripherals (including AXI GPIO, Xillybus IP, etc.).

```
vi include/configs/zynq_zed.h
make clean
vi include/configs/zynq-common.h
make zynq_zed
mv u-boot u-boot202040505.elf
```
Device Tree – PL section listed as follows:
```
/ {
    amba_pl: amba_pl {
        #address-cells = <1>;
        #size-cells = <1>;
        compatible = "simple-bus";
        ranges;
        axi_gpio_0: gpio@41200000 {
            #gpio-cells = <2>;
            compatible = "generic-uio", "uio";
            gpio-controller;
            reg = <0x41200000 0x10000>;
            xlnx,all-inputs = <0x1>;
            xlnx,all-inputs-2 = <0x0>;
            xlnx,all-outputs = <0x0>;
            xlnx,all-outputs-2 = <0x0>;
            xlnx,dout-default = <0x00000000>;
            xlnx,dout-default-2 = <0x00000000>;
            xlnx,gpio-width = <0x3>;
            xlnx,gpio2-width = <0x20>;
            xlnx,interrupt-present = <0x0>;
            xlnx,is-dual = <0x0>;
            xlnx,tri-default = <0xFFFFFFFF>;
            xlnx,tri-default-2 = <0xFFFFFFFF>;
        };
        xillybus_ip_0: xillybus_ip@50000000 {
            compatible = "xillybus,xillybus-1.00.a";
            interrupt-parent = <&intc>;
            interrupts = <0x0 0x3b 0x1>;
            reg = <0x50000000 0x1000>;
            dma-coherent;
        };
        xillybus_lite_0: xillybus_lite@50002000 {
            compatible = "xillybus,xillybus_lite_of-1.00.a", "xillybus_lite_of-1.00.a";
            interrupt-parent = <&intc>;
            interrupts = <0x0 0x3a 0x1>;
            reg = <0x50002000 0x1000>;
        };
    };
};
```
Compile using the DTC tool:
```
./scripts/dtc/dtc -O dtb -I dts -o devicetree20240507.dtb ./device_tree_bsp_0507/system.dts
```
Linux Kernel and Rootfs Trimming

The kernel was configured and compiled from the Xilinx Linux kernel source tree to generate a uImage tailored for the ARM architecture. Meanwhile, a lightweight root file system was built via Ramdisk, allowing fine‑grained control over storage space.

Kernel Compilation
```
make ARCH=arm menuconfig
make ARCH=arm uImage LOADADDR=0x00100000
```

RAMDISK – file migration can be performed as follows:
```
rm -rf ramdisknew.image.gz
rm -rf uramdisk.image.gz
dd if=/dev/zero of=ramdisknew.image bs=1024 count=32768
mke2fs -F ramdisknew.image -L "ramdisk" -b 1024 -m 0
tune2fs ramdisknew.image -i 0
chmod a+rwx ramdisknew.image
sudo mount -o loop ramdisknew.image tmp_mnt_new/
sudo cp -R Ultrasound_RLS_FS/* tmp_mnt_new/
sudo umount tmp_mnt_new
gzip ramdisknew.image
mkimage -A arm -T ramdisk -C gzip -d ramdisknew.image.gz uramdisk.image.gz
```

RCS File
```
echo "Mount File System from Flash"
folder_name="/mount_flash"
file_wifi_name="/mount_flash/wifi_ap.conf"
file_app_name="/mount_flash/linux_wifi_app.elf"
mkdir "$folder_name"
mount -t jffs2 /dev/mtdblock5 /mount_flash/
if [ ! -f "$file_wifi_name" ]; then
    cp -rf /conf/wifi_ap.conf /mount_flash/wifi_ap.conf
fi
echo "=== == = Configure SoftAP == ==="
insmod /root/compat.ko
insmod /root/cfg80211.ko
insmod /root/wlan.ko
ifconfig -a
ifconfig wlan0 up
ifconfig wlan0 198.168.8.1 netmask 255.255.255.0
echo "Udhcpd configuration"
udhcpd /etc/udhcpd.conf
echo "Hostapd configuration"
hostapd /mount_flash/wifi_ap.conf &
echo "Linux Application"
/mount_flash/linux_wifi_app.elf &
```

WiFi Driver Porting and Hotspot Optimisation
The QCA9377 wireless driver was successfully ported, enabling the device to act as a SoftAP providing a WiFi hotspot. To address the issue where some clients required multiple password entries, the random number generation was improved by symlinking /dev/random to /dev/urandom, which effectively enhanced the connection experience.
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap12.jpg)
## 6. Firmware Flashing and Final Results
The system supports firmware flashing and updates via JTAG and other methods, providing a clear and efficient development workflow. The final running results validated the feasibility and stability of the entire chain solution.
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap14.jpg)

![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/Snap15.jpg)
## Supporting Materials
The above test and verification steps require the following key resources:

Type‑C charger

FT4232 programmer + adapter board

Zynq SoC main board

Main board support frame

Convex array probe / linear array probe / probe adapter SMA / probe adapter (supports CMUT)

Firmware image

Running software

## Conclusion
From FPGA logic to embedded Linux, from high‑voltage driving to a WiFi hotspot, this solution fully covers the core technology stack for portable ultrasound device development. For more technical details or to obtain a development kit, please feel free to contact us via the official public account.

Support: VisSonixAP@163.com
![11](https://github.com/VisSonixAP/Ultrasound-AFE-Dev-Kit/blob/main/Pic/20260726113755_667_57.jpg)
