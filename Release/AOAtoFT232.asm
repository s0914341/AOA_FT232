.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
ft232Baud	.DD	1	9600
.GLOBAL	  DO_NOT_EXPORT "ft232Baud"
ft232Data	.DB	1	1
.GLOBAL	  DO_NOT_EXPORT "ft232Data"
ft232Stop	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Stop"
ft232Parity	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Parity"
ft232Flow	.DB	1	0
.GLOBAL	  DO_NOT_EXPORT "ft232Flow"
hUSBHOST_FT232	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_FT232"
hANDROID_ACCESSORY	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hANDROID_ACCESSORY"
mInitA	.DB	6	?
.GLOBAL	  DO_NOT_EXPORT "mInitA"
mInitF	.DB	6	?
.GLOBAL	  DO_NOT_EXPORT "mInitF"
rAOAw232	.DB	64	?
.GLOBAL	  DO_NOT_EXPORT "rAOAw232"
r232wAOA	.DB	64	?
.GLOBAL	  DO_NOT_EXPORT "r232wAOA"
tcbFTOA	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbFTOA"
tcbATOF	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbATOF"
hUSBHOST_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_1"
hUSBHOST_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_2"
tcbCONNECT	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbCONNECT"
hGPIO_PORT_A	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_A"
Str@0	.ASCIIZ	"atof"
Str@1	.ASCIIZ	"ftoa"
Str@2	.ASCIIZ	"connect"
Str@3	.ASCIIZ	"FTDI\0"
Str@4	.ASCIIZ	"FTDIUARTDemo\0"
Str@5	.ASCIIZ	"Vinculum Accessory Test\0"
Str@6	.ASCIIZ	"1.0\0"
Str@7	.ASCIIZ	"http://www.ftdichip.com\0"
Str@8	.ASCIIZ	"VinculumAccessory1\0"
Str@9	.ASCIIZ	"\n\rSend Config through Settings button first\r\n"
Str@10	.ASCIIZ	"\n\rFT232 is UNPLUGGED - Halting VNC2!\n\r"




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

.WEAK	"vos_signal_semaphore"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"iomux_setup"

.WEAK	"vos_get_chip_revision"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"vos_enable_interrupts"

.WEAK	"vos_dev_read"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"usbhost_init"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"vos_iomux_define_input"

.WEAK	"vos_disable_interrupts"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"vos_get_clock_frequency"

.WEAK	"vos_set_clock_frequency"

.WEAK	"vos_dma_enable"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"vos_dma_disable"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"vos_dma_acquire"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"vos_get_profile"

.WEAK	"usbHostFt232_init"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"vos_delay_cancel"

.WEAK	"vos_dma_retained_configure"

.WEAK	"vos_unlock_mutex"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"vos_gpio_read_pin"

.WEAK	"vos_dma_configure"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"vos_stop_profiler"

.WEAK	"vos_trylock_mutex"

.WEAK	"vos_free"

.WEAK	"usbHostAndroidAccessory_init"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"vos_start_profiler"

.WEAK	"gpio_init"

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

main:	
.GLOBAL	 DO_NOT_EXPORT  "main"

.FUNCTION	"main"	
SP_DEC	$67
PUSH8	$5
PUSH16	$1
PUSH8	$50
CALL	vos_init
SP_INC	$4
PUSH8	$0
CALL	vos_set_clock_frequency
SP_INC	$1
PUSH16	$512
CALL	vos_set_idle_thread_tcb_size
SP_INC	$2
CALL	iomux_setup
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
LD8	(%ecx)	$0
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$5
PUSH16	%eax
PUSH8	$2
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$3
PUSH8	$3
SP_DEC	$1
CALL	usbHostAndroidAccessory_init
POP8	%eax
SP_WR8	%eax	$9
SP_INC	$1
PUSH8	$4
SP_DEC	$1
CALL	usbHostFt232_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$14
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$16
LD8	(%ecx)	$8
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$18
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$20
LD8	(%ecx)	$16
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$22
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$24
LD8	(%ecx)	$2
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD8	(%ecx)	$2
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	%eax
SP_RD16	%eax	$30
PUSH16	%eax
PUSH8	$1
PUSH8	$0
SP_DEC	$1
CALL	usbhost_init
POP8	%eax
SP_WR8	%eax	$36
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$33
LD32	(%ecx)	$atof
SP_STORE	%ecx
ADD16	%ecx	$37
LD32	(%ecx)	$Str@0
PUSH16	$0
SP_RD16	%eax	$39
PUSH16	%eax
SP_RD32	%eax	$37
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$52
SP_INC	$11
SP_RD16	tcbATOF	$41
SP_STORE	%ecx
ADD16	%ecx	$43
LD32	(%ecx)	$ftoa
SP_STORE	%ecx
ADD16	%ecx	$47
LD32	(%ecx)	$Str@1
PUSH16	$0
SP_RD16	%eax	$49
PUSH16	%eax
SP_RD32	%eax	$47
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$62
SP_INC	$11
SP_RD16	tcbFTOA	$51
SP_STORE	%ecx
ADD16	%ecx	$53
LD32	(%ecx)	$connect
SP_STORE	%ecx
ADD16	%ecx	$57
LD32	(%ecx)	$Str@2
PUSH16	$0
SP_RD16	%eax	$59
PUSH16	%eax
SP_RD32	%eax	$57
PUSH32	%eax
PUSH16	$2048
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$72
SP_INC	$11
SP_RD16	tcbCONNECT	$61
SP_STORE	%ecx
ADD16	%ecx	$63
LD16	(%ecx)	$mInitA
PUSH8	$1
SP_RD16	%eax	$64
PUSH16	%eax
CALL	vos_init_mutex
SP_INC	$3
SP_STORE	%ecx
ADD16	%ecx	$65
LD16	(%ecx)	$mInitF
PUSH8	$1
SP_RD16	%eax	$66
PUSH16	%eax
CALL	vos_init_mutex
SP_INC	$3
CALL	vos_start_scheduler
@fl1main_loop:	
JUMP	@fl1main_loop
SP_INC	$67
RTS	
.FUNC_END	"main"

usbhost_connect_state:	
.GLOBAL	 DO_NOT_EXPORT  "usbhost_connect_state"

.FUNCTION	"usbhost_connect_state"	
SP_DEC	$27
LD8	%ecx	$0
SP_WR8	%ecx	$0
SP_STORE	%ecx
ADD16	%ecx	$31
CMP16	(%ecx)	$0
JNZ	@IC2
JUMP	@IC1
@IC2:	
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
SP_RD8	%ecx	$0
CMP8	%ecx	$1
JZ	@IC4
JNZ	@IC3
@IC4:	
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
@IC3:	
@IC1:	
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
CPY8	(%ecx)	(%eax)
SP_INC	$27
RTS	
.FUNC_END	"usbhost_connect_state"

android_attach:	
.GLOBAL	 DO_NOT_EXPORT  "android_attach"

.FUNCTION	"android_attach"	
SP_DEC	$73
LD8	%ecx	$0
SP_WR8	%ecx	$0
LD16	%ecx	$0
SP_WR16	%ecx	$1
SP_RD16	%eax	$80
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$4
SP_INC	$1
SP_RD16	%ecx	$3
SP_WR16	%ecx	$5
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$21
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$78
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$25
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$81
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$83
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$33
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$85
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$37
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$41
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$89
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$45
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$45
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$60
LD8	(%ecx)	$1
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$62
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$7
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$68
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	%eax
SP_RD16	%eax	$70
PUSH16	%eax
SP_RD16	%eax	$7
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$76
SP_INC	$4
SP_RD8	%ecx	$72
CMP8	%ecx	$0
JNZ	@IC8
JZ	@IC7
@IC8:	
SP_RD16	%eax	$5
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
LD16	%ecx	$0
SP_WR16	%ecx	$5
@IC7:	
SP_RD16	%eax	$5
SP_WR16	%eax	$76
SP_INC	$73
RTS	
.FUNC_END	"android_attach"

android_detach:	
.GLOBAL	 DO_NOT_EXPORT  "android_detach"

.FUNCTION	"android_detach"	
SP_DEC	$16
SP_STORE	%ecx
ADD16	%ecx	$19
CMP16	(%ecx)	$0
JNZ	@IC12
JUMP	@IC11
@IC12:	
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
SP_RD16	%eax	$19
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC11:	
SP_INC	$16
RTS	
.FUNC_END	"android_detach"

ft232_host_attach:	
.GLOBAL	 DO_NOT_EXPORT  "ft232_host_attach"

.FUNCTION	"ft232_host_attach"	
SP_DEC	$172
LD32	%ecx	$0
SP_WR32	%ecx	$0
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
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_RD16	%eax	$48
PUSH16	%eax
SP_RD16	%eax	$179
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$54
SP_INC	$4
SP_RD8	%ecx	$50
CMP8	%ecx	$0
JNZ	@IC14
JZ	@IC13
@IC14:	
LD16	%eax	$0
SP_WR16	%eax	$175
SP_INC	$172
RTS	
@IC13:	
SP_RD16	%eax	$179
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$52
SP_INC	$1
SP_RD16	%ecx	$51
SP_WR16	%ecx	$53
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
ADD16	%eax	$177
CPY16	(%ecx)	(%eax)
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
ADD16	%eax	$180
CPY8	(%ecx)	(%eax)
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
JNZ	@IC18
JZ	@IC17
@IC18:	
SP_RD16	%eax	$53
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
LD16	%ecx	$0
SP_WR16	%ecx	$53
@IC17:	
SP_STORE	%ecx
ADD16	%ecx	$100
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$102
SP_STORE	%eax
ADD16	%eax	$100
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$102
LD8	(%ecx)	$34
SP_STORE	%ecx
ADD16	%ecx	$104
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$106
SP_STORE	%eax
ADD16	%eax	$104
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$108
SP_STORE	%eax
ADD16	%eax	$106
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$108
CPY32	(%ecx)	ft232Baud
SP_STORE	%ecx
ADD16	%ecx	$110
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$110
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$116
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$113
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$113
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$115
LD8	(%ecx)	$35
SP_STORE	%ecx
ADD16	%ecx	$117
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$117
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$119
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$121
CPY8	(%ecx)	ft232Flow
SP_STORE	%ecx
ADD16	%ecx	$123
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$123
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$129
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$126
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$128
SP_STORE	%eax
ADD16	%eax	$126
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$128
LD8	(%ecx)	$36
SP_STORE	%ecx
ADD16	%ecx	$130
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$132
SP_STORE	%eax
ADD16	%eax	$130
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$132
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$134
CPY8	(%ecx)	ft232Data
SP_STORE	%ecx
ADD16	%ecx	$136
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$136
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$142
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$139
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$141
SP_STORE	%eax
ADD16	%eax	$139
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$141
LD8	(%ecx)	$37
SP_STORE	%ecx
ADD16	%ecx	$143
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$145
SP_STORE	%eax
ADD16	%eax	$143
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$147
SP_STORE	%eax
ADD16	%eax	$145
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$147
CPY8	(%ecx)	ft232Data
SP_STORE	%ecx
ADD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$149
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$155
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$152
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$154
SP_STORE	%eax
ADD16	%eax	$152
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$154
LD8	(%ecx)	$38
SP_STORE	%ecx
ADD16	%ecx	$156
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$158
SP_STORE	%eax
ADD16	%eax	$156
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$158
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$160
CPY8	(%ecx)	ft232Parity
SP_STORE	%ecx
ADD16	%ecx	$162
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$162
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$168
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$165
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$167
SP_STORE	%eax
ADD16	%eax	$165
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$167
LD8	(%ecx)	$169
SP_STORE	%ecx
ADD16	%ecx	$169
SP_STORE	%eax
ADD16	%eax	$74
CPY16	(%ecx)	%eax
SP_RD16	%eax	$169
PUSH16	%eax
SP_RD16	%eax	$55
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$175
SP_INC	$4
SP_RD16	%eax	$53
SP_WR16	%eax	$175
SP_INC	$172
RTS	
.FUNC_END	"ft232_host_attach"

ft232_host_detach:	
.GLOBAL	 DO_NOT_EXPORT  "ft232_host_detach"

.FUNCTION	"ft232_host_detach"	
SP_DEC	$16
SP_STORE	%ecx
ADD16	%ecx	$19
CMP16	(%ecx)	$0
JNZ	@IC22
JUMP	@IC21
@IC22:	
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
SP_RD16	%eax	$19
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC21:	
SP_INC	$16
RTS	
.FUNC_END	"ft232_host_detach"

connect:	
.GLOBAL	 DO_NOT_EXPORT  "connect"

.FUNCTION	"connect"	
SP_DEC	$209
LD8	%ecx	$0
SP_WR8	%ecx	$0
LD16	%ecx	$0
SP_WR16	%ecx	$1
LD16	%ecx	$0
SP_WR16	%ecx	$3
SP_STORE	%ecx
ADD16	%ecx	$5
LD32	(%ecx)	$Str@3
SP_RD16	%ecx	$5
SP_WR16	%ecx	$9
SP_STORE	%ecx
ADD16	%ecx	$11
LD32	(%ecx)	$Str@4
SP_RD16	%ecx	$11
SP_WR16	%ecx	$15
SP_STORE	%ecx
ADD16	%ecx	$17
LD32	(%ecx)	$Str@5
SP_RD16	%ecx	$17
SP_WR16	%ecx	$21
SP_STORE	%ecx
ADD16	%ecx	$23
LD32	(%ecx)	$Str@6
SP_RD16	%ecx	$23
SP_WR16	%ecx	$27
SP_STORE	%ecx
ADD16	%ecx	$29
LD32	(%ecx)	$Str@7
SP_RD16	%ecx	$29
SP_WR16	%ecx	$33
SP_STORE	%ecx
ADD16	%ecx	$35
LD32	(%ecx)	$Str@8
SP_RD16	%ecx	$35
SP_WR16	%ecx	$39
PUSH8	$2
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$42
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$41
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$45
SP_INC	$2
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$46
SP_INC	$2
PUSH8	$0
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$47
SP_INC	$2
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$47
SP_INC	$1
SP_RD16	hUSBHOST_1	$46
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$49
SP_INC	$1
SP_RD16	hUSBHOST_2	$48
PUSH16	$100
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$52
SP_INC	$2
@IC23:	
PUSH16	hUSBHOST_1
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$53
SP_INC	$2
SP_RD8	%ecx	$51
CMP8	%ecx	$0
JNZ	@IC26
JUMP	@IC25
@IC26:	
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$54
SP_INC	$2
SP_RD8	%ecx	$52
CMP8	%ecx	$0
JNZ	@IC24
JUMP	@IC25
@IC25:	
SP_RD16	%eax	$0
PUSH8	%eax
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$55
SP_INC	$2
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC27
LD32	%ecx	$1
SP_WR32	%ecx	$54
JUMP	@IC28
@IC27:	
LD32	%ecx	$0
SP_WR32	%ecx	$54
@IC28:	
SP_RD8	%ecx	$54
SP_WR8	%ecx	$0
PUSH16	$100
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$60
SP_INC	$2
JUMP	@IC23
@IC24:	
SP_RD16	%eax	$39
PUSH16	%eax
SP_RD16	%eax	$35
PUSH16	%eax
SP_RD16	%eax	$31
PUSH16	%eax
SP_RD16	%eax	$27
PUSH16	%eax
SP_RD16	%eax	$23
PUSH16	%eax
SP_RD16	%eax	$19
PUSH16	%eax
PUSH8	$3
PUSH16	hUSBHOST_1
SP_DEC	$2
CALL	android_attach
POP16	%eax
SP_WR16	%eax	$74
SP_INC	$15
SP_RD16	hANDROID_ACCESSORY	$59
CMP16	hANDROID_ACCESSORY	$0
JNZ	@IC30
JUMP	@IC29
@IC30:	
PUSH8	$0
PUSH8	$1
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$63
SP_INC	$2
@IC29:	
PUSH8	$0
PUSH8	$4
PUSH16	hUSBHOST_2
SP_DEC	$2
CALL	ft232_host_attach
POP16	%eax
SP_WR16	%eax	$66
SP_INC	$4
SP_RD16	hUSBHOST_FT232	$62
CMP16	hUSBHOST_FT232	$0
JNZ	@IC32
JUMP	@IC31
@IC32:	
PUSH8	$0
PUSH8	$2
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$66
SP_INC	$2
@IC31:	
PUSH8	$1
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$67
SP_INC	$2
PUSH16	$500
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$68
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$67
LD32	(%ecx)	$Str@9
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$71
CPY16	(%ecx)	%eax
SP_RD16	%eax	$73
PUSH16	%eax
PUSH16	$45
SP_RD16	%eax	$71
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$83
SP_INC	$8
SP_RD8	%ecx	$75
SP_WR8	%ecx	$76
@IC33:	
SP_RD8	%ecx	$76
CMP8	%ecx	$0
JNZ	@IC35
JUMP	@IC34
@IC35:	
SP_RD16	%eax	$0
PUSH8	%eax
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$79
SP_INC	$2
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC36
LD32	%ecx	$1
SP_WR32	%ecx	$78
JUMP	@IC37
@IC36:	
LD32	%ecx	$0
SP_WR32	%ecx	$78
@IC37:	
SP_RD8	%ecx	$78
SP_WR8	%ecx	$0
PUSH16	$50
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$84
SP_INC	$2
JUMP	@IC33
@IC34:	
SP_STORE	%ecx
ADD16	%ecx	$83
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$71
CPY16	(%ecx)	%eax
SP_RD16	%eax	$85
PUSH16	%eax
PUSH16	$64
SP_RD16	%eax	$87
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$95
SP_INC	$8
SP_RD8	%ecx	$87
SP_WR8	%ecx	$76
SP_STORE	%ecx
ADD16	%ecx	$88
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$92
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$94
SP_STORE	%eax
ADD16	%eax	$92
SP_STORE	%ebx
ADD16	%ebx	$88
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$96
SP_RD16	%eax	$94
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$97
SP_RD8	%eax	$96
AND32	%eax	$255
LD32	%ebx	$24
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$101
LD32	%eax	$2
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$105
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$105
SP_STORE	%ebx
ADD16	%ebx	$101
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$109
SP_RD16	%eax	$107
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$110
SP_RD8	%eax	$109
AND32	%eax	$255
LD32	%ebx	$16
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$114
SP_STORE	%eax
ADD16	%eax	$97
SP_STORE	%ebx
ADD16	%ebx	$110
OR32	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$118
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$122
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$124
SP_STORE	%eax
ADD16	%eax	$122
SP_STORE	%ebx
ADD16	%ebx	$118
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$126
SP_RD16	%eax	$124
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$127
SP_RD8	%eax	$126
AND32	%eax	$255
LD32	%ebx	$8
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$114
SP_STORE	%ebx
ADD16	%ebx	$127
OR32	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$135
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$139
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$141
SP_STORE	%eax
ADD16	%eax	$139
SP_STORE	%ebx
ADD16	%ebx	$135
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$143
SP_RD16	%eax	$141
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$144
SP_STORE	%eax
ADD16	%eax	$131
SP_RD8	%ebx	$143
AND32	%ebx	$255
OR32	(%ecx)	(%eax)	%ebx
SP_RD32	ft232Baud	$144
SP_STORE	%ecx
ADD16	%ecx	$148
LD32	%eax	$4
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$152
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$154
SP_STORE	%eax
ADD16	%eax	$152
SP_STORE	%ebx
ADD16	%ebx	$148
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$156
SP_RD16	%eax	$154
CPY8	(%ecx)	(%eax)
SP_RD8	ft232Data	$156
SP_STORE	%ecx
ADD16	%ecx	$157
LD32	%eax	$5
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$161
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$163
SP_STORE	%eax
ADD16	%eax	$161
SP_STORE	%ebx
ADD16	%ebx	$157
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$165
SP_RD16	%eax	$163
CPY8	(%ecx)	(%eax)
SP_RD8	ft232Stop	$165
SP_STORE	%ecx
ADD16	%ecx	$166
LD32	%eax	$6
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$170
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$170
SP_STORE	%ebx
ADD16	%ebx	$166
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$174
SP_RD16	%eax	$172
CPY8	(%ecx)	(%eax)
SP_RD8	ft232Parity	$174
SP_STORE	%ecx
ADD16	%ecx	$175
LD32	%eax	$7
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$179
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$181
SP_STORE	%eax
ADD16	%eax	$179
SP_STORE	%ebx
ADD16	%ebx	$175
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$183
SP_RD16	%eax	$181
CPY8	(%ecx)	(%eax)
SP_RD8	ft232Flow	$183
PUSH16	hUSBHOST_FT232
CALL	ft232_host_detach
SP_INC	$2
PUSH8	$0
PUSH8	$4
PUSH16	hUSBHOST_2
SP_DEC	$2
CALL	ft232_host_attach
POP16	%eax
SP_WR16	%eax	$188
SP_INC	$4
SP_RD16	hUSBHOST_FT232	$184
SP_STORE	%ecx
ADD16	%ecx	$186
LD16	(%ecx)	$mInitA
SP_RD16	%eax	$186
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$188
LD16	(%ecx)	$mInitF
SP_RD16	%eax	$188
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
@IC38:	
PUSH16	hUSBHOST_1
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$192
SP_INC	$2
SP_RD8	%ecx	$190
CMP8	%ecx	$0
JNZ	@IC41
JUMP	@IC39
@IC41:	
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$193
SP_INC	$2
SP_RD8	%ecx	$191
CMP8	%ecx	$0
JNZ	@IC40
JUMP	@IC39
@IC40:	
PUSH16	$500
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$194
SP_INC	$2
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC42
LD32	%ecx	$1
SP_WR32	%ecx	$193
JUMP	@IC43
@IC42:	
LD32	%ecx	$0
SP_WR32	%ecx	$193
@IC43:	
SP_RD8	%ecx	$193
SP_WR8	%ecx	$0
SP_RD16	%eax	$0
PUSH8	%eax
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$199
SP_INC	$2
JUMP	@IC38
@IC39:	
PUSH16	hUSBHOST_1
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$200
SP_INC	$2
SP_RD8	%ecx	$198
CMP8	%ecx	$0
JNZ	@IC45
JUMP	@IC44
@IC45:	
SP_STORE	%ecx
ADD16	%ecx	$199
LD32	(%ecx)	$Str@10
SP_STORE	%ecx
ADD16	%ecx	$203
SP_STORE	%eax
ADD16	%eax	$71
CPY16	(%ecx)	%eax
SP_RD16	%eax	$203
PUSH16	%eax
PUSH16	$38
SP_RD16	%eax	$203
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$213
SP_INC	$8
@IC44:	
PUSH16	hANDROID_ACCESSORY
CALL	android_detach
SP_INC	$2
PUSH16	hUSBHOST_FT232
CALL	ft232_host_detach
SP_INC	$2
PUSH8	$1
PUSH8	$1
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$208
SP_INC	$2
PUSH8	$1
PUSH8	$2
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$209
SP_INC	$2
PUSH16	hUSBHOST_1
CALL	vos_dev_close
SP_INC	$2
PUSH16	hUSBHOST_2
CALL	vos_dev_close
SP_INC	$2
LD16	hUSBHOST_1	$0
LD16	hANDROID_ACCESSORY	$0
LD16	hUSBHOST_2	$0
LD16	hUSBHOST_FT232	$0
PUSH8	$0
PUSH8	$3
SP_DEC	$1
CALL	vos_gpio_write_pin
POP8	%eax
SP_WR8	%eax	$210
SP_INC	$2
CALL	vos_halt_cpu
SP_INC	$209
RTS	
.FUNC_END	"connect"

atof:	
.GLOBAL	 DO_NOT_EXPORT  "atof"

.FUNCTION	"atof"	
SP_DEC	$21
LD16	%ecx	$0
SP_WR16	%ecx	$0
LD16	%ecx	$0
SP_WR16	%ecx	$2
LD16	%ecx	$0
SP_WR16	%ecx	$4
@IC46:	
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC48
JUMP	@IC47
@IC48:	
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$mInitA
SP_RD16	%eax	$6
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$8
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_RD16	%eax	$10
PUSH16	%eax
PUSH16	$64
SP_RD16	%eax	$12
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$20
SP_INC	$8
SP_RD8	%ecx	$12
SP_WR8	%ecx	$13
SP_STORE	%ecx
ADD16	%ecx	$14
LD16	(%ecx)	$rAOAw232
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$16
PUSH16	%eax
SP_RD16	%eax	$4
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$26
SP_INC	$8
SP_RD8	%ecx	$18
SP_WR8	%ecx	$13
SP_STORE	%ecx
ADD16	%ecx	$19
LD16	(%ecx)	$mInitA
SP_RD16	%eax	$19
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
JUMP	@IC46
@IC47:	
SP_INC	$21
RTS	
.FUNC_END	"atof"

ftoa:	
.GLOBAL	 DO_NOT_EXPORT  "ftoa"

.FUNCTION	"ftoa"	
SP_DEC	$45
LD16	%ecx	$0
SP_WR16	%ecx	$0
LD16	%ecx	$0
SP_WR16	%ecx	$2
LD16	%ecx	$0
SP_WR16	%ecx	$4
@IC49:	
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC51
JUMP	@IC50
@IC51:	
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$mInitF
SP_RD16	%eax	$6
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$19
LD8	(%ecx)	$2
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_RD16	%eax	$21
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
SP_RD8	%ecx	$23
SP_WR8	%ecx	$24
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$25
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$27
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$31
SP_RD16	%eax	$29
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$31
SP_WR16	%ecx	$0
SP_STORE	%ecx
CMP16	(%ecx)	$64
JGT	@IC53
JUMP	@IC52
@IC53:	
LD16	%ecx	$64
SP_WR16	%ecx	$0
@IC52:	
SP_STORE	%ecx
CMP16	(%ecx)	$0
JGT	@IC57
JUMP	@IC56
@IC57:	
SP_STORE	%ecx
ADD16	%ecx	$33
LD16	(%ecx)	$r232wAOA
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_RD16	%eax	$35
PUSH16	%eax
SP_RD16	%eax	$2
PUSH16	%eax
SP_RD16	%eax	$37
PUSH16	%eax
PUSH16	hUSBHOST_FT232
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$45
SP_INC	$8
SP_RD8	%ecx	$37
SP_WR8	%ecx	$24
SP_STORE	%ecx
ADD16	%ecx	$38
LD16	(%ecx)	$r232wAOA
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$40
PUSH16	%eax
SP_RD16	%eax	$4
PUSH16	%eax
SP_RD16	%eax	$42
PUSH16	%eax
PUSH16	hANDROID_ACCESSORY
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$50
SP_INC	$8
SP_RD8	%ecx	$42
SP_WR8	%ecx	$24
@IC56:	
SP_STORE	%ecx
ADD16	%ecx	$43
LD16	(%ecx)	$mInitF
SP_RD16	%eax	$43
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
JUMP	@IC49
@IC50:	
SP_INC	$45
RTS	
.FUNC_END	"ftoa"

