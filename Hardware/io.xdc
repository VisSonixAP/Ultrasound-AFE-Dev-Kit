##################################################################################################
## FPGA_CLOCK
## Checked  2023/08/24
##################################################################################################
#NET "FPGA_GCLK_IN+" LOC = "H16";
#NET "FPGA_GCLK_IN-" LOC = "H17";

set_property IOSTANDARD LVDS_25 [get_ports fpga_clk_*]
set_property PACKAGE_PIN H16 [get_ports fpga_clk_p]
set_property PACKAGE_PIN H17 [get_ports fpga_clk_n]
 
##################################################################################################
## PS UART 
## Checked  2023/08/24
##################################################################################################
#NET "PL_UART_TX" LOC = "P18";
#NET "PL_UART_RX" LOC = "P15";
set_property IOSTANDARD LVCMOS33 [get_ports ps_rxd] 
set_property IOSTANDARD LVCMOS33 [get_ports ps_txd]
set_property PACKAGE_PIN P18  [get_ports ps_txd]
set_property PACKAGE_PIN P15  [get_ports ps_rxd]


##################################################################################################
## Power Controller  
## Checked  2023/08/24
##################################################################################################
#NET "PW_INT" LOC = "V17"; 
#NET "PW_KILL" LOC = "V18";
set_property IOSTANDARD LVCMOS33 [get_ports power_int] 
set_property IOSTANDARD LVCMOS33 [get_ports power_kill]
set_property PACKAGE_PIN V17  [get_ports power_int]
set_property PACKAGE_PIN V18  [get_ports power_kill]

##################################################################################################
## System Led 
## Checked  2023/08/24
##################################################################################################
set_property IOSTANDARD LVCMOS25 [get_ports sys_led]
set_property PACKAGE_PIN J15  [get_ports sys_led]


##################################################################################################
## ADC Device: AD9278
## Checked  2023/08/24
##################################################################################################
set_property IOSTANDARD LVDS_25 [get_ports {adc_din_p[*]}]
set_property IOSTANDARD LVDS_25 [get_ports {adc_din_n[*]}]
set_property IOSTANDARD LVDS_25 [get_ports adc_dclk_p]
set_property IOSTANDARD LVDS_25 [get_ports adc_dclk_n]
set_property IOSTANDARD LVDS_25 [get_ports adc_fclk_p]
set_property IOSTANDARD LVDS_25 [get_ports adc_fclk_n]

#NET "AD9278_DCO+" LOC = "L16";
#NET "AD9278_DCO-" LOC = "L17"; 
set_property PACKAGE_PIN L17  [get_ports adc_dclk_n]
set_property PACKAGE_PIN L16  [get_ports adc_dclk_p]


#NET "AD9278_FCO+" LOC = "K17";
#NET "AD9278_FCO-" LOC = "K18";
set_property PACKAGE_PIN K17  [get_ports adc_fclk_p]
set_property PACKAGE_PIN K18  [get_ports adc_fclk_n]

set_property PACKAGE_PIN C20 [get_ports {adc_din_p[7]}]
set_property PACKAGE_PIN B20 [get_ports {adc_din_n[7]}]
set_property PACKAGE_PIN B19 [get_ports {adc_din_p[6]}]
set_property PACKAGE_PIN A20 [get_ports {adc_din_n[6]}]
set_property PACKAGE_PIN E17 [get_ports {adc_din_p[5]}]
set_property PACKAGE_PIN D18 [get_ports {adc_din_n[5]}]
set_property PACKAGE_PIN D19 [get_ports {adc_din_p[4]}]
set_property PACKAGE_PIN D20 [get_ports {adc_din_n[4]}]
set_property PACKAGE_PIN E18 [get_ports {adc_din_p[2]}]
set_property PACKAGE_PIN E19 [get_ports {adc_din_n[2]}]
set_property PACKAGE_PIN F16 [get_ports {adc_din_p[3]}]
set_property PACKAGE_PIN F17 [get_ports {adc_din_n[3]}]
set_property PACKAGE_PIN M19 [get_ports {adc_din_p[0]}]
set_property PACKAGE_PIN M20 [get_ports {adc_din_n[0]}]
set_property PACKAGE_PIN M17 [get_ports {adc_din_p[1]}]
set_property PACKAGE_PIN M18 [get_ports {adc_din_n[1]}]
 
##adc configure IO     
#NET "AD9278_SCLK" LOC = "L19";
#NET "AD9278_SDIO" LOC = "L20";
#NET "AD9278_CSB"  LOC = "K19"; 
#NET "AD9278_STBY" LOC = "J19";
#NET "AD9278_PDWN" LOC = "F19";

set_property PACKAGE_PIN L19 [get_ports adc_sclk]
set_property PACKAGE_PIN L20 [get_ports adc_sdio]
set_property PACKAGE_PIN K19 [get_ports adc_csb]
set_property PACKAGE_PIN J19 [get_ports adc_stby]
set_property PACKAGE_PIN F19 [get_ports adc_pdwn]

set_property IOSTANDARD LVCMOS25 [get_ports adc_csb]
set_property IOSTANDARD LVCMOS25 [get_ports adc_pdwn]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sclk]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sdio]
set_property IOSTANDARD LVCMOS25 [get_ports adc_stby]
 
##################################################################################################
## WIFI WLAN ENABLE PIN
## Checked  2023/08/24
##################################################################################################
##NET "WL_HOST_WAKE" LOC = "R16";
##NET "WL_REG_ON" LOC = "R17"; 
 
set_property IOSTANDARD LVCMOS33 [get_ports wlan_*]
set_property PACKAGE_PIN R17 [get_ports wlan_regon]
set_property PACKAGE_PIN R16 [get_ports wlan_hostwake]

##################################################################################################
## ATCG(DAC) *
## Checked  2023/08/24 
##################################################################################################
set_property IOSTANDARD LVCMOS33 [get_ports tgc_dac_s*]

set_property PACKAGE_PIN V20 [get_ports tgc_dac_sclk]
set_property PACKAGE_PIN W20 [get_ports tgc_dac_sync]
set_property PACKAGE_PIN U20 [get_ports tgc_dac_sdin]
#NET "TGC_DIN" LOC = "U20";
#NET "TGC_SCLK" LOC = "V20";
#NET "TGC_SYNC" LOC = "W20";


##################################################################################################
## TX HDL5584 *
## Update  2023/08/24   N-HIGH,P-LOW
##################################################################################################
set_property IOSTANDARD LVCMOS33 [get_ports hdl5584_tcen]
set_property IOSTANDARD LVCMOS33 [get_ports {hdl5584_pulse[*]}]
#P/N0
set_property PACKAGE_PIN T16  [get_ports {hdl5584_pulse[1]}]   
set_property PACKAGE_PIN R19  [get_ports {hdl5584_pulse[0]}]
#P/N1                       
set_property PACKAGE_PIN W13  [get_ports {hdl5584_pulse[3]}]   
set_property PACKAGE_PIN Y16  [get_ports {hdl5584_pulse[2]}]
#P/N2                       
set_property PACKAGE_PIN T14  [get_ports {hdl5584_pulse[5]}]   
set_property PACKAGE_PIN W14  [get_ports {hdl5584_pulse[4]}]
#P/N3                       
set_property PACKAGE_PIN V12  [get_ports {hdl5584_pulse[7]}]
set_property PACKAGE_PIN Y14  [get_ports {hdl5584_pulse[6]}]
#P/N4                       
set_property PACKAGE_PIN T12  [get_ports {hdl5584_pulse[9]}]
set_property PACKAGE_PIN U12  [get_ports {hdl5584_pulse[8]}]
#P/N5                       
set_property PACKAGE_PIN R14  [get_ports {hdl5584_pulse[11]}]
set_property PACKAGE_PIN T11  [get_ports {hdl5584_pulse[10]}]
#P/N6                       
set_property PACKAGE_PIN T10  [get_ports {hdl5584_pulse[13]}]
set_property PACKAGE_PIN P14  [get_ports {hdl5584_pulse[12]}]
#P/N7                       
set_property PACKAGE_PIN T15  [get_ports {hdl5584_pulse[15]}]
set_property PACKAGE_PIN Y17  [get_ports {hdl5584_pulse[14]}]
 
set_property PACKAGE_PIN U17  [get_ports hdl5584_tcen]
 

##################################################################################################
## HV-SW  *
## Checked  2023/08/24 
##################################################################################################

#NET "SW_NLE" LOC = "U15"; 
#NET "SW_CLK" LOC = "U14";
#NET "SW_CLR" LOC = "U18";
#NET "SW_DIN<0>" LOC = "U19";
#NET "SW_DIN<1>" LOC = "N18";
#NET "SW_DIN<2>" LOC = "P19";
#NET "SW_DIN<3>" LOC = "N20";
#NET "SW_DIN<4>" LOC = "P20";
 
set_property IOSTANDARD LVCMOS33 [get_ports {hvmux_data[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports hvmux_le]
set_property IOSTANDARD LVCMOS33 [get_ports hvmux_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports hvmux_clr]

set_property PACKAGE_PIN U15  [get_ports hvmux_le]
set_property PACKAGE_PIN U14  [get_ports hvmux_sclk]
set_property PACKAGE_PIN U18  [get_ports hvmux_clr]
  
set_property PACKAGE_PIN U19  [get_ports {hvmux_data[0]}] 
set_property PACKAGE_PIN N18  [get_ports {hvmux_data[1]}]
set_property PACKAGE_PIN P19  [get_ports {hvmux_data[2]}]
set_property PACKAGE_PIN N20  [get_ports {hvmux_data[3]}]
set_property PACKAGE_PIN P20  [get_ports {hvmux_data[4]}]
 
##################################################################################################
## ADS7887
## Update  2023/08/24 
##################################################################################################
##NET "ADC_CS" LOC = "Y18";  
##NET "ADC_SCLK" LOC = "Y19";
##NET "ADC_SDO" LOC = "V16"; 

set_property IOSTANDARD LVCMOS33 [get_ports ads7887_*]
set_property PACKAGE_PIN Y18  [get_ports ads7887_csn]
set_property PACKAGE_PIN Y19  [get_ports ads7887_clk]
set_property PACKAGE_PIN V16  [get_ports ads7887_sdi]


##################################################################################################
## Bitstream Format - Compress
##################################################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]

