# Ultrasound Imaging Platform Technical Solution Details – Full‑Chain Implementation from FPGA to WiFi Hotspot

> Author: VisSonixAP

In the field of portable ultrasound diagnostic device development, the ability to build a complete hardware‑to‑software ecosystem in‑house is key to product performance and reliability. This article takes a Zynq SoC‑based portable ultrasound system as an example to thoroughly analyse the entire technical chain – from FPGA logic design, high‑voltage driving, ADC sampling, data transfer, embedded system porting, to WiFi hotspot setup.

## 1. FPGA Logic and High‑Voltage Driving

The quality of ultrasound imaging first depends on the performance of the analogue front‑end chain. This solution uses an FPGA as the central controller, responsible for transmit waveform generation, receive signal processing, and timing control. The high‑voltage driver section is especially critical – by optimising the high‑voltage circuit design, the system achieves multiple adjustable output levels from 20 V to 49 V. Measured data show good linearity and stability, providing flexible voltage support for ultrasound detection at different depths.

## 2. Transmit and Receive Chain

The transmit chain is built around the 5584 device; the drive current is precisely set via TRSW configuration to ensure controllable and consistent transmit energy. Frequency tests verified reliable response under complex operating conditions.

> According to the TRSW configuration, set the drive current; the transmit frequency was tested at 7.5 MHz.

## 3. ADC Sampling and Spectrum Analysis

ADC sampling is the bridge between the analogue front‑end and digital signal processing. This solution completed a full ADC debug workflow. After correctly receiving the serial data, CSV data were exported using Vivado ILA and analysed in MATLAB for spectrum analysis. The spectrum results directly reflect signal quality and provide a basis for optimising subsequent digital signal processing algorithms.

> **AD9278 Test Mode**: After correct serial reception, the data are as follows:
> ```
> write_hw_ila_data -csv_file C:/Data/design1_ila_data[current_hw_ila_data]
> ```
> **MATLAB Spectrum**

## 4. PL‑PS Co‑design and DMA Transfer

The system fully leverages the strengths of the Zynq platform – FPGA (PL) and ARM (PS) – by using the Xillybus DMA engine for efficient register configuration and bulk data transfer. The DMA mechanism effectively reduces CPU load, enabling seamless large‑data‑flow movement between PL and PS, which provides ample bandwidth for real‑time imaging.

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

## 6. Firmware Flashing and Final Results
The system supports firmware flashing and updates via JTAG and other methods, providing a clear and efficient development workflow. The final running results validated the feasibility and stability of the entire chain solution.

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
