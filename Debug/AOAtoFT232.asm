.FILE "Debug\AOAtoFT232.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
hANDROID_ACCESSORY	.DW	1	0
.GLOBAL	  DO_NOT_EXPORT "hANDROID_ACCESSORY"
hUSBHOST_FT232	.DW	1	0
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_FT232"
ft232Baud	.DD	1	38400
.GLOBAL	  DO_NOT_EXPORT "ft232Baud"
ft232Data	.DB	1	1
.GLOBAL	  DO_NOT_EXPORT "ft232Data"
ft232Stop	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Stop"
ft232Parity	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Parity"
ft232Flow	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Flow"
device_connect_status	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "device_connect_status"
tcbUART_SENSOR	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbUART_SENSOR"
mInitAndroid	.DB	6	?
.GLOBAL	  DO_NOT_EXPORT "mInitAndroid"
hFAT_FILE_SYSTEM	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hFAT_FILE_SYSTEM"
gstAccPacketWriteSensor	.DB	133	?
.GLOBAL	  DO_NOT_EXPORT "gstAccPacketWriteSensor"
hBOMS	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hBOMS"
hUART	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUART"
hUSBHOST1_Android	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST1_Android"
gstAccPacketRead	.DB	133	?
.GLOBAL	  DO_NOT_EXPORT "gstAccPacketRead"
mInitF	.DB	6	?
.GLOBAL	  DO_NOT_EXPORT "mInitF"
tcbATOF	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbATOF"
gstAccPacketWrite	.DB	133	?
.GLOBAL	  DO_NOT_EXPORT "gstAccPacketWrite"
hUSBHOST2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST2"
tcbCONNECT	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbCONNECT"
hGPIO_PORT_A	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_A"
hGPIO_PORT_B	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_B"
Str@0	.ASCIIZ	"atof"
Str@1	.ASCIIZ	"connect"
Str@2	.ASCIIZ	"uart_sensor"
Str@3	.ASCIIZ	"FTDI\0"
Str@4	.ASCIIZ	"FTDIDemoKit\0"
Str@5	.ASCIIZ	"Vinculum Accessory Test\0"
Str@6	.ASCIIZ	"1.0\0"
Str@7	.ASCIIZ	"http://www.ftdichip.com\0"
Str@8	.ASCIIZ	"VinculumAccessory1\0"
Str@9	.ASCIIZ	"SensorData.TXT"
Str@10	.ASCIIZ	"a+"
Str@11	.ASCIIZ	"Request OD data\r"


.ENUM	"IOMUX_SIGNALS"
.ENUMERATOR	"IOMUX_IN_DEBUGGER"	0
.ENUMERATOR	"IOMUX_IN_UART_RXD"	1
.ENUMERATOR	"IOMUX_IN_UART_CTS_N"	2
.ENUMERATOR	"IOMUX_IN_UART_DSR_N"	3
.ENUMERATOR	"IOMUX_IN_UART_DCD"	4
.ENUMERATOR	"IOMUX_IN_UART_RI"	5
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_0"	6
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_1"	7
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_2"	8
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_3"	9
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_4"	10
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_5"	11
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_6"	12
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_7"	13
.ENUMERATOR	"IOMUX_IN_FIFO_OE_N"	14
.ENUMERATOR	"IOMUX_IN_FIFO_RD_N"	15
.ENUMERATOR	"IOMUX_IN_FIFO_WR_N"	16
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CLK"	17
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_MOSI"	18
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CS"	19
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CLK"	20
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_MOSI"	21
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CS"	22
.ENUMERATOR	"IOMUX_IN_SPI_MASTER_MISO"	23
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_0"	24
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_1"	25
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_2"	26
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_3"	27
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_4"	28
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_5"	29
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_6"	30
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_7"	31
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_0"	32
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_1"	33
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_2"	34
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_3"	35
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_4"	36
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_5"	37
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_6"	38
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_7"	39
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_0"	40
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_1"	41
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_2"	42
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_3"	43
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_4"	44
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_5"	45
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_6"	46
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_7"	47
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_0"	48
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_1"	49
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_2"	50
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_3"	51
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_4"	52
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_5"	53
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_6"	54
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_7"	55
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_0"	56
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_1"	57
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_2"	58
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_3"	59
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_4"	60
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_5"	61
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_6"	62
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_7"	63
.ENUMERATOR	"IOMUX_OUT_DEBUGGER"	64
.ENUMERATOR	"IOMUX_OUT_UART_TXD"	65
.ENUMERATOR	"IOMUX_OUT_UART_RTS_N"	66
.ENUMERATOR	"IOMUX_OUT_UART_DTR_N"	67
.ENUMERATOR	"IOMUX_OUT_UART_TX_ACTIVE"	68
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_0"	69
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_1"	70
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_2"	71
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_3"	72
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_4"	73
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_5"	74
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_6"	75
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_7"	76
.ENUMERATOR	"IOMUX_OUT_FIFO_RXF_N"	77
.ENUMERATOR	"IOMUX_OUT_FIFO_TXE_N"	78
.ENUMERATOR	"IOMUX_OUT_PWM_0"	79
.ENUMERATOR	"IOMUX_OUT_PWM_1"	80
.ENUMERATOR	"IOMUX_OUT_PWM_2"	81
.ENUMERATOR	"IOMUX_OUT_PWM_3"	82
.ENUMERATOR	"IOMUX_OUT_PWM_4"	83
.ENUMERATOR	"IOMUX_OUT_PWM_5"	84
.ENUMERATOR	"IOMUX_OUT_PWM_6"	85
.ENUMERATOR	"IOMUX_OUT_PWM_7"	86
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MOSI"	87
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MISO"	88
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MOSI"	89
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MISO"	90
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CLK"	91
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_MOSI"	92
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_0"	93
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_1"	94
.ENUMERATOR	"IOMUX_OUT_FIFO_CLKOUT_245"	95
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_0"	96
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_1"	97
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_2"	98
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_3"	99
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_4"	100
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_5"	101
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_6"	102
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_7"	103
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_0"	104
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_1"	105
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_2"	106
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_3"	107
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_4"	108
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_5"	109
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_6"	110
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_7"	111
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_0"	112
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_1"	113
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_2"	114
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_3"	115
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_4"	116
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_5"	117
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_6"	118
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_7"	119
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_0"	120
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_1"	121
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_2"	122
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_3"	123
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_4"	124
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_5"	125
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_6"	126
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_7"	127
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_0"	128
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_1"	129
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_2"	130
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_3"	131
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_4"	132
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_5"	133
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_6"	134
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_7"	135
.ENUM_END	"IOMUX_SIGNALS"

.STRUCT	"_usbhostft232_ioctl_cb_attach_t"	56
.STRUCTMEM	"hc_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ifDev"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"ftPort"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhostft232_ioctl_cb_attach_t"

.STRUCT	"_vos_tcb_t"	368
.STRUCTMEM	"next"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"orig_priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"quantum"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"delay"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"sp"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"eax"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ebx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ecx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r0"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r1"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r2"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r3"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"system_data"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"system_profiler"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"semaphore_list"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_tcb_t"

.STRUCT	"_msi_ioctl_cb_info_t"	256
.STRUCTMEM	"vendorId"	"char"	64	0	0	0	1	1	0	
.STRUCTMEM	"productId"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"rev"	"char"	32	0	0	0	1	1	0	
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_msi_ioctl_cb_info_t"

.STRUCT	"_usb_deviceRequest_t"	64
.STRUCTMEM	"bmRequestType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bRequest"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wValue"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wIndex"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wLength"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceRequest_t"

.ENUM	"dma_status"
.ENUMERATOR	"DMA_OK"	0
.ENUMERATOR	"DMA_INVALID_PARAMETER"	1
.ENUMERATOR	"DMA_ACQUIRE_ERROR"	2
.ENUMERATOR	"DMA_ENABLE_ERROR"	3
.ENUMERATOR	"DMA_DISABLE_ERROR"	4
.ENUMERATOR	"DMA_CONFIGURE_ERROR"	5
.ENUMERATOR	"DMA_ERROR"	6
.ENUMERATOR	"DMA_FIFO_ERROR"	7
.ENUM_END	"dma_status"

.STRUCT	"_usb_hubDescriptor_t"	312
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNbrPorts"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wHubCharacteristics"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bPwrOn2PwrGood"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bHubContrCurrent"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"DeviceRemovable"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"PortPwrCtrlMask"	"char"	128	0	0	0	1	1	0	
.STRUCT_END	"_usb_hubDescriptor_t"

.STRUCT	"_usb_hubPortStatus_t"	32
.STRUCTMEM	"currentConnectStatus"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabled"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspend"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portReset"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPower"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTest"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicator"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"currentConnectStatusChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabledChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspendChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portResetChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv3"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPowerChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTestChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicatorChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv4"	"short"	3	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubPortStatus_t"

.ENUM	"USBHOST_STATUS"
.ENUMERATOR	"USBHOST_OK"	0
.ENUMERATOR	"USBHOST_NOT_FOUND"	1
.ENUMERATOR	"USBHOST_PENDING"	2
.ENUMERATOR	"USBHOST_INVALID_PARAMETER"	3
.ENUMERATOR	"USBHOST_INVALID_BUFFER"	4
.ENUMERATOR	"USBHOST_INCOMPLETE_ENUM"	5
.ENUMERATOR	"USBHOST_INVALID_CONFIGURATION"	6
.ENUMERATOR	"USBHOST_TD_FULL"	7
.ENUMERATOR	"USBHOST_EP_FULL"	8
.ENUMERATOR	"USBHOST_IF_FULL"	9
.ENUMERATOR	"USBHOST_EP_HALTED"	10
.ENUMERATOR	"USBHOST_EP_INVALID"	11
.ENUMERATOR	"USBHOST_INVALID_STATE"	12
.ENUMERATOR	"USBHOST_ERROR"	13
.ENUMERATOR	"USBHOST_CC_ERROR"	16
.ENUMERATOR	"USBHOST_FATAL_ERROR"	255
.ENUM_END	"USBHOST_STATUS"

.STRUCT	"_fatdrv_ioctl_cb_fs_t"	216
.STRUCTMEM	"fsType"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"freeSpaceH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"freeSpaceL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerCluster"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerSector"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"volID"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_fs_t"

.STRUCT	"_usbhostft232_eeprom_t"	32
.STRUCTMEM	"ee_address"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ee_data"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhostft232_eeprom_t"

.STRUCT	"_vos_gpio_t"	40
.STRUCTMEM	"gpio_port_a"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_b"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_c"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_d"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_e"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_gpio_t"

.STRUCT	"_usb_deviceEndpointDescriptor_t"	56
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bEndpointAddress"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wMaxPacketSize"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bInterval"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceEndpointDescriptor_t"

.STRUCT	"_vos_semaphore_list_t"	56
.STRUCTMEM	"next"	"_vos_semaphore_list_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"siz"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"result"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"list"	"_vos_semaphore_t"	16	0	1	0	1	1	1	
.STRUCT_END	"_vos_semaphore_list_t"

.STRUCT	"_usbhostft232_bitmode_t"	16
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"mask"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhostft232_bitmode_t"

.STRUCT	"_fatdrv_ioctl_cb_dir_t"	16
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_fatdrv_ioctl_cb_dir_t"

.STRUCT	"_usbHostAndroidAccessory_ioctl_cb_attach_t"	120
.STRUCTMEM	"hc_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"manufacturer"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"model"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"description"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"version"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"uri"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"serial"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbHostAndroidAccessory_ioctl_cb_attach_t"

.STRUCT	"_usb_deviceInterfaceDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bAlternateSetting"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumEndpoints"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iInterface"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceInterfaceDescriptor_t"

.STRUCT	"_usb_deviceQualifierDescriptor_t"	80
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bReserved"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceQualifierDescriptor_t"

.ENUM	"USBHOSTANDROIDACCESSORY_STATUS"
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_OK"	0
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_INVALID_PARAMETER"	1
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_NOT_FOUND"	2
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_NOT_SUPPORTED"	3
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_USBHOST_ERROR"	128
.ENUMERATOR	"USBHOSTANDROIDACCESSORY_FATAL_ERROR"	255
.ENUM_END	"USBHOSTANDROIDACCESSORY_STATUS"

.STRUCT	"_vos_mutex_t"	48
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"owner"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"attr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ceiling"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_mutex_t"

.STRUCT	"_boms_ioctl_cb_attach_t"	48
.STRUCTMEM	"hc_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ifDev"	"int"	32	1	0	0	0	0	0	
.STRUCT_END	"_boms_ioctl_cb_attach_t"

.STRUCT	"_fatdrv_ioctl_cb_file_t"	56
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"offset"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_file_t"

.STRUCT	"_fat_stream_t"	96
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"actual"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fat_stream_t"

.STRUCT	"_vos_device_t"	80
.STRUCTMEM	"mutex"	"_vos_mutex_t"	48	0	0	0	0	0	0	
.STRUCTMEM	"driver"	"_vos_driver_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"context"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_device_t"

.STRUCT	"_fatdrv_ioctl_cb_time_t"	80
.STRUCTMEM	"crtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"crtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"accDate"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_time_t"

.STRUCT	"_usb_deviceDescriptor_t"	144
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"idVendor"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"idProduct"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bcdDevice"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"iManufacturer"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iProduct"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iSerialNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceDescriptor_t"

.STRUCT	"_vos_driver_t"	200
.STRUCTMEM	"open"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"close"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"read"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"write"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"ioctl"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"interrupt"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_driver_t"

.STRUCT	"_vos_system_data_area_t"	80
.STRUCTMEM	"next"	"_vos_system_data_area_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"tcb"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"count"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"name"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_vos_system_data_area_t"

.STRUCT	"_usb_deviceStringDescriptorZero_t"	32
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wLANGID0"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptorZero_t"

.ENUM	"USBHOSTFT232_STATUS"
.ENUMERATOR	"USBHOSTFT232_OK"	0
.ENUMERATOR	"USBHOSTFT232_INVALID_PARAMETER"	1
.ENUMERATOR	"USBHOSTFT232_DMA_NOT_ENABLED"	2
.ENUMERATOR	"USBHOSTFT232_ERROR"	3
.ENUMERATOR	"USBHOSTFT232_NOT_FOUND"	4
.ENUMERATOR	"USBHOSTFT232_USBHOST_ERROR"	128
.ENUMERATOR	"USBHOSTFT232_FATAL_ERROR"	255
.ENUM_END	"USBHOSTFT232_STATUS"

.STRUCT	"_msi_xfer_cb_t"	224
.STRUCTMEM	"sector"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf_len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"total_len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"do_phases"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"status"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"transport"	"__unnamed_struct_7"	112	0	0	0	0	0	0	
.STRUCT_END	"_msi_xfer_cb_t"

.STRUCT	"android_accessory_packet"	1064
.STRUCTMEM	"u8Prefix"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"u8Type"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"u8Status"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"u8Reserved"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"u8len"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"u8Data"	"char"	1024	0	0	0	1	1	0	
.STRUCT_END	"android_accessory_packet"

.STRUCT	"_fat_ioctl_cb_t"	56
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"get"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"char"	16	0	1	0	0	0	1	
.STRUCT_END	"_fat_ioctl_cb_t"

.STRUCT	"_msi_ioctl_cb_t"	40
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"get"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"char"	16	0	1	0	0	0	1	
.STRUCT_END	"_msi_ioctl_cb_t"

.STRUCT	"_usbHostAndroidAccessory_ioctl_cb_t"	56
.STRUCTMEM	"num_to_write"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"num_written"	"short"	16	0	1	0	0	0	1	
.STRUCTMEM	"deviceID"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buffer"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_usbHostAndroidAccessory_ioctl_cb_t"

.STRUCT	"_fatdrv_ioctl_cb_attach_t"	24
.STRUCTMEM	"msi_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"partition"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_attach_t"

.STRUCT	"_vos_cond_var_t"	40
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"lock"	"_vos_mutex_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_cond_var_t"

.STRUCT	"_file_context_t"	536
.STRUCTMEM	"dirEntry"	"char"	256	0	0	0	1	1	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"context"	"char"	272	0	0	0	1	1	0	
.STRUCT_END	"_file_context_t"

.STRUCT	"_gpio_context_t"	8
.STRUCTMEM	"port_identifier"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_context_t"

.STRUCT	"_usbhost_ioctl_cb_class_t"	24
.STRUCTMEM	"dev_class"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_subclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_protocol"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_class_t"

.STRUCT	"_usbhost_xfer_t"	112
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"zero"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_t"

.STRUCT	"_uart_context_t"	8
.STRUCTMEM	"buffer_size"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_uart_context_t"

.ENUM	"gpioctrl_status"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PIN"	1
.ENUMERATOR	"GPIO_INVALID_PORT"	2
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	3
.ENUMERATOR	"GPIO_INVALID_INTERRUPT"	4
.ENUMERATOR	"GPIO_INVALID_INTERRUPT_TYPE"	5
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	6
.ENUMERATOR	"GPIO_ERROR"	7
.ENUM_END	"gpioctrl_status"

.STRUCT	"_gpio_ioctl_cb_t"	16
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"value"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_ioctl_cb_t"

.STRUCT	"_usb_hubStatus_t"	32
.STRUCTMEM	"localPowerSource"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	14	0	0	0	0	0	0	
.STRUCTMEM	"localPowerSourceChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	14	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubStatus_t"

.STRUCT	"_vos_semaphore_t"	40
.STRUCTMEM	"val"	"short"	16	1	0	0	0	0	0	
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"usage_count"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_vos_semaphore_t"

.STRUCT	"_usb_deviceConfigurationDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wTotalLength"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bNumInterfaces"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bConfigurationValue"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iConfiguration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPower"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceConfigurationDescriptor_t"

.STRUCT	"_vos_dma_config_t"	80
.STRUCTMEM	"src"	"__unnamed_struct_1"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
.STRUCTMEM	"bufsiz"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"fifosize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"flow_control"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"afull_trigger"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_dma_config_t"

.STRUCT	"_usbhost_ioctl_cb_vid_pid_t"	32
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_vid_pid_t"

.STRUCT	"_usbhost_ioctl_cb_ep_info_t"	32
.STRUCTMEM	"number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"max_size"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_ep_info_t"

.ENUM	"FAT_STATUS"
.ENUMERATOR	"FAT_OK"	0
.ENUMERATOR	"FAT_NOT_FOUND"	1
.ENUMERATOR	"FAT_READ_ONLY"	2
.ENUMERATOR	"FAT_PENDING"	3
.ENUMERATOR	"FAT_INVALID_PARAMETER"	4
.ENUMERATOR	"FAT_INVALID_BUFFER"	5
.ENUMERATOR	"FAT_INVALID_FILE_TYPE"	6
.ENUMERATOR	"FAT_EXISTS"	7
.ENUMERATOR	"FAT_BPB_INVALID"	8
.ENUMERATOR	"FAT_NOT_OPEN"	9
.ENUMERATOR	"FAT_EOF"	10
.ENUMERATOR	"FAT_DIRECTORY_TABLE_FULL"	11
.ENUMERATOR	"FAT_DISK_FULL"	12
.ENUMERATOR	"FAT_ERROR"	13
.ENUMERATOR	"FAT_MSI_ERROR"	128
.ENUMERATOR	"FAT_FATAL_ERROR"	255
.ENUM_END	"FAT_STATUS"

.STRUCT	"_usb_interfaceAssociationDescriptor_t"	64
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFirstInterface"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceCount"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionSubClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iFunction"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_interfaceAssociationDescriptor_t"

.ENUM	"MSI_STATUS"
.ENUMERATOR	"MSI_OK"	0
.ENUMERATOR	"MSI_COMMAND_FAILED"	1
.ENUMERATOR	"MSI_NOT_FOUND"	2
.ENUMERATOR	"MSI_INVALID_PARAMETER"	3
.ENUMERATOR	"MSI_INVALID_BUFFER"	4
.ENUMERATOR	"MSI_NOT_ACCESSED"	5
.ENUMERATOR	"MSI_ERROR"	6
.ENUMERATOR	"MSI_RESERVED"	64
.ENUMERATOR	"MSI_TRANSPORT_ERROR"	128
.ENUM_END	"MSI_STATUS"

.ENUM	"__anon_enum_type_1"
.ENUMERATOR	"IDLE"	0
.ENUMERATOR	"BLOCKED"	1
.ENUMERATOR	"READY"	2
.ENUMERATOR	"RUNNING"	3
.ENUMERATOR	"DELAYED"	4
.ENUMERATOR	"GONE"	5
.ENUM_END	"__anon_enum_type_1"

.UNION	"__unnamed_struct_1"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_1"

.UNION	"__unnamed_struct_2"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_2"

.STRUCT	"__unnamed_struct_3"	16
.STRUCTMEM	"size"	"short"	11	0	0	0	0	0	0	
.STRUCTMEM	"pad"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"cond_code"	"short"	4	0	0	0	0	0	0	
.STRUCT_END	"__unnamed_struct_3"

.UNION	"__unnamed_struct_4"	32
.UNIONMEM	"ep"	"int"	32	1	0	0	0	0	0	
.UNIONMEM	"dif"	"int"	32	1	0	0	0	0	0	
.UNION_END	"__unnamed_struct_4"

.UNION	"__unnamed_struct_5"	32
.UNIONMEM	"uart_baud_rate"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_5"

.UNION	"__unnamed_struct_6"	32
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"queue_stat"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_6"

.UNION	"__unnamed_struct_7"	112
.UNIONMEM	"usb"	"_usbhost_xfer_t"	112	0	0	0	0	0	0	
.UNION_END	"__unnamed_struct_7"

.STRUCT	"_common_ioctl_cb_t"	72
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"set"	"__unnamed_struct_5"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"__unnamed_struct_6"	32	0	0	0	0	0	0	
.STRUCT_END	"_common_ioctl_cb_t"

.ENUM	"GPIO_STATUS"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PORT_IDENTIFIER"	1
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	2
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	3
.ENUMERATOR	"GPIO_ERROR"	4
.ENUMERATOR	"GPIO_FATAL_ERROR"	255
.ENUM_END	"GPIO_STATUS"

.ENUM	"BOMS_STATUS"
.ENUMERATOR	"BOMS_HC_CC_ERROR"	64
.ENUMERATOR	"BOMS_CLEAR_HALT"	65
.ENUMERATOR	"BOMS_FATAL_ERROR"	255
.ENUM_END	"BOMS_STATUS"

.ENUM	"UART_STATUS"
.ENUMERATOR	"UART_OK"	0
.ENUMERATOR	"UART_INVALID_PARAMETER"	1
.ENUMERATOR	"UART_DMA_NOT_ENABLED"	2
.ENUMERATOR	"UART_ERROR"	3
.ENUMERATOR	"UART_FATAL_ERROR"	255
.ENUM_END	"UART_STATUS"

.STRUCT	"_usbhost_ioctl_cb_dev_info_t"	56
.STRUCTMEM	"port_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"addr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"interface_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"alt"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"configuration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"num_configurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_dev_info_t"

.STRUCT	"_usbhost_context_t"	32
.STRUCTMEM	"if_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ep_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iso_xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_context_t"

.ENUM	"IOMUX_STATUS"
.ENUMERATOR	"IOMUX_OK"	0
.ENUMERATOR	"IOMUX_INVALID_SIGNAL"	1
.ENUMERATOR	"IOMUX_INVALID_PIN_SELECTION"	2
.ENUMERATOR	"IOMUX_UNABLE_TO_ROUTE_SIGNAL"	3
.ENUMERATOR	"IOMUX_INVALID_IOCELL_DRIVE_CURRENT"	4
.ENUMERATOR	"IOMUX_INVALID_IOCELL_TRIGGER"	5
.ENUMERATOR	"IOMUX_INVALID_IOCELL_SLEW_RATE"	6
.ENUMERATOR	"IOMUX_INVALID_IOCELL_PULL"	7
.ENUMERATOR	"IOMUX_ERROR"	8
.ENUM_END	"IOMUX_STATUS"

.STRUCT	"_usbhost_ioctl_cb_t"	80
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"handle"	"__unnamed_struct_4"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_usbhost_ioctl_cb_t"

.STRUCT	"_usb_hub_selector_t"	16
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"selector"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_hub_selector_t"

.STRUCT	"_usb_deviceStringDescriptor_t"	24
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bString"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptor_t"

.STRUCT	"_usbhost_xfer_iso_t"	256
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"len_psw"	"__unnamed_struct_3"	128	0	0	0	1	1	0	
.STRUCTMEM	"frame"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_iso_t"

.VARIABLE	"hUSBHOST_FT232"	16	"short"	0	0	-1	0	0	0	43	
.VARIABLE	"tcbUART_SENSOR"	16	"_vos_tcb_t"	0	1	-1	0	0	1	33	
.VARIABLE	"device_connect_status"	8	"char"	0	0	-1	0	0	0	72	
.VARIABLE	"mInitAndroid"	48	"_vos_mutex_t"	0	0	-1	0	0	0	50	
.VARIABLE	"hFAT_FILE_SYSTEM"	16	"short"	0	0	-1	0	0	0	46	
.VARIABLE	"gstAccPacketWriteSensor"	1064	"android_accessory_packet"	0	0	-1	0	0	0	75	
.VARIABLE	"hANDROID_ACCESSORY"	16	"short"	0	0	-1	0	0	0	42	
.VARIABLE	"hBOMS"	16	"short"	0	0	-1	0	0	0	47	
.VARIABLE	"hUART"	16	"short"	0	0	-1	0	0	0	48	
.VARIABLE	"hUSBHOST1_Android"	16	"short"	0	0	-1	0	0	0	39	
.VARIABLE	"gstAccPacketRead"	1064	"android_accessory_packet"	0	0	-1	0	0	0	77	
.VARIABLE	"mInitF"	48	"_vos_mutex_t"	0	0	-1	0	0	0	51	
.VARIABLE	"tcbATOF"	16	"_vos_tcb_t"	0	1	-1	0	0	1	31	
.VARIABLE	"gstAccPacketWrite"	1064	"android_accessory_packet"	0	0	-1	0	0	0	76	
.VARIABLE	"hUSBHOST2"	16	"short"	0	0	-1	0	0	0	40	
.VARIABLE	"ft232Data"	8	"char"	0	0	-1	0	0	0	68	
.VARIABLE	"ft232Baud"	32	"int"	0	0	-1	0	0	0	67	
.VARIABLE	"ft232Flow"	8	"char"	0	0	-1	0	0	0	71	
.VARIABLE	"ft232Stop"	8	"char"	0	0	-1	0	0	0	69	
.VARIABLE	"tcbCONNECT"	16	"_vos_tcb_t"	0	1	-1	0	0	1	32	
.VARIABLE	"hGPIO_PORT_A"	16	"short"	0	0	-1	0	0	0	41	
.VARIABLE	"hGPIO_PORT_B"	16	"short"	0	0	-1	0	0	0	44	
.VARIABLE	"ft232Parity"	8	"char"	0	0	-1	0	0	0	70	
.TYPEDEF	"_fatdrv_ioctl_cb_fs_t"	"fatdrv_ioctl_cb_fs_t"
.TYPEDEF	"_usbhostft232_eeprom_t"	"usbhostft232_eeprom_t"
.TYPEDEF	"_vos_gpio_t"	"vos_gpio_t"
.TYPEDEF	"int"	"usbhost_ep_handle_ex"
.TYPEDEF	"_usb_deviceEndpointDescriptor_t"	"usb_deviceEndpointDescriptor_t"
.TYPEDEF	"_vos_semaphore_list_t"	"vos_semaphore_list_t"
.TYPEDEF	"_usbhostft232_bitmode_t"	"usbhostft232_bitmode_t"
.TYPEDEF	"_fatdrv_ioctl_cb_dir_t"	"fatdrv_ioctl_cb_dir_t"
.TYPEDEF	"char"	"PF"
.TYPEDEF	"_usbHostAndroidAccessory_ioctl_cb_attach_t"	"usbHostAndroidAccessory_ioctl_cb_attach_t"
.TYPEDEF	"_usb_deviceInterfaceDescriptor_t"	"usb_deviceInterfaceDescriptor_t"
.TYPEDEF	"void"	"fat_context"
.TYPEDEF	"void"	"usbhost_device_handle"
.TYPEDEF	"_usb_deviceQualifierDescriptor_t"	"usb_deviceQualifierDescriptor_t"
.TYPEDEF	"_vos_mutex_t"	"vos_mutex_t"
.TYPEDEF	"_boms_ioctl_cb_attach_t"	"boms_ioctl_cb_attach_t"
.TYPEDEF	"_fatdrv_ioctl_cb_file_t"	"fatdrv_ioctl_cb_file_t"
.TYPEDEF	"_fat_stream_t"	"fat_stream_t"
.TYPEDEF	"_vos_device_t"	"vos_device_t"
.TYPEDEF	"_fatdrv_ioctl_cb_time_t"	"fatdrv_ioctl_cb_time_t"
.TYPEDEF	"_usb_deviceDescriptor_t"	"usb_deviceDescriptor_t"
.TYPEDEF	"_vos_driver_t"	"vos_driver_t"
.TYPEDEF	"_file_context_t"	"FILE"
.TYPEDEF	"_vos_system_data_area_t"	"vos_system_data_area_t"
.TYPEDEF	"_usb_deviceStringDescriptorZero_t"	"usb_deviceStringDescriptorZero_t"
.TYPEDEF	"_msi_xfer_cb_t"	"msi_xfer_cb_t"
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_fat_ioctl_cb_t"	"fat_ioctl_cb_t"
.TYPEDEF	"_msi_ioctl_cb_t"	"msi_ioctl_cb_t"
.TYPEDEF	"_usbHostAndroidAccessory_ioctl_cb_t"	"usbHostAndroidAccessory_ioctl_cb_t"
.TYPEDEF	"_fatdrv_ioctl_cb_attach_t"	"fatdrv_ioctl_cb_attach_t"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"_file_context_t"	"file_context_t"
.TYPEDEF	"int"	"usbhost_device_handle_ex"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"android_accessory_packet"	"android_accessory_packet"
.TYPEDEF	"_gpio_context_t"	"gpio_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_class_t"	"usbhost_ioctl_cb_class_t"
.TYPEDEF	"_usbhost_xfer_t"	"usbhost_xfer_t"
.TYPEDEF	"_uart_context_t"	"uart_context_t"
.TYPEDEF	"_gpio_ioctl_cb_t"	"gpio_ioctl_cb_t"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_usb_hubStatus_t"	"usb_hubStatus_t"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"_usb_deviceConfigurationDescriptor_t"	"usb_deviceConfigurationDescriptor_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"_vos_dma_config_t"	"vos_dma_config_t"
.TYPEDEF	"_usbhost_ioctl_cb_vid_pid_t"	"usbhost_ioctl_cb_vid_pid_t"
.TYPEDEF	"_usbhost_ioctl_cb_ep_info_t"	"usbhost_ioctl_cb_ep_info_t"
.TYPEDEF	"_usb_interfaceAssociationDescriptor_t"	"usb_interfaceAssociationDescriptor_t"
.TYPEDEF	"_common_ioctl_cb_t"	"common_ioctl_cb_t"
.TYPEDEF	"void"	"usbhost_ep_handle"
.TYPEDEF	"_usbhost_ioctl_cb_dev_info_t"	"usbhost_ioctl_cb_dev_info_t"
.TYPEDEF	"_usbhost_context_t"	"usbhost_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_t"	"usbhost_ioctl_cb_t"
.TYPEDEF	"_usb_hub_selector_t"	"usb_hub_selector_t"
.TYPEDEF	"_usb_deviceStringDescriptor_t"	"usb_deviceStringDescriptor_t"
.TYPEDEF	"_usbhost_xfer_iso_t"	"usbhost_xfer_iso_t"
.TYPEDEF	"void"	"fnVoidPtr"
.TYPEDEF	"_usbhostft232_ioctl_cb_attach_t"	"usbhostft232_ioctl_cb_attach_t"
.TYPEDEF	"_vos_tcb_t"	"vos_tcb_t"
.TYPEDEF	"_msi_ioctl_cb_info_t"	"msi_ioctl_cb_info_t"
.TYPEDEF	"_usb_deviceRequest_t"	"usb_deviceRequest_t"
.TYPEDEF	"_usb_hubDescriptor_t"	"usb_hubDescriptor_t"
.TYPEDEF	"_usb_hubPortStatus_t"	"usb_hubPortStatus_t"
.FUNCTION	"vos_dma_get_fifo_flow_control"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	83	
.FUNC_END	"vos_dma_get_fifo_flow_control"

.FUNCTION	"vos_start_scheduler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_scheduler"

.FUNCTION	"vos_gpio_write_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	125	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	125	
.FUNC_END	"vos_gpio_write_port"

.FUNCTION	"vos_signal_semaphore_from_isr"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	168	
.FUNC_END	"vos_signal_semaphore_from_isr"

.FUNCTION	"vos_malloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"size"	16 "short"	0	0	0	0	0	0	24	
.FUNC_END	"vos_malloc"

.FUNCTION	"vos_create_thread_ex"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	98	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	98	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	98	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	98	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	98	
.FUNC_END	"vos_create_thread_ex"

.FUNCTION	"vos_memcpy"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	27	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	27	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	27	
.FUNC_END	"vos_memcpy"

.FUNCTION	"vos_memset"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	26	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	26	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"vos_memset"

.FUNCTION	"vos_get_kernel_clock"	
.RETURN "int"	32	0	0	0	0	0	0	
.FUNC_END	"vos_get_kernel_clock"

.FUNCTION	"vos_gpio_disable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	129	
.FUNC_END	"vos_gpio_disable_int"

.FUNCTION	"vos_get_package_type"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_package_type"

.FUNCTION	"vos_dma_get_fifo_data_register"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	82	
.FUNC_END	"vos_dma_get_fifo_data_register"

.FUNCTION	"fat_dirTableFindFirst"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	261	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	261	
.FUNC_END	"fat_dirTableFindFirst"

.FUNCTION	"vos_signal_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	167	
.FUNC_END	"vos_signal_semaphore"

.FUNCTION	"fat_fileMod"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	254	
.PARAMETER	"attr"	8 "char"	0	0	0	0	0	0	254	
.FUNC_END	"fat_fileMod"

.FUNCTION	"vos_gpio_wait_on_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	130	
.FUNC_END	"vos_gpio_wait_on_int"

.FUNCTION	"stdinAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	43	
.FUNC_END	"stdinAttach"

.FUNCTION	"stdioAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	41	
.FUNC_END	"stdioAttach"

.FUNCTION	"vos_dma_get_fifo_data"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	85	
.PARAMETER	"dat"	16 "char"	0	1	0	0	0	1	85	
.FUNC_END	"vos_dma_get_fifo_data"

.FUNCTION	"fatdrv_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	98	
.FUNC_END	"fatdrv_init"

.FUNCTION	"vos_iocell_get_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	228	
.PARAMETER	"drive_current"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"trigger"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"slew_rate"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"pull"	16 "char"	0	1	0	0	0	1	228	
.FUNC_END	"vos_iocell_get_config"

.FUNCTION	"vos_iomux_define_bidi"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"input_signal"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"output_signal"	8 "char"	0	0	0	0	0	0	225	
.FUNC_END	"vos_iomux_define_bidi"

.FUNCTION	"vos_gpio_set_all_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"masks"	16 "_vos_gpio_t"	0	1	0	0	0	1	118	
.FUNC_END	"vos_gpio_set_all_mode"

.FUNCTION	"vos_iocell_set_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"drive_current"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"trigger"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"slew_rate"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"pull"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_iocell_set_config"

.FUNCTION	"fat_fileRead"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	236	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	236	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	236	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	236	
.PARAMETER	"bytes_read"	16 "long"	0	1	0	0	0	1	236	
.FUNC_END	"fat_fileRead"

.FUNCTION	"vos_gpio_set_pin_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	116	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	116	
.FUNC_END	"vos_gpio_set_pin_mode"

.FUNCTION	"iomux_setup"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"iomux_setup"

.FUNCTION	"fat_fileSeek"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	229	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	229	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"fat_fileSeek"

.FUNCTION	"fat_dirEntryIsReadOnly"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	267	
.FUNC_END	"fat_dirEntryIsReadOnly"

.FUNCTION	"vos_get_chip_revision"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_chip_revision"

.FUNCTION	"fat_fileTell"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	231	
.PARAMETER	"offset"	16 "long"	0	1	0	0	0	1	231	
.FUNC_END	"fat_fileTell"

.FUNCTION	"vos_wait_semaphore_ex"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"l"	16 "_vos_semaphore_list_t"	0	1	0	0	0	1	166	
.FUNC_END	"vos_wait_semaphore_ex"

.FUNCTION	"fat_fileOpen"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	224	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	224	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	224	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"fat_fileOpen"

.FUNCTION	"fat_fileCopy"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.PARAMETER	"dest_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.FUNC_END	"fat_fileCopy"

.FUNCTION	"vos_enable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	72	
.FUNC_END	"vos_enable_interrupts"

.FUNCTION	"fat_capacity"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	216	
.FUNC_END	"fat_capacity"

.FUNCTION	"stderrAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	45	
.FUNC_END	"stderrAttach"

.FUNCTION	"vos_dev_read"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	54	
.PARAMETER	"num_to_read"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"num_read"	16 "short"	0	1	0	0	0	1	54	
.FUNC_END	"vos_dev_read"

.FUNCTION	"stdoutAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	44	
.FUNC_END	"stdoutAttach"

.FUNCTION	"vos_dev_open"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	53	
.FUNC_END	"vos_dev_open"

.FUNCTION	"vos_halt_cpu"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_halt_cpu"

.FUNCTION	"vos_dev_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	50	
.PARAMETER	"driver_cb"	16 "_vos_driver_t"	0	1	0	0	0	1	50	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	50	
.FUNC_END	"vos_dev_init"

.FUNCTION	"vos_dma_get_fifo_count"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	84	
.FUNC_END	"vos_dma_get_fifo_count"

.FUNCTION	"fat_getFSType"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	219	
.FUNC_END	"fat_getFSType"

.FUNCTION	"usbhost_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum_1"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"devNum_2"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"context"	16 "_usbhost_context_t"	0	1	0	0	0	1	348	
.FUNC_END	"usbhost_init"

.FUNCTION	"vos_reset_kernel_clock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_kernel_clock"

.FUNCTION	"fat_freeSpace"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"scan"	8 "char"	0	0	0	0	0	0	214	
.FUNC_END	"fat_freeSpace"

.FUNCTION	"fat_fileClose"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	225	
.FUNC_END	"fat_fileClose"

.FUNCTION	"fat_dirIsRoot"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	281	
.FUNC_END	"fat_dirIsRoot"

.FUNCTION	"vos_gpio_set_port_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	117	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	117	
.FUNC_END	"vos_gpio_set_port_mode"

.FUNCTION	"fat_fileFlush"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	234	
.FUNC_END	"fat_fileFlush"

.FUNCTION	"vos_iomux_define_input"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	223	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	223	
.FUNC_END	"vos_iomux_define_input"

.FUNCTION	"fat_fileWrite"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	237	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	237	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	237	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	237	
.PARAMETER	"bytes_written"	16 "long"	0	1	0	0	0	1	237	
.FUNC_END	"fat_fileWrite"

.FUNCTION	"vos_disable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	73	
.FUNC_END	"vos_disable_interrupts"

.FUNCTION	"fat_dirEntryIsDirectory"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	269	
.FUNC_END	"fat_dirEntryIsDirectory"

.FUNCTION	"vos_get_idle_thread_tcb"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.FUNC_END	"vos_get_idle_thread_tcb"

.FUNCTION	"vos_dma_reset"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	76	
.FUNC_END	"vos_dma_reset"

.FUNCTION	"vos_dev_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	57	
.FUNC_END	"vos_dev_close"

.FUNCTION	"vos_wdt_clear"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_wdt_clear"

.FUNCTION	"vos_heap_size"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_heap_size"

.FUNCTION	"vos_dev_ioctl"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	56	
.PARAMETER	"cb"	16 "void"	0	1	0	0	0	1	56	
.FUNC_END	"vos_dev_ioctl"

.FUNCTION	"vos_dev_write"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	55	
.PARAMETER	"num_to_write"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"num_written"	16 "short"	0	1	0	0	0	1	55	
.FUNC_END	"vos_dev_write"

.FUNCTION	"fat_fileDelete"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	241	
.FUNC_END	"fat_fileDelete"

.FUNCTION	"fat_fileRename"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	251	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	251	
.FUNC_END	"fat_fileRename"

.FUNCTION	"vos_get_clock_frequency"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_clock_frequency"

.FUNCTION	"fat_fileSetPos"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	230	
.PARAMETER	"offset"	32 "long"	0	0	0	0	0	0	230	
.FUNC_END	"fat_fileSetPos"

.FUNCTION	"vos_set_clock_frequency"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"frequency"	8 "char"	0	0	0	0	0	0	209	
.FUNC_END	"vos_set_clock_frequency"

.FUNCTION	"feof"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	55	
.FUNC_END	"feof"

.FUNCTION	"fat_fileRewind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	232	
.FUNC_END	"fat_fileRewind"

.FUNCTION	"vos_dma_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	79	
.FUNC_END	"vos_dma_enable"

.FUNCTION	"vos_reset_vnc2"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_vnc2"

.FUNCTION	"vos_heap_space"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"hfree"	16 "short"	0	1	0	0	0	1	30	
.PARAMETER	"hmax"	16 "short"	0	1	0	0	0	1	30	
.FUNC_END	"vos_heap_space"

.FUNCTION	"vos_iomux_define_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	224	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"vos_iomux_define_output"

.FUNCTION	"vos_wdt_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"bitPosition"	8 "char"	0	0	0	0	0	0	244	
.FUNC_END	"vos_wdt_enable"

.FUNCTION	"fat_getVolumeID"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	220	
.PARAMETER	"volID"	16 "long"	0	1	0	0	0	1	220	
.FUNC_END	"fat_getVolumeID"

.FUNCTION	"vos_dma_wait_on_complete"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	81	
.FUNC_END	"vos_dma_wait_on_complete"

.FUNCTION	"vos_lock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	132	
.FUNC_END	"vos_lock_mutex"

.FUNCTION	"vos_power_down"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"wakeMask"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_power_down"

.FUNCTION	"vos_init_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	131	
.PARAMETER	"state"	8 "char"	0	0	0	0	0	0	131	
.FUNC_END	"vos_init_mutex"

.FUNCTION	"fat_dirEntryIsVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	266	
.FUNC_END	"fat_dirEntryIsVolumeLabel"

.FUNCTION	"fread"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	61	
.FUNC_END	"fread"

.FUNCTION	"vos_gpio_wait_on_any_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	16 "char"	0	1	0	0	0	1	131	
.FUNC_END	"vos_gpio_wait_on_any_int"

.FUNCTION	"fgetc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	70	
.FUNC_END	"fgetc"

.FUNCTION	"fseek"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	57	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	57	
.PARAMETER	"whence"	32 "int"	1	0	0	0	0	0	57	
.FUNC_END	"fseek"

.FUNCTION	"vos_get_priority_ceiling"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	135	
.FUNC_END	"vos_get_priority_ceiling"

.FUNCTION	"ftell"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	56	
.FUNC_END	"ftell"

.FUNCTION	"fopen"	
.RETURN "_file_context_t"	16	0	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.FUNC_END	"fopen"

.FUNCTION	"fgets"	
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	80	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	80	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	80	
.FUNC_END	"fgets"

.FUNCTION	"vos_dma_disable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	80	
.FUNC_END	"vos_dma_disable"

.FUNCTION	"vos_set_priority_ceiling"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	136	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	136	
.FUNC_END	"vos_set_priority_ceiling"

.FUNCTION	"fputc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	71	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	71	
.FUNC_END	"fputc"

.FUNCTION	"vos_dma_release"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	75	
.FUNC_END	"vos_dma_release"

.FUNCTION	"vos_iomux_disable_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	226	
.FUNC_END	"vos_iomux_disable_output"

.FUNCTION	"fputs"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	81	const
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	81	
.FUNC_END	"fputs"

.FUNCTION	"vos_dma_acquire"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_dma_acquire"

.FUNCTION	"fat_dirChangeDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	279	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	279	
.FUNC_END	"fat_dirChangeDir"

.FUNCTION	"vos_delay_msecs"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"ms"	16 "short"	0	0	0	0	0	0	103	
.FUNC_END	"vos_delay_msecs"

.FUNCTION	"vos_stack_usage"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	188	
.FUNC_END	"vos_stack_usage"

.FUNCTION	"fat_dirTableFind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	260	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	260	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	260	
.FUNC_END	"fat_dirTableFind"

.FUNCTION	"fat_getDevHandle"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	215	
.FUNC_END	"fat_getDevHandle"

.FUNCTION	"vos_get_profile"	
.RETURN "int"	32	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	191	
.FUNC_END	"vos_get_profile"

.FUNCTION	"fat_dirCreateDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	280	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	280	
.FUNC_END	"fat_dirCreateDir"

.FUNCTION	"usbHostFt232_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	178	
.FUNC_END	"usbHostFt232_init"

.FUNCTION	"vos_gpio_wait_on_all_ints"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_gpio_wait_on_all_ints"

.FUNCTION	"fat_dirEntryName"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	277	
.PARAMETER	"fileName"	16 "char"	1	1	0	0	0	1	277	
.FUNC_END	"fat_dirEntryName"

.FUNCTION	"rename"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.FUNC_END	"rename"

.FUNCTION	"fat_dirEntryTime"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	276	
.PARAMETER	"offset"	8 "char"	0	0	0	0	0	0	276	
.FUNC_END	"fat_dirEntryTime"

.FUNCTION	"fclose"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	54	
.FUNC_END	"fclose"

.FUNCTION	"fat_fileTruncate"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	233	
.FUNC_END	"fat_fileTruncate"

.FUNCTION	"fat_dirEntrySize"	
.RETURN "long"	32	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	270	
.FUNC_END	"fat_dirEntrySize"

.FUNCTION	"fflush"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	58	
.FUNC_END	"fflush"

.FUNCTION	"rewind"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	65	
.FUNC_END	"rewind"

.FUNCTION	"memset"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	24	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	24	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	24	
.FUNC_END	"memset"

.FUNCTION	"memcpy"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	23	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	23	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	23	
.FUNC_END	"memcpy"

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

.FUNCTION	"remove"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	63	const
.FUNC_END	"remove"

.FUNCTION	"strcat"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	29	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"strcat"

.FUNCTION	"fwrite"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	62	const
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	62	
.FUNC_END	"fwrite"

.FUNCTION	"printf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	50	const
.FUNC_END	"printf"

.FUNCTION	"strlen"	extern
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"str"	16 "char"	1	1	0	0	0	1	30	const
.FUNC_END	"strlen"

.FUNCTION	"strcmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	25	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	25	const
.FUNC_END	"strcmp"

.FUNCTION	"strcpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	27	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	27	const
.FUNC_END	"strcpy"

.FUNCTION	"vos_dma_retained_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	78	
.PARAMETER	"mem_addr"	16 "char"	0	1	0	0	0	1	78	
.PARAMETER	"bufsiz"	16 "short"	0	0	0	0	0	0	78	
.FUNC_END	"vos_dma_retained_configure"

.FUNCTION	"fat_dirDirIsEmpty"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	264	
.FUNC_END	"fat_dirDirIsEmpty"

.FUNCTION	"vos_unlock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	134	
.FUNC_END	"vos_unlock_mutex"

.FUNCTION	"getchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.FUNC_END	"getchar"

.FUNCTION	"putchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	69	
.FUNC_END	"putchar"

.FUNCTION	"fgetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	82	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	82	
.FUNC_END	"fgetpos"

.FUNCTION	"fprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	60	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	60	const
.FUNC_END	"fprintf"

.FUNCTION	"vos_gpio_read_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	122	
.FUNC_END	"vos_gpio_read_all"

.FUNCTION	"vos_create_thread"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	97	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	97	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	97	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	97	
.FUNC_END	"vos_create_thread"

.FUNCTION	"fsetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	83	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	83	const
.FUNC_END	"fsetpos"

.FUNCTION	"sprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	77	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	77	const
.FUNC_END	"sprintf"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

.FUNCTION	"vos_gpio_read_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	120	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	120	
.FUNC_END	"vos_gpio_read_pin"

.FUNCTION	"vos_dma_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	77	
.PARAMETER	"cb"	16 "_vos_dma_config_t"	0	1	0	0	0	1	77	
.FUNC_END	"vos_dma_configure"

.FUNCTION	"strncpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	28	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	28	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	28	
.FUNC_END	"strncpy"

.FUNCTION	"vos_init_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	180	
.FUNC_END	"vos_init_cond_var"

.FUNCTION	"vos_wait_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	181	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	181	
.FUNC_END	"vos_wait_cond_var"

.FUNCTION	"fat_dirEntryIsFile"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	268	
.FUNC_END	"fat_dirEntryIsFile"

.FUNCTION	"fsAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	47	
.FUNC_END	"fsAttach"

.FUNCTION	"fat_getVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	221	
.PARAMETER	"volLabel"	16 "char"	1	1	0	0	0	1	221	
.FUNC_END	"fat_getVolumeLabel"

.FUNCTION	"vos_stop_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_stop_profiler"

.FUNCTION	"fat_time"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"time"	32 "long"	0	0	0	0	0	0	257	
.FUNC_END	"fat_time"

.FUNCTION	"fat_open"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"hMsi"	16 "short"	0	0	0	0	0	0	209	
.PARAMETER	"partition"	8 "char"	0	0	0	0	0	0	209	
.PARAMETER	"status"	16 "char"	0	1	0	0	0	1	209	
.FUNC_END	"fat_open"

.FUNCTION	"fat_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"fat_init"

.FUNCTION	"vos_trylock_mutex"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	133	
.FUNC_END	"vos_trylock_mutex"

.FUNCTION	"fat_bytesPerSector"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	218	
.PARAMETER	"bytes"	16 "short"	0	1	0	0	0	1	218	
.FUNC_END	"fat_bytesPerSector"

.FUNCTION	"vos_free"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"ptrFree"	16 "void"	0	1	0	0	0	1	25	
.FUNC_END	"vos_free"

.FUNCTION	"usbHostAndroidAccessory_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	89	
.FUNC_END	"usbHostAndroidAccessory_init"

.FUNCTION	"vos_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"quantum"	8 "char"	0	0	0	0	0	0	52	
.PARAMETER	"tick_cnt"	16 "short"	0	0	0	0	0	0	52	
.PARAMETER	"num_devices"	8 "char"	0	0	0	0	0	0	52	
.FUNC_END	"vos_init"

.FUNCTION	"vos_gpio_read_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	121	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	121	
.FUNC_END	"vos_gpio_read_port"

.FUNCTION	"vos_gpio_write_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	126	
.FUNC_END	"vos_gpio_write_all"

.FUNCTION	"vos_set_idle_thread_tcb_size"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb_size"	16 "short"	0	0	0	0	0	0	100	
.FUNC_END	"vos_set_idle_thread_tcb_size"

.FUNCTION	"vos_init_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"sem"	16 "_vos_semaphore_t"	0	1	0	0	0	1	164	
.PARAMETER	"count"	16 "short"	1	0	0	0	0	0	164	
.FUNC_END	"vos_init_semaphore"

.FUNCTION	"vos_wait_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	165	
.FUNC_END	"vos_wait_semaphore"

.FUNCTION	"vos_gpio_write_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	124	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	124	
.FUNC_END	"vos_gpio_write_pin"

.FUNCTION	"fat_dirEntryIsValid"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	265	
.FUNC_END	"fat_dirEntryIsValid"

.FUNCTION	"vos_start_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_profiler"

.FUNCTION	"fat_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	210	
.FUNC_END	"fat_close"

.FUNCTION	"gpio_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	91	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	92	
.FUNC_END	"gpio_init"

.FUNCTION	"boms_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	35	
.FUNC_END	"boms_init"

.FUNCTION	"fat_bytesPerCluster"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	217	
.PARAMETER	"bytes"	16 "long"	0	1	0	0	0	1	217	
.FUNC_END	"fat_bytesPerCluster"

.FUNCTION	"uart_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	115	
.PARAMETER	"context"	16 "_uart_context_t"	0	1	0	0	0	1	116	
.FUNC_END	"uart_init"

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"

.FUNCTION	"fat_dirTableFindNext"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	262	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	262	
.FUNC_END	"fat_dirTableFindNext"



.TEXT


.WEAK	"vos_dma_get_fifo_flow_control"

.WEAK	"vos_start_scheduler"

.WEAK	"vos_gpio_write_port"

.WEAK	"vos_signal_semaphore_from_isr"

.WEAK	"vos_malloc"

.WEAK	"vos_create_thread_ex"

.WEAK	"vos_memcpy"

.WEAK	"vos_memset"

.WEAK	"vos_get_kernel_clock"

.WEAK	"vos_gpio_disable_int"

.WEAK	"vos_get_package_type"

.WEAK	"vos_dma_get_fifo_data_register"

.WEAK	"fat_dirTableFindFirst"

.WEAK	"vos_signal_semaphore"

.WEAK	"fat_fileMod"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"stdinAttach"

.WEAK	"stdioAttach"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"fatdrv_init"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"fat_fileRead"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"iomux_setup"

.WEAK	"fat_fileSeek"

.WEAK	"fat_dirEntryIsReadOnly"

.WEAK	"vos_get_chip_revision"

.WEAK	"fat_fileTell"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"fat_fileOpen"

.WEAK	"fat_fileCopy"

.WEAK	"vos_enable_interrupts"

.WEAK	"fat_capacity"

.WEAK	"stderrAttach"

.WEAK	"vos_dev_read"

.WEAK	"stdoutAttach"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"fat_getFSType"

.WEAK	"usbhost_init"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"fat_freeSpace"

.WEAK	"fat_fileClose"

.WEAK	"fat_dirIsRoot"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"fat_fileFlush"

.WEAK	"vos_iomux_define_input"

.WEAK	"fat_fileWrite"

.WEAK	"vos_disable_interrupts"

.WEAK	"fat_dirEntryIsDirectory"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dma_reset"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"fat_fileDelete"

.WEAK	"fat_fileRename"

.WEAK	"vos_get_clock_frequency"

.WEAK	"fat_fileSetPos"

.WEAK	"vos_set_clock_frequency"

.WEAK	"feof"

.WEAK	"fat_fileRewind"

.WEAK	"vos_dma_enable"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"fat_getVolumeID"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"fat_dirEntryIsVolumeLabel"

.WEAK	"fread"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"fgetc"

.WEAK	"fseek"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"ftell"

.WEAK	"fopen"

.WEAK	"fgets"

.WEAK	"vos_dma_disable"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"fputc"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"fputs"

.WEAK	"vos_dma_acquire"

.WEAK	"fat_dirChangeDir"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"fat_dirTableFind"

.WEAK	"fat_getDevHandle"

.WEAK	"vos_get_profile"

.WEAK	"fat_dirCreateDir"

.WEAK	"usbHostFt232_init"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"fat_dirEntryName"

.WEAK	"rename"

.WEAK	"fat_dirEntryTime"

.WEAK	"fclose"

.WEAK	"fat_fileTruncate"

.WEAK	"fat_dirEntrySize"

.WEAK	"fflush"

.WEAK	"rewind"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"vos_delay_cancel"

.WEAK	"remove"

.WEAK	"strcat"

.WEAK	"fwrite"

.WEAK	"printf"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"vos_dma_retained_configure"

.WEAK	"fat_dirDirIsEmpty"

.WEAK	"vos_unlock_mutex"

.WEAK	"getchar"

.WEAK	"putchar"

.WEAK	"fgetpos"

.WEAK	"fprintf"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"fsetpos"

.WEAK	"sprintf"

.WEAK	"strncmp"

.WEAK	"vos_gpio_read_pin"

.WEAK	"vos_dma_configure"

.WEAK	"strncpy"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"fat_dirEntryIsFile"

.WEAK	"fsAttach"

.WEAK	"fat_getVolumeLabel"

.WEAK	"vos_stop_profiler"

.WEAK	"fat_time"

.WEAK	"fat_open"

.WEAK	"fat_init"

.WEAK	"vos_trylock_mutex"

.WEAK	"fat_bytesPerSector"

.WEAK	"vos_free"

.WEAK	"usbHostAndroidAccessory_init"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"fat_dirEntryIsValid"

.WEAK	"vos_start_profiler"

.WEAK	"fat_close"

.WEAK	"gpio_init"

.WEAK	"boms_init"

.WEAK	"fat_bytesPerCluster"

.WEAK	"uart_init"

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

.WEAK	"fat_dirTableFindNext"

.LINE	82
main:	
.GLOBAL	 DO_NOT_EXPORT  "main"

.VARIABLE	"uartContext"	8	"_uart_context_t"	0	0	0	0	0	0	92	
.VARIABLE	"gpioContextA"	8	"_gpio_context_t"	0	0	10	0	0	0	86	
.VARIABLE	"gpioContextB"	8	"_gpio_context_t"	0	0	18	0	0	0	88	
.VARIABLE	"usbhostContext"	32	"_usbhost_context_t"	0	0	28	0	0	0	90	
.FUNCTION	"main"	
.RETURN "void"	0	0	0	98	0	0	0	
SP_DEC	$95
.LINE	96
PUSH8	$9
PUSH16	$1
PUSH8	$50
CALL	vos_init
SP_INC	$4
.LINE	97
PUSH8	$0
CALL	vos_set_clock_frequency
SP_INC	$1
.LINE	98
PUSH16	$512
CALL	vos_set_idle_thread_tcb_size
SP_INC	$2
.LINE	101
CALL	iomux_setup
.LINE	105
SP_STORE	%ecx
ADD16	%ecx	$1
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$1
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$3
LD8	(%ecx)	$64
.LINE	106
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$5
PUSH16	%eax
PUSH8	$7
SP_DEC	$1
CALL	uart_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$3
.LINE	108
PUSH8	$6
SP_DEC	$1
CALL	fatdrv_init
POP8	%eax
SP_WR8	%eax	$9
SP_INC	$1
.LINE	110
PUSH8	$8
SP_DEC	$1
CALL	boms_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$1
.LINE	112
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$0
.LINE	113
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_RD16	%eax	$15
PUSH16	%eax
PUSH8	$2
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$20
SP_INC	$3
.LINE	115
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$19
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$21
LD8	(%ecx)	$1
.LINE	116
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_RD16	%eax	$23
PUSH16	%eax
PUSH8	$3
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$3
.LINE	118
PUSH8	$4
SP_DEC	$1
CALL	usbHostAndroidAccessory_init
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$1
.LINE	120
PUSH8	$5
SP_DEC	$1
CALL	usbHostFt232_init
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$1
.LINE	122
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$34
LD8	(%ecx)	$8
.LINE	123
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
LD8	(%ecx)	$16
.LINE	124
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$42
LD8	(%ecx)	$2
.LINE	125
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$46
LD8	(%ecx)	$2
.LINE	126
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_RD16	%eax	$48
PUSH16	%eax
PUSH8	$1
PUSH8	$0
SP_DEC	$1
CALL	usbhost_init
POP8	%eax
SP_WR8	%eax	$54
SP_INC	$4
.LINE	130
PUSH8	$2
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$52
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$51
.LINE	131
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$55
SP_INC	$2
.LINE	132
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$56
SP_INC	$2
.LINE	133
PUSH8	$0
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$57
SP_INC	$2
.LINE	134
PUSH8	$0
PUSH8	$4
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$58
SP_INC	$2
.LINE	136
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$58
SP_INC	$1
SP_RD16	hUSBHOST2	$57
.LINE	138
PUSH8	$7
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$60
SP_INC	$1
SP_RD16	hUART	$59
.LINE	141
SP_STORE	%ecx
ADD16	%ecx	$61
LD32	(%ecx)	$atof
SP_STORE	%ecx
ADD16	%ecx	$65
LD32	(%ecx)	$Str@0
PUSH16	$0
SP_RD16	%eax	$67
PUSH16	%eax
SP_RD32	%eax	$65
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$80
SP_INC	$11
SP_RD16	tcbATOF	$69
.LINE	142
SP_STORE	%ecx
ADD16	%ecx	$71
LD32	(%ecx)	$connect
SP_STORE	%ecx
ADD16	%ecx	$75
LD32	(%ecx)	$Str@1
PUSH16	$0
SP_RD16	%eax	$77
PUSH16	%eax
SP_RD32	%eax	$75
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$90
SP_INC	$11
SP_RD16	tcbCONNECT	$79
.LINE	143
SP_STORE	%ecx
ADD16	%ecx	$81
LD32	(%ecx)	$uart_sensor
SP_STORE	%ecx
ADD16	%ecx	$85
LD32	(%ecx)	$Str@2
PUSH16	$0
SP_RD16	%eax	$87
PUSH16	%eax
SP_RD32	%eax	$85
PUSH32	%eax
PUSH16	$2048
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$100
SP_INC	$11
SP_RD16	tcbUART_SENSOR	$89
.LINE	146
SP_STORE	%ecx
ADD16	%ecx	$91
LD16	(%ecx)	$mInitAndroid
PUSH8	$1
SP_RD16	%eax	$92
PUSH16	%eax
CALL	vos_init_mutex
SP_INC	$3
.LINE	147
SP_STORE	%ecx
ADD16	%ecx	$93
LD16	(%ecx)	$mInitF
PUSH8	$1
SP_RD16	%eax	$94
PUSH16	%eax
CALL	vos_init_mutex
SP_INC	$3
.LINE	149
CALL	vos_start_scheduler
.LINE	151
@fl1main_loop:	
.LINE	152
JUMP	@fl1main_loop
.LINE	152
SP_INC	$95
RTS	
.FUNC_END	"main"

.LINE	157
fat_attach:	
.GLOBAL	 DO_NOT_EXPORT  "fat_attach"

.VARIABLE	"hFAT"	16	"short"	0	0	2	0	0	0	161	
.VARIABLE	"fat_ioctl"	56	"_fat_ioctl_cb_t"	0	0	4	0	0	0	159	
.VARIABLE	"fat_att"	24	"_fatdrv_ioctl_cb_attach_t"	0	0	19	0	0	0	160	
.FUNCTION	"fat_attach"	
.RETURN "short"	16	0	0	38	0	0	0	
.PARAMETER	"hMSI"	16 "short"	0	0	40	0	0	0	157	
.PARAMETER	"devFAT"	8 "char"	0	0	42	0	0	0	157	
SP_DEC	$35
.LINE	165
SP_RD16	%eax	$42
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$1
SP_INC	$1
SP_RD16	%ecx	$0
SP_WR16	%ecx	$2
.LINE	168
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$1
.LINE	169
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	(%eax)
.LINE	170
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$40
CPY16	(%ecx)	(%eax)
.LINE	171
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$28
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$30
LD8	(%ecx)	$0
.LINE	173
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$32
PUSH16	%eax
SP_RD16	%eax	$4
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$38
SP_INC	$4
SP_RD8	%ecx	$34
CMP8	%ecx	$0
JNZ	@IC2
JZ	@IC1
@IC2:	
.LINE	176
SP_RD16	%eax	$2
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	177
LD16	%ecx	$0
SP_WR16	%ecx	$2
@IC1:	
.LINE	180
SP_RD16	%eax	$2
SP_WR16	%eax	$38
SP_INC	$35
RTS	
.FUNC_END	"fat_attach"

.LINE	183
fat_detach:	
.GLOBAL	 DO_NOT_EXPORT  "fat_detach"

.VARIABLE	"fat_ioctl"	56	"_fat_ioctl_cb_t"	0	0	0	0	0	0	185	
.FUNCTION	"fat_detach"	
.RETURN "void"	0	0	0	25	0	0	0	
.PARAMETER	"hFAT"	16 "short"	0	0	25	0	0	0	183	
SP_DEC	$22
.LINE	187
SP_STORE	%ecx
ADD16	%ecx	$25
CMP16	(%ecx)	$0
JNZ	@IC6
JUMP	@IC5
@IC6:	
.LINE	189
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$9
LD8	(%ecx)	$2
.LINE	190
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD16	(%ecx)	$0
.LINE	191
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$17
LD16	(%ecx)	$0
.LINE	193
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$19
PUSH16	%eax
SP_RD16	%eax	$27
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$25
SP_INC	$4
.LINE	194
SP_RD16	%eax	$25
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC5:	
.LINE	194
SP_INC	$22
RTS	
.FUNC_END	"fat_detach"

.LINE	198
boms_attach:	
.GLOBAL	 DO_NOT_EXPORT  "boms_attach"

.VARIABLE	"hc_iocb_class"	24	"_usbhost_ioctl_cb_class_t"	0	0	0	0	0	0	202	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	15	0	0	0	201	
.VARIABLE	"ifDisk"	32	"int"	1	0	45	0	0	0	200	
.VARIABLE	"hBOMS"	16	"short"	0	0	56	0	0	0	205	
.VARIABLE	"boms_att"	48	"_boms_ioctl_cb_attach_t"	0	0	58	0	0	0	204	
.VARIABLE	"boms_iocb"	40	"_msi_ioctl_cb_t"	0	0	72	0	0	0	203	
.FUNCTION	"boms_attach"	
.RETURN "short"	16	0	0	97	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	99	0	0	0	198	
.PARAMETER	"devBOMS"	8 "char"	0	0	101	0	0	0	198	
SP_DEC	$94
.LINE	208
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$3
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$5
LD8	(%ecx)	$8
.LINE	209
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$9
LD8	(%ecx)	$6
.LINE	210
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$80
.LINE	213
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$25
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$27
LD8	(%ecx)	$35
.LINE	214
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$31
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$33
LD32	(%ecx)	$0
.LINE	215
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$35
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$39
CPY16	(%ecx)	(%eax)
.LINE	216
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$41
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$45
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	(%eax)
.LINE	218
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_RD16	%eax	$51
PUSH16	%eax
SP_RD16	%eax	$101
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$57
SP_INC	$4
SP_RD8	%ecx	$53
CMP8	%ecx	$0
JNZ	@IC8
JZ	@IC7
@IC8:	
.LINE	220
LD16	%eax	$0
SP_WR16	%eax	$97
SP_INC	$94
RTS	
@IC7:	
.LINE	224
SP_RD16	%eax	$101
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$55
SP_INC	$1
SP_RD16	%ecx	$54
SP_WR16	%ecx	$56
.LINE	227
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$99
CPY16	(%ecx)	(%eax)
.LINE	228
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$45
CPY32	(%ecx)	(%eax)
.LINE	230
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$79
LD8	(%ecx)	$33
.LINE	231
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$85
CPY16	(%ecx)	(%eax)
.LINE	232
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$87
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$89
LD16	(%ecx)	$0
.LINE	234
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_RD16	%eax	$91
PUSH16	%eax
SP_RD16	%eax	$58
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$97
SP_INC	$4
SP_RD8	%ecx	$93
CMP8	%ecx	$0
JNZ	@IC12
JZ	@IC11
@IC12:	
.LINE	236
SP_RD16	%eax	$56
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	237
LD16	%ecx	$0
SP_WR16	%ecx	$56
@IC11:	
.LINE	240
SP_RD16	%eax	$56
SP_WR16	%eax	$97
SP_INC	$94
RTS	
.FUNC_END	"boms_attach"

.LINE	243
boms_detach:	
.GLOBAL	 DO_NOT_EXPORT  "boms_detach"

.VARIABLE	"boms_iocb"	40	"_msi_ioctl_cb_t"	0	0	0	0	0	0	245	
.FUNCTION	"boms_detach"	
.RETURN "void"	0	0	0	23	0	0	0	
.PARAMETER	"hBOMS"	16 "short"	0	0	23	0	0	0	243	
SP_DEC	$20
.LINE	247
SP_STORE	%ecx
ADD16	%ecx	$23
CMP16	(%ecx)	$0
JNZ	@IC16
JUMP	@IC15
@IC16:	
.LINE	249
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$5
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$7
LD8	(%ecx)	$34
.LINE	250
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD16	(%ecx)	$0
.LINE	251
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$13
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$15
LD16	(%ecx)	$0
.LINE	253
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$17
PUSH16	%eax
SP_RD16	%eax	$25
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$23
SP_INC	$4
.LINE	254
SP_RD16	%eax	$23
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC15:	
.LINE	254
SP_INC	$20
RTS	
.FUNC_END	"boms_detach"

.LINE	258
mass_storage_attach_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "mass_storage_attach_drivers"

.FUNCTION	"mass_storage_attach_drivers"	
.RETURN "void"	0	0	0	7	0	0	0	
SP_DEC	$4
.LINE	261
PUSH8	$8
PUSH16	hUSBHOST2
SP_DEC	$2
CALL	boms_attach
POP16	%eax
SP_WR16	%eax	$3
SP_INC	$3
SP_RD16	hBOMS	$0
.LINE	262
PUSH8	$6
PUSH16	hBOMS
SP_DEC	$2
CALL	fat_attach
POP16	%eax
SP_WR16	%eax	$5
SP_INC	$3
SP_RD16	hFAT_FILE_SYSTEM	$2
.LINE	262
SP_INC	$4
RTS	
.FUNC_END	"mass_storage_attach_drivers"

.LINE	273
usbhost_connect_state:	
.GLOBAL	 DO_NOT_EXPORT  "usbhost_connect_state"

.VARIABLE	"connectstate"	8	"char"	0	0	0	0	0	0	275	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	1	0	0	0	276	
.FUNCTION	"usbhost_connect_state"	
.RETURN "char"	8	0	0	30	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	31	0	0	0	273	
SP_DEC	$27
.LINE	275
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	278
SP_STORE	%ecx
ADD16	%ecx	$31
CMP16	(%ecx)	$0
JNZ	@IC18
JUMP	@IC17
@IC18:	
.LINE	280
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$16
.LINE	281
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	(%eax)
.LINE	282
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
.LINE	285
SP_RD8	%ecx	$0
CMP8	%ecx	$1
JZ	@IC20
JNZ	@IC19
@IC20:	
.LINE	287
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$24
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$30
SP_INC	$4
@IC19:	
@IC17:	
.LINE	290
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
CPY8	(%ecx)	(%eax)
SP_INC	$27
RTS	
.FUNC_END	"usbhost_connect_state"

.LINE	295
android_attach:	
.GLOBAL	 DO_NOT_EXPORT  "android_attach"

.VARIABLE	"status"	8	"char"	0	0	0	0	0	0	300	
.VARIABLE	"protocolRevision"	16	"short"	0	0	1	0	0	0	301	
.VARIABLE	"hANDACC"	16	"short"	0	0	5	0	0	0	299	
.VARIABLE	"atInfo"	120	"_usbHostAndroidAccessory_ioctl_cb_attach_t"	0	0	7	0	0	0	298	
.VARIABLE	"androidAccessory_cb"	72	"_common_ioctl_cb_t"	0	0	50	0	0	0	297	
.FUNCTION	"android_attach"	
.RETURN "short"	16	0	0	77	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	79	0	0	0	293	
.PARAMETER	"devANDACC"	8 "char"	0	0	81	0	0	0	293	
.PARAMETER	"manufacturer"	16 "char"	1	1	82	0	0	1	294	
.PARAMETER	"model"	16 "char"	1	1	84	0	0	1	294	
.PARAMETER	"description"	16 "char"	1	1	86	0	0	1	294	
.PARAMETER	"version"	16 "char"	1	1	88	0	0	1	295	
.PARAMETER	"uri"	16 "char"	1	1	90	0	0	1	295	
.PARAMETER	"serial"	16 "char"	1	1	92	0	0	1	295	
SP_DEC	$74
.LINE	300
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	301
LD16	%ecx	$0
SP_WR16	%ecx	$1
.LINE	303
SP_RD16	%eax	$81
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$4
SP_INC	$1
SP_RD16	%ecx	$3
SP_WR16	%ecx	$5
.LINE	305
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$22
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$79
CPY16	(%ecx)	(%eax)
.LINE	306
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$82
CPY16	(%ecx)	(%eax)
.LINE	307
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$84
CPY16	(%ecx)	(%eax)
.LINE	308
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$34
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$86
CPY16	(%ecx)	(%eax)
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$38
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$88
CPY16	(%ecx)	(%eax)
.LINE	310
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$90
CPY16	(%ecx)	(%eax)
.LINE	311
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$46
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$92
CPY16	(%ecx)	(%eax)
.LINE	313
SP_STORE	%ecx
ADD16	%ecx	$59
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$59
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$61
LD8	(%ecx)	$1
.LINE	314
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$65
SP_STORE	%eax
ADD16	%eax	$63
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$65
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$69
CPY16	(%ecx)	(%eax)
.LINE	315
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	%eax
SP_RD16	%eax	$71
PUSH16	%eax
SP_RD16	%eax	$7
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$77
SP_INC	$4
SP_RD8	%ecx	$73
CMP8	%ecx	$0
JNZ	@IC24
JZ	@IC23
@IC24:	
.LINE	317
SP_RD16	%eax	$5
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	318
LD16	%ecx	$0
SP_WR16	%ecx	$5
@IC23:	
.LINE	321
SP_RD16	%eax	$5
SP_WR16	%eax	$77
SP_INC	$74
RTS	
.FUNC_END	"android_attach"

.LINE	354
android_detach:	
.GLOBAL	 DO_NOT_EXPORT  "android_detach"

.VARIABLE	"androidAccessory_cb"	72	"_common_ioctl_cb_t"	0	0	0	0	0	0	356	
.FUNCTION	"android_detach"	
.RETURN "void"	0	0	0	19	0	0	0	
.PARAMETER	"hANDACC"	16 "short"	0	0	19	0	0	0	354	
SP_DEC	$16
.LINE	358
SP_STORE	%ecx
ADD16	%ecx	$19
CMP16	(%ecx)	$0
JNZ	@IC28
JUMP	@IC27
@IC28:	
.LINE	360
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD8	(%ecx)	$2
.LINE	361
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$13
PUSH16	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$19
SP_INC	$4
.LINE	362
SP_RD16	%eax	$19
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC27:	
.LINE	362
SP_INC	$16
RTS	
.FUNC_END	"android_detach"

.LINE	367
ft232_host_attach:	
.GLOBAL	 DO_NOT_EXPORT  "ft232_host_attach"

.VARIABLE	"ifFT232"	32	"int"	1	0	0	0	0	0	369	
.VARIABLE	"hc_iocb_vendor"	32	"_usbhost_ioctl_cb_vid_pid_t"	0	0	4	0	0	0	371	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	16	0	0	0	370	
.VARIABLE	"hHostFT232"	16	"short"	0	0	53	0	0	0	374	
.VARIABLE	"ft232_att"	56	"_usbhostft232_ioctl_cb_attach_t"	0	0	55	0	0	0	373	
.VARIABLE	"ft232_iocb"	72	"_common_ioctl_cb_t"	0	0	74	0	0	0	372	
.FUNCTION	"ft232_host_attach"	
.RETURN "short"	16	0	0	103	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	105	0	0	0	367	
.PARAMETER	"devHostFT232"	8 "char"	0	0	107	0	0	0	367	
.PARAMETER	"ftport"	8 "char"	0	0	108	0	0	0	367	
SP_DEC	$100
.LINE	369
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	377
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
LD16	(%ecx)	$1027
.LINE	378
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
LD16	(%ecx)	$24577
.LINE	381
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD8	(%ecx)	$34
.LINE	382
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$34
LD32	(%ecx)	$0
.LINE	383
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$40
CPY16	(%ecx)	(%eax)
.LINE	384
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$46
CPY16	(%ecx)	(%eax)
.LINE	386
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_RD16	%eax	$48
PUSH16	%eax
SP_RD16	%eax	$107
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$54
SP_INC	$4
SP_RD8	%ecx	$50
CMP8	%ecx	$0
JNZ	@IC30
JZ	@IC29
@IC30:	
.LINE	388
LD16	%eax	$0
SP_WR16	%eax	$103
SP_INC	$100
RTS	
@IC29:	
.LINE	392
SP_RD16	%eax	$107
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$52
SP_INC	$1
SP_RD16	%ecx	$51
SP_WR16	%ecx	$53
.LINE	395
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$55
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$62
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$105
CPY16	(%ecx)	(%eax)
.LINE	396
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$55
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$66
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$68
SP_STORE	%eax
CPY32	(%ecx)	(%eax)
.LINE	397
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$55
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$70
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$108
CPY8	(%ecx)	(%eax)
.LINE	399
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$83
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$85
LD8	(%ecx)	$167
.LINE	400
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$87
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$55
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	(%eax)
.LINE	401
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$93
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$95
LD16	(%ecx)	$0
.LINE	403
SP_STORE	%ecx
ADD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$97
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$103
SP_INC	$4
SP_RD8	%ecx	$99
CMP8	%ecx	$0
JNZ	@IC34
JZ	@IC33
@IC34:	
.LINE	405
SP_RD16	%eax	$53
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	406
LD16	%ecx	$0
SP_WR16	%ecx	$53
@IC33:	
.LINE	409
SP_RD16	%eax	$53
SP_WR16	%eax	$103
SP_INC	$100
RTS	
.FUNC_END	"ft232_host_attach"

.LINE	412
ft232_host_detach:	
.GLOBAL	 DO_NOT_EXPORT  "ft232_host_detach"

.VARIABLE	"ft232_iocb"	72	"_common_ioctl_cb_t"	0	0	0	0	0	0	414	
.FUNCTION	"ft232_host_detach"	
.RETURN "void"	0	0	0	19	0	0	0	
.PARAMETER	"hHostFT232"	16 "short"	0	0	19	0	0	0	412	
SP_DEC	$16
.LINE	416
SP_STORE	%ecx
ADD16	%ecx	$19
CMP16	(%ecx)	$0
JNZ	@IC38
JUMP	@IC37
@IC38:	
.LINE	418
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD8	(%ecx)	$168
.LINE	420
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$13
PUSH16	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$19
SP_INC	$4
.LINE	421
SP_RD16	%eax	$19
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC37:	
.LINE	421
SP_INC	$16
RTS	
.FUNC_END	"ft232_host_detach"

.LINE	562
connect:	
.GLOBAL	 DO_NOT_EXPORT  "connect"

.VARIABLE	"protocolRevision"	16	"short"	0	0	0	0	0	0	568	
.VARIABLE	"dataAvail"	16	"short"	1	0	2	0	0	0	569	
.VARIABLE	"blink"	8	"char"	0	0	4	0	0	0	570	
.VARIABLE	"ft232_iocb"	72	"_common_ioctl_cb_t"	0	0	14	0	0	0	564	
.VARIABLE	"status"	8	"char"	0	0	106	0	0	0	571	
.VARIABLE	"actual"	16	"short"	0	0	119	0	0	0	569	
.VARIABLE	"actualw"	16	"short"	0	0	151	0	0	0	569	
.FUNCTION	"connect"	
.RETURN "void"	0	0	0	173	0	0	0	
SP_DEC	$170
.LINE	568
LD16	%ecx	$0
SP_WR16	%ecx	$0
.LINE	569
LD16	%ecx	$0
SP_WR16	%ecx	$2
.LINE	570
LD8	%ecx	$0
SP_WR8	%ecx	$4
.LINE	574
PUSH16	$100
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$2
@IC39:	
.LINE	575
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC41
JUMP	@IC40
@IC41:	
.LINE	576
PUSH16	hUSBHOST2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$2
SP_RD8	%ecx	$6
CMP8	%ecx	$0
JNZ	@IC44
JUMP	@IC43
@IC44:	
.LINE	577
PUSH8	$0
PUSH8	$5
PUSH16	hUSBHOST2
SP_DEC	$2
CALL	ft232_host_attach
POP16	%eax
SP_WR16	%eax	$11
SP_INC	$4
SP_RD16	hUSBHOST_FT232	$7
.LINE	578
CMP16	hUSBHOST_FT232	$0
JNZ	@IC46
JUMP	@IC45
@IC46:	
.LINE	579
SP_STORE	%ecx
ADD16	%ecx	$9
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$2
OR32	(%ecx)	%eax	%ebx
SP_RD8	device_connect_status	$9
.LINE	580
PUSH8	$0
PUSH8	$2
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$15
SP_INC	$2
.LINE	597
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$23
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$25
LD8	(%ecx)	$34
.LINE	598
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$27
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$31
CPY32	(%ecx)	ft232Baud
.LINE	599
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$33
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$39
SP_INC	$4
.LINE	602
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
LD8	(%ecx)	$35
.LINE	603
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$44
LD8	(%ecx)	$0
.LINE	604
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$46
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$52
SP_INC	$4
.LINE	607
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$49
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$51
LD8	(%ecx)	$36
.LINE	608
SP_STORE	%ecx
ADD16	%ecx	$53
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$53
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$57
SP_STORE	%eax
ADD16	%eax	$55
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$57
CPY8	(%ecx)	ft232Data
.LINE	609
SP_STORE	%ecx
ADD16	%ecx	$59
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$59
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$65
SP_INC	$4
.LINE	612
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$62
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$64
LD8	(%ecx)	$37
.LINE	613
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$66
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
CPY8	(%ecx)	ft232Stop
.LINE	614
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$72
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$78
SP_INC	$4
.LINE	617
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$75
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$77
LD8	(%ecx)	$38
.LINE	618
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$79
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$83
CPY8	(%ecx)	ft232Parity
.LINE	619
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$85
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$91
SP_INC	$4
.LINE	622
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$90
SP_STORE	%eax
ADD16	%eax	$88
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$90
LD8	(%ecx)	$169
.LINE	623
SP_STORE	%ecx
ADD16	%ecx	$92
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$92
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$98
SP_INC	$4
@IC47:	
.LINE	624
SP_STORE	%ecx
ADD16	%ecx	$95
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$2
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$95
CMP32	(%ecx)	$0
JNZ	@IC49
JUMP	@IC48
@IC49:	
.LINE	625
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$99
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$101
LD8	(%ecx)	$2
.LINE	626
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$103
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$109
SP_INC	$4
SP_RD8	%ecx	$105
SP_WR8	%ecx	$106
.LINE	627
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$107
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$109
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$113
SP_RD16	%eax	$111
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$113
SP_WR16	%ecx	$2
.LINE	629
SP_STORE	%ecx
ADD16	%ecx	$2
CMP16	(%ecx)	$128
JGT	@IC51
JUMP	@IC50
@IC51:	
.LINE	630
LD16	%ecx	$128
SP_WR16	%ecx	$2
@IC50:	
.LINE	633
SP_STORE	%ecx
ADD16	%ecx	$2
CMP16	(%ecx)	$0
JGT	@IC55
JUMP	@IC54
@IC55:	
.LINE	634
SP_STORE	%ecx
ADD16	%ecx	$115
LD16	(%ecx)	$gstAccPacketWrite
SP_STORE	%ecx
ADD16	%ecx	$117
SP_STORE	%eax
ADD16	%eax	$115
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_RD16	%eax	$121
PUSH16	%eax
SP_RD16	%eax	$4
PUSH16	%eax
SP_RD16	%eax	$121
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$131
SP_INC	$8
SP_RD8	%ecx	$123
SP_WR8	%ecx	$106
.LINE	635
CMP16	hANDROID_ACCESSORY	$0
JNZ	@IC59
JZ	@IC58
@IC59:	
.LINE	636
SP_STORE	%ecx
ADD16	%ecx	$124
LD16	(%ecx)	$gstAccPacketWrite
SP_STORE	%ecx
ADD16	%ecx	$126
SP_STORE	%eax
ADD16	%eax	$124
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$126
LD8	(%ecx)	$13
.LINE	637
SP_STORE	%ecx
ADD16	%ecx	$128
LD16	(%ecx)	$gstAccPacketWrite
SP_STORE	%ecx
ADD16	%ecx	$130
SP_STORE	%eax
ADD16	%eax	$128
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$130
LD8	(%ecx)	$3
.LINE	638
SP_STORE	%ecx
ADD16	%ecx	$132
LD16	(%ecx)	$gstAccPacketWrite
SP_STORE	%ecx
ADD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$132
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$119
CPY8	(%ecx)	(%eax)
.LINE	639
SP_STORE	%ecx
ADD16	%ecx	$136
LD16	(%ecx)	$mInitAndroid
SP_RD16	%eax	$136
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	640
SP_STORE	%ecx
ADD16	%ecx	$138
LD16	(%ecx)	$gstAccPacketWrite
SP_RD16	%ecx	$138
SP_WR16	%ecx	$140
SP_STORE	%ecx
ADD16	%ecx	$142
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$144
SP_STORE	%eax
ADD16	%eax	$142
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$146
SP_RD16	%eax	$144
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$147
SP_RD8	%eax	$146
AND32	%eax	$255
LD32	%ebx	$5
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$151
CPY16	(%ecx)	%eax
SP_RD16	%eax	$153
PUSH16	%eax
SP_RD16	%eax	$149
PUSH16	%eax
SP_RD16	%eax	$144
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$163
SP_INC	$8
SP_RD8	%ecx	$155
SP_WR8	%ecx	$106
.LINE	641
SP_STORE	%ecx
ADD16	%ecx	$156
LD16	(%ecx)	$mInitAndroid
SP_RD16	%eax	$156
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
@IC58:	
@IC54:	
.LINE	645
PUSH16	hUSBHOST2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$160
SP_INC	$2
SP_RD8	%ecx	$158
CMP8	%ecx	$0
JNZ	@IC62
JUMP	@IC63
@IC63:	
.LINE	646
SP_STORE	%ecx
ADD16	%ecx	$159
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$-3
AND32	(%ecx)	%eax	%ebx
SP_RD8	device_connect_status	$159
.LINE	647
PUSH16	hUSBHOST_FT232
CALL	android_detach
SP_INC	$2
.LINE	648
PUSH8	$1
PUSH8	$2
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$165
SP_INC	$2
.LINE	650
LD16	hUSBHOST_FT232	$0
@IC62:	
.LINE	624
JUMP	@IC47
@IC48:	
@IC45:	
.LINE	578
JUMP	@IC42
@IC43:	
.LINE	655
SP_RD16	%eax	$4
PUSH8	%eax
PUSH8	$11
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$166
SP_INC	$2
.LINE	656
SP_RD8	%ecx	$4
CMP8	%ecx	$0
JNZ	@IC64
LD32	%ecx	$1
SP_WR32	%ecx	$165
JUMP	@IC65
@IC64:	
LD32	%ecx	$0
SP_WR32	%ecx	$165
@IC65:	
SP_RD8	%ecx	$165
SP_WR8	%ecx	$4
.LINE	657
PUSH16	$100
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$171
SP_INC	$2
@IC42:	
.LINE	575
JUMP	@IC39
@IC40:	
.LINE	575
SP_INC	$170
RTS	
.FUNC_END	"connect"

.LINE	670
atof:	
.GLOBAL	 DO_NOT_EXPORT  "atof"

.VARIABLE	"dataAvail"	16	"short"	0	0	0	0	0	0	674	
.VARIABLE	"actual"	16	"short"	0	0	2	0	0	0	674	
.VARIABLE	"actualw"	16	"short"	0	0	4	0	0	0	674	
.VARIABLE	"numRead"	8	"char"	1	0	6	0	0	0	676	
.VARIABLE	"blink"	8	"char"	0	0	7	0	0	0	677	
.VARIABLE	"manufacturer"	16	"char"	1	1	12	0	0	1	679	
.VARIABLE	"model"	16	"char"	1	1	18	0	0	1	682	
.VARIABLE	"description"	16	"char"	1	1	24	0	0	1	683	
.VARIABLE	"version"	16	"char"	1	1	30	0	0	1	684	
.VARIABLE	"uri"	16	"char"	1	1	36	0	0	1	685	
.VARIABLE	"serial"	16	"char"	1	1	42	0	0	1	686	
.VARIABLE	"gpio_ioca"	16	"_gpio_ioctl_cb_t"	0	0	44	0	0	0	678	
.VARIABLE	"status"	8	"char"	0	0	85	0	0	0	673	
.VARIABLE	"u8Data"	8	"char"	0	0	102	0	0	0	675	
.FUNCTION	"atof"	
.RETURN "void"	0	0	0	141	0	0	0	
SP_DEC	$138
.LINE	674
LD16	%ecx	$0
SP_WR16	%ecx	$0
LD16	%ecx	$0
SP_WR16	%ecx	$2
LD16	%ecx	$0
SP_WR16	%ecx	$4
.LINE	676
LD8	%ecx	$0
SP_WR8	%ecx	$6
.LINE	677
LD8	%ecx	$0
SP_WR8	%ecx	$7
.LINE	679
SP_STORE	%ecx
ADD16	%ecx	$8
LD32	(%ecx)	$Str@3
SP_RD16	%ecx	$8
SP_WR16	%ecx	$12
.LINE	682
SP_STORE	%ecx
ADD16	%ecx	$14
LD32	(%ecx)	$Str@4
SP_RD16	%ecx	$14
SP_WR16	%ecx	$18
.LINE	683
SP_STORE	%ecx
ADD16	%ecx	$20
LD32	(%ecx)	$Str@5
SP_RD16	%ecx	$20
SP_WR16	%ecx	$24
.LINE	684
SP_STORE	%ecx
ADD16	%ecx	$26
LD32	(%ecx)	$Str@6
SP_RD16	%ecx	$26
SP_WR16	%ecx	$30
.LINE	685
SP_STORE	%ecx
ADD16	%ecx	$32
LD32	(%ecx)	$Str@7
SP_RD16	%ecx	$32
SP_WR16	%ecx	$36
.LINE	686
SP_STORE	%ecx
ADD16	%ecx	$38
LD32	(%ecx)	$Str@8
SP_RD16	%ecx	$38
SP_WR16	%ecx	$42
.LINE	689
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$46
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$48
LD8	(%ecx)	$1
.LINE	690
SP_STORE	%ecx
ADD16	%ecx	$50
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$52
LD8	(%ecx)	$120
.LINE	692
SP_STORE	%ecx
ADD16	%ecx	$54
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_RD16	%eax	$54
PUSH16	%eax
PUSH16	hGPIO_PORT_B
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$60
SP_INC	$4
.LINE	693
PUSH8	$3
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$58
SP_INC	$1
SP_RD16	hGPIO_PORT_B	$57
.LINE	694
SP_STORE	%ecx
ADD16	%ecx	$59
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_RD16	%eax	$59
PUSH16	%eax
PUSH16	hGPIO_PORT_B
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$65
SP_INC	$4
.LINE	698
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$63
SP_INC	$1
SP_RD16	hUSBHOST1_Android	$62
@IC66:	
.LINE	699
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC68
JUMP	@IC67
@IC68:	
.LINE	701
PUSH16	hUSBHOST1_Android
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$66
SP_INC	$2
SP_RD8	%ecx	$64
CMP8	%ecx	$0
JNZ	@IC71
JUMP	@IC70
@IC71:	
.LINE	702
SP_RD16	%eax	$42
PUSH16	%eax
SP_RD16	%eax	$38
PUSH16	%eax
SP_RD16	%eax	$34
PUSH16	%eax
SP_RD16	%eax	$30
PUSH16	%eax
SP_RD16	%eax	$26
PUSH16	%eax
SP_RD16	%eax	$22
PUSH16	%eax
PUSH8	$4
PUSH16	hUSBHOST1_Android
SP_DEC	$2
CALL	android_attach
POP16	%eax
SP_WR16	%eax	$80
SP_INC	$15
SP_RD16	hANDROID_ACCESSORY	$65
.LINE	703
CMP16	hANDROID_ACCESSORY	$0
JNZ	@IC73
JUMP	@IC72
@IC73:	
.LINE	704
SP_STORE	%ecx
ADD16	%ecx	$67
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$1
OR32	(%ecx)	%eax	%ebx
SP_RD8	device_connect_status	$67
.LINE	705
PUSH8	$0
PUSH8	$1
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$73
SP_INC	$2
.LINE	706
SP_STORE	%ecx
ADD16	%ecx	$72
LD16	(%ecx)	$mInitAndroid
SP_RD16	%eax	$72
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
@IC74:	
.LINE	708
SP_STORE	%ecx
ADD16	%ecx	$74
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$74
CMP32	(%ecx)	$0
JNZ	@IC76
JUMP	@IC75
@IC76:	
.LINE	710
SP_STORE	%ecx
ADD16	%ecx	$78
LD16	(%ecx)	$gstAccPacketRead
SP_RD16	%ecx	$78
SP_WR16	%ecx	$80
SP_STORE	%ecx
ADD16	%ecx	$82
SP_STORE	%eax
ADD16	%eax	$6
CPY16	(%ecx)	%eax
SP_RD16	%eax	$82
PUSH16	%eax
PUSH16	$133
SP_RD16	%eax	$84
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$92
SP_INC	$8
SP_RD8	%ecx	$84
SP_WR8	%ecx	$85
.LINE	712
PUSH16	hUSBHOST1_Android
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$88
SP_INC	$2
SP_RD8	%ecx	$86
CMP8	%ecx	$0
JNZ	@IC79
JUMP	@IC78
@IC79:	
.LINE	713
SP_RD8	%ecx	$85
CMP8	%ecx	$0
JNZ	@IC80
JUMP	@IC81
@IC81:	
.LINE	714
SP_RD8	%ecx	$6
CMP8	%ecx	$5
JGE	@IC83
JUMP	@IC82
@IC83:	
.LINE	716
JUMP	@IC88
@IC87:	
.LINE	719
SP_STORE	%ecx
ADD16	%ecx	$87
LD16	(%ecx)	$gstAccPacketRead
SP_STORE	%ecx
ADD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$87
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$91
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$89
SP_STORE	%ebx
ADD16	%ebx	$91
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$97
SP_RD16	%eax	$95
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$98
SP_RD8	%eax	$97
AND32	%eax	$255
LD32	%ebx	$3
SHL32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$98
SP_WR8	%ecx	$102
.LINE	720
SP_STORE	%ecx
ADD16	%ecx	$103
SP_RD8	%eax	$102
AND32	%eax	$255
LD32	%ebx	$120
AND32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$103
SP_WR8	%ecx	$102
.LINE	721
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$102
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$111
PUSH16	%eax
PUSH16	hGPIO_PORT_B
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$117
SP_INC	$8
.LINE	716
JUMP	@IC86
@IC89:	
JUMP	@IC86
@IC91:	
.LINE	730
CMP16	hUSBHOST_FT232	$0
JNZ	@IC94
JZ	@IC93
@IC94:	
.LINE	731
SP_STORE	%ecx
ADD16	%ecx	$110
LD16	(%ecx)	$gstAccPacketRead
SP_STORE	%ecx
ADD16	%ecx	$112
SP_STORE	%eax
ADD16	%eax	$110
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$114
LD16	(%ecx)	$gstAccPacketRead
SP_STORE	%ecx
ADD16	%ecx	$116
SP_STORE	%eax
ADD16	%eax	$114
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$118
SP_RD16	%eax	$116
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$119
PUSH16	%eax
SP_RD8	%eax	$120
AND16	%eax	$255
PUSH16	%eax
SP_RD16	%eax	$116
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$129
SP_INC	$8
SP_RD8	%ecx	$121
SP_WR8	%ecx	$85
@IC93:	
.LINE	716
JUMP	@IC86
@IC88:	
SP_STORE	%ecx
ADD16	%ecx	$122
LD16	(%ecx)	$gstAccPacketRead
SP_STORE	%ecx
ADD16	%ecx	$124
SP_STORE	%eax
ADD16	%eax	$122
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$126
SP_RD16	%eax	$124
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$126
CMP8	%ecx	$0
JZ	@IC87
@IC90:	
SP_RD8	%ecx	$126
CMP8	%ecx	$1
JZ	@IC89
@IC92:	
SP_RD8	%ecx	$126
CMP8	%ecx	$2
JZ	@IC91
@IC86:	
@IC82:	
@IC80:	
.LINE	713
JUMP	@IC77
@IC78:	
.LINE	737
SP_STORE	%ecx
ADD16	%ecx	$127
CPY8	%eax	device_connect_status
AND32	%eax	$255
LD32	%ebx	$-2
AND32	(%ecx)	%eax	%ebx
SP_RD8	device_connect_status	$127
.LINE	738
PUSH16	hANDROID_ACCESSORY
CALL	android_detach
SP_INC	$2
.LINE	739
PUSH8	$1
PUSH8	$1
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$133
SP_INC	$2
.LINE	740
LD16	hANDROID_ACCESSORY	$0
@IC77:	
.LINE	708
JUMP	@IC74
@IC75:	
@IC72:	
.LINE	703
JUMP	@IC69
@IC70:	
.LINE	745
SP_RD16	%eax	$7
PUSH8	%eax
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$134
SP_INC	$2
.LINE	746
SP_RD8	%ecx	$7
CMP8	%ecx	$0
JNZ	@IC97
LD32	%ecx	$1
SP_WR32	%ecx	$133
JUMP	@IC98
@IC97:	
LD32	%ecx	$0
SP_WR32	%ecx	$133
@IC98:	
SP_RD8	%ecx	$133
SP_WR8	%ecx	$7
.LINE	747
PUSH16	$100
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$139
SP_INC	$2
@IC69:	
.LINE	699
JUMP	@IC66
@IC67:	
.LINE	699
SP_INC	$138
RTS	
.FUNC_END	"atof"

.LINE	856
write_sensor_data_to_file:	
.GLOBAL	 DO_NOT_EXPORT  "write_sensor_data_to_file"

.VARIABLE	"file"	16	"_file_context_t"	0	1	23	0	0	1	858	
.FUNCTION	"write_sensor_data_to_file"	
.RETURN "void"	0	0	0	37	0	0	0	
.PARAMETER	"buf"	16 "char"	0	1	37	0	0	1	856	
.PARAMETER	"len"	16 "short"	0	0	39	0	0	0	856	
SP_DEC	$34
.LINE	862
PUSH16	hUSBHOST2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$2
SP_INC	$2
SP_RD8	%ecx	$0
CMP8	%ecx	$17
JZ	@IC100
JNZ	@IC99
@IC100:	
.LINE	863
PUSH8	$8
PUSH16	hUSBHOST2
SP_DEC	$2
CALL	boms_attach
POP16	%eax
SP_WR16	%eax	$4
SP_INC	$3
SP_RD16	hBOMS	$1
.LINE	865
CMP16	hBOMS	$0
JZ	@IC104
JNZ	@IC103
@IC104:	
.LINE	866
PUSH8	$0
PUSH8	$11
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$2
.LINE	867
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$2
.LINE	868
SP_INC	$34
RTS	
@IC103:	
.LINE	871
PUSH8	$6
PUSH16	hBOMS
SP_DEC	$2
CALL	fat_attach
POP16	%eax
SP_WR16	%eax	$8
SP_INC	$3
SP_RD16	hFAT_FILE_SYSTEM	$5
.LINE	873
CMP16	hFAT_FILE_SYSTEM	$0
JZ	@IC108
JNZ	@IC107
@IC108:	
.LINE	874
PUSH8	$0
PUSH8	$11
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$9
SP_INC	$2
.LINE	875
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$2
.LINE	876
SP_INC	$34
RTS	
@IC107:	
.LINE	880
PUSH16	hFAT_FILE_SYSTEM
SP_DEC	$4
CALL	fsAttach
POP32	%eax
SP_WR32	%eax	$11
SP_INC	$2
.LINE	883
SP_STORE	%ecx
ADD16	%ecx	$13
LD32	(%ecx)	$Str@9
SP_STORE	%ecx
ADD16	%ecx	$17
LD32	(%ecx)	$Str@10
SP_RD16	%eax	$17
PUSH16	%eax
SP_RD16	%eax	$15
PUSH16	%eax
SP_DEC	$2
CALL	fopen
POP16	%eax
SP_WR16	%eax	$25
SP_INC	$4
SP_RD16	%ecx	$21
SP_WR16	%ecx	$23
.LINE	885
SP_STORE	%ecx
ADD16	%ecx	$23
CMP16	(%ecx)	$0
JZ	@IC112
JNZ	@IC111
@IC112:	
.LINE	887
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$2
.LINE	888
SP_INC	$34
RTS	
@IC111:	
.LINE	891
SP_RD16	%eax	$23
PUSH16	%eax
PUSH16	$1
SP_RD16	%eax	$43
PUSH16	%eax
SP_RD16	%eax	$43
PUSH16	%eax
SP_DEC	$2
CALL	fwrite
POP16	%eax
SP_WR16	%eax	$34
SP_INC	$8
SP_STORE	%ecx
ADD16	%ecx	$26
CMP16	(%ecx)	$65535
JZ	@IC116
JNZ	@IC115
@IC116:	
.LINE	893
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$30
SP_INC	$2
@IC115:	
.LINE	896
SP_RD16	%eax	$23
PUSH16	%eax
SP_DEC	$4
CALL	fclose
POP32	%eax
SP_WR32	%eax	$31
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$29
CMP32	(%ecx)	$-1
JZ	@IC120
JNZ	@IC119
@IC120:	
.LINE	898
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$35
SP_INC	$2
@IC119:	
.LINE	903
PUSH16	hFAT_FILE_SYSTEM
CALL	fat_detach
SP_INC	$2
.LINE	904
PUSH16	hBOMS
CALL	boms_detach
SP_INC	$2
.LINE	914
SP_INC	$34
RTS	
@IC99:	
.LINE	914
SP_INC	$34
RTS	
.FUNC_END	"write_sensor_data_to_file"

.LINE	919
write_sensor_data_to_android:	
.GLOBAL	 DO_NOT_EXPORT  "write_sensor_data_to_android"

.VARIABLE	"actualw"	16	"short"	0	0	38	0	0	0	921	
.VARIABLE	"status"	8	"char"	0	0	43	0	0	0	922	
.FUNCTION	"write_sensor_data_to_android"	
.RETURN "void"	0	0	0	49	0	0	0	
.PARAMETER	"buf"	16 "char"	0	1	49	0	0	1	919	
.PARAMETER	"len"	16 "short"	0	0	51	0	0	0	919	
SP_DEC	$46
.LINE	924
CMP16	hANDROID_ACCESSORY	$0
JNZ	@IC124
JZ	@IC123
@IC124:	
.LINE	925
SP_STORE	%ecx
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$0
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$2
LD8	(%ecx)	$13
.LINE	926
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$6
LD8	(%ecx)	$4
.LINE	927
SP_STORE	%ecx
ADD16	%ecx	$8
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$51
CPY8	(%ecx)	(%eax)
.LINE	929
SP_STORE	%ecx
ADD16	%ecx	$12
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$16
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$20
SP_RD16	%eax	$18
CPY8	(%ecx)	(%eax)
SP_RD8	%eax	$20
AND16	%eax	$255
PUSH16	%eax
SP_RD16	%eax	$51
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
SP_DEC	$2
CALL	memcpy
POP16	%eax
SP_WR16	%eax	$27
SP_INC	$6
.LINE	930
SP_STORE	%ecx
ADD16	%ecx	$23
LD16	(%ecx)	$mInitAndroid
SP_RD16	%eax	$23
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	931
SP_STORE	%ecx
ADD16	%ecx	$25
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_RD16	%ecx	$25
SP_WR16	%ecx	$27
SP_STORE	%ecx
ADD16	%ecx	$29
LD16	(%ecx)	$gstAccPacketWriteSensor
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$33
SP_RD16	%eax	$31
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$34
SP_RD8	%eax	$33
AND32	%eax	$255
LD32	%ebx	$5
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$38
CPY16	(%ecx)	%eax
SP_RD16	%eax	$40
PUSH16	%eax
SP_RD16	%eax	$36
PUSH16	%eax
SP_RD16	%eax	$31
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$50
SP_INC	$8
SP_RD8	%ecx	$42
SP_WR8	%ecx	$43
.LINE	932
SP_STORE	%ecx
ADD16	%ecx	$44
LD16	(%ecx)	$mInitAndroid
SP_RD16	%eax	$44
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
@IC123:	
.LINE	932
SP_INC	$46
RTS	
.FUNC_END	"write_sensor_data_to_android"

.LINE	940
uart_sensor:	
.GLOBAL	 DO_NOT_EXPORT  "uart_sensor"

.VARIABLE	"tx_sensor"	16	"char"	1	1	4	0	0	1	942	
.VARIABLE	"send_cmd_flag"	8	"char"	0	0	6	0	0	0	946	
.VARIABLE	"uart_iocb"	72	"_common_ioctl_cb_t"	0	0	7	0	0	0	943	
.VARIABLE	"status"	8	"char"	0	0	95	0	0	0	946	
.VARIABLE	"offset"	16	"short"	0	0	96	0	0	0	945	
.VARIABLE	"dataAvail"	16	"short"	1	0	113	0	0	0	945	
.VARIABLE	"buffer"	1024	"char"	0	0	119	1	1	0	944	
.VARIABLE	"actual"	16	"short"	0	0	251	0	0	0	945	
.FUNCTION	"uart_sensor"	
.RETURN "void"	0	0	0	323	0	0	0	
SP_DEC	$255
SP_DEC	$65
.LINE	942
SP_STORE	%ecx
LD32	(%ecx)	$Str@11
SP_RD16	%ecx	$0
SP_WR16	%ecx	$4
.LINE	946
LD8	%ecx	$0
SP_WR8	%ecx	$6
.LINE	949
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$18
LD8	(%ecx)	$4
.LINE	950
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$22
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$24
LD8	(%ecx)	$1
.LINE	951
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$26
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$32
SP_INC	$4
.LINE	954
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$31
LD8	(%ecx)	$34
.LINE	955
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$33
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$35
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$37
LD32	(%ecx)	$115200
.LINE	956
SP_STORE	%ecx
ADD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$39
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$45
SP_INC	$4
.LINE	959
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$44
LD8	(%ecx)	$35
.LINE	960
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$46
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$50
SP_STORE	%eax
ADD16	%eax	$48
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$50
LD8	(%ecx)	$0
.LINE	961
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$52
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$58
SP_INC	$4
.LINE	964
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$57
SP_STORE	%eax
ADD16	%eax	$55
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$57
LD8	(%ecx)	$36
.LINE	965
SP_STORE	%ecx
ADD16	%ecx	$59
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$59
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$61
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$63
LD8	(%ecx)	$1
.LINE	966
SP_STORE	%ecx
ADD16	%ecx	$65
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$65
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$71
SP_INC	$4
.LINE	969
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
LD8	(%ecx)	$37
.LINE	970
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_STORE	%eax
ADD16	%eax	$72
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$76
LD8	(%ecx)	$0
.LINE	971
SP_STORE	%ecx
ADD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$78
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$84
SP_INC	$4
.LINE	974
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$83
LD8	(%ecx)	$38
.LINE	975
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$87
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$89
LD8	(%ecx)	$0
.LINE	976
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$91
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$97
SP_INC	$4
@IC127:	
.LINE	978
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC129
JUMP	@IC128
@IC129:	
.LINE	986
SP_RD8	%ecx	$6
CMP8	%ecx	$0
JNZ	@IC131
JUMP	@IC132
@IC132:	
.LINE	987
PUSH16	$0
PUSH16	$16
SP_RD16	%eax	$8
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$102
SP_INC	$8
SP_RD8	%ecx	$94
SP_WR8	%ecx	$95
.LINE	988
LD8	%ecx	$1
SP_WR8	%ecx	$6
.LINE	989
LD16	%ecx	$0
SP_WR16	%ecx	$96
JUMP	@IC130
@IC131:	
.LINE	991
SP_STORE	%ecx
ADD16	%ecx	$98
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$100
SP_STORE	%eax
ADD16	%eax	$98
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$100
LD8	(%ecx)	$2
.LINE	992
SP_STORE	%ecx
ADD16	%ecx	$102
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%eax	$102
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$108
SP_INC	$4
.LINE	993
SP_STORE	%ecx
ADD16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$105
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$107
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$111
SP_RD16	%eax	$109
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$111
SP_WR16	%ecx	$113
.LINE	995
SP_STORE	%ecx
ADD16	%ecx	$113
CMP16	(%ecx)	$0
JGT	@IC134
JUMP	@IC133
@IC134:	
.LINE	996
SP_STORE	%ecx
ADD16	%ecx	$113
CMP16	(%ecx)	$128
JGT	@IC138
JUMP	@IC137
@IC138:	
.LINE	997
LD16	%ecx	$128
SP_WR16	%ecx	$113
@IC137:	
.LINE	1000
SP_STORE	%ecx
ADD16	%ecx	$115
SP_RD16	%eax	$96
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$247
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$249
SP_STORE	%eax
ADD16	%eax	$247
SP_STORE	%ebx
ADD16	%ebx	$115
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$253
SP_STORE	%eax
ADD16	%eax	$251
CPY16	(%ecx)	%eax
SP_RD16	%eax	$253
PUSH16	%eax
SP_RD16	%eax	$115
PUSH16	%eax
SP_RD16	%eax	$253
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_read
SP_STORE	%eax
ADD16	%eax	$264
POP8	(%eax)
SP_INC	$8
SP_RD8	%ecx	$255
SP_WR8	%ecx	$95
.LINE	1001
SP_STORE	%ecx
ADD16	%ecx	$256
SP_STORE	%eax
ADD16	%eax	$96
SP_STORE	%ebx
ADD16	%ebx	$251
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%eax
ADD16	%eax	$256
CPY16	%ecx	(%eax)
SP_WR16	%ecx	$96
.LINE	1003
SP_STORE	%ecx
ADD16	%ecx	$258
SP_RD16	%eax	$96
AND32	%eax	$65535
LD32	%ebx	$1
SUB32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$262
SP_STORE	%eax
ADD16	%eax	$258
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$266
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$268
SP_STORE	%eax
ADD16	%eax	$266
SP_STORE	%ebx
ADD16	%ebx	$262
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$270
SP_STORE	%eax
ADD16	%eax	$268
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$270
CMP8	(%ecx)	$13
JZ	@IC142
JNZ	@IC141
@IC142:	
.LINE	1005
SP_STORE	%ecx
ADD16	%ecx	$271
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$275
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$277
SP_STORE	%eax
ADD16	%eax	$275
SP_STORE	%ebx
ADD16	%ebx	$271
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$279
SP_STORE	%eax
ADD16	%eax	$277
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$279
CMP8	(%ecx)	$105
JZ	@IC150
JNZ	@IC145
@IC150:	
SP_STORE	%ecx
ADD16	%ecx	$280
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$284
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$286
SP_STORE	%eax
ADD16	%eax	$284
SP_STORE	%ebx
ADD16	%ebx	$280
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$288
SP_STORE	%eax
ADD16	%eax	$286
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$288
CMP8	(%ecx)	$110
JZ	@IC149
JNZ	@IC145
@IC149:	
SP_STORE	%ecx
ADD16	%ecx	$289
LD32	%eax	$2
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$293
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$295
SP_STORE	%eax
ADD16	%eax	$293
SP_STORE	%ebx
ADD16	%ebx	$289
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$297
SP_STORE	%eax
ADD16	%eax	$295
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$297
CMP8	(%ecx)	$100
JZ	@IC148
JNZ	@IC145
@IC148:	
SP_STORE	%ecx
ADD16	%ecx	$298
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$302
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$304
SP_STORE	%eax
ADD16	%eax	$302
SP_STORE	%ebx
ADD16	%ebx	$298
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$306
SP_STORE	%eax
ADD16	%eax	$304
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$306
CMP8	(%ecx)	$101
JZ	@IC147
JNZ	@IC145
@IC147:	
SP_STORE	%ecx
ADD16	%ecx	$307
LD32	%eax	$4
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$311
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$313
SP_STORE	%eax
ADD16	%eax	$311
SP_STORE	%ebx
ADD16	%ebx	$307
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$315
SP_STORE	%eax
ADD16	%eax	$313
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$315
CMP8	(%ecx)	$120
JZ	@IC146
JNZ	@IC145
@IC146:	
.LINE	1007
SP_STORE	%ecx
ADD16	%ecx	$316
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_RD16	%eax	$96
PUSH16	%eax
SP_STORE	%eax
ADD16	%eax	$318
PUSH16	(%eax)
CALL	write_sensor_data_to_android
SP_INC	$4
.LINE	1008
SP_STORE	%ecx
ADD16	%ecx	$318
SP_STORE	%eax
ADD16	%eax	$119
CPY16	(%ecx)	%eax
SP_RD16	%eax	$96
PUSH16	%eax
SP_STORE	%eax
ADD16	%eax	$320
PUSH16	(%eax)
CALL	write_sensor_data_to_file
SP_INC	$4
@IC145:	
.LINE	1010
LD16	%ecx	$0
SP_WR16	%ecx	$96
.LINE	1011
LD8	%ecx	$0
SP_WR8	%ecx	$6
@IC141:	
@IC133:	
@IC130:	
.LINE	978
JUMP	@IC127
@IC128:	
.LINE	978
SP_INC	$255
SP_INC	$65
RTS	
.FUNC_END	"uart_sensor"

