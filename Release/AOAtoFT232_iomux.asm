.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"




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

.WEAK	"vos_get_chip_revision"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"vos_enable_interrupts"

.WEAK	"vos_dev_read"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

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

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"vos_start_profiler"

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

iomux_setup:	
.GLOBAL	 DO_NOT_EXPORT  "iomux_setup"

.FUNCTION	"iomux_setup"	
SP_DEC	$14
SP_DEC	$1
CALL	vos_get_package_type
POP8	%eax
SP_WR8	%eax	$0
SP_STORE	%eax
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$1
SP_RD8	%ecx	$1
CMP8	%ecx	$0
JZ	@IC2
JNZ	@IC1
@IC2:	
PUSH8	$64
PUSH8	$0
PUSH8	$199
SP_DEC	$1
CALL	vos_iomux_define_bidi
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$3
PUSH8	$97
PUSH8	$30
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$2
PUSH8	$98
PUSH8	$31
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$2
PUSH8	$99
PUSH8	$32
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$2
@IC1:	
SP_RD8	%ecx	$1
CMP8	%ecx	$1
JZ	@IC6
JNZ	@IC5
@IC6:	
PUSH8	$64
PUSH8	$0
PUSH8	$199
SP_DEC	$1
CALL	vos_iomux_define_bidi
POP8	%eax
SP_WR8	%eax	$9
SP_INC	$3
PUSH8	$97
PUSH8	$16
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$9
SP_INC	$2
PUSH8	$98
PUSH8	$18
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$2
PUSH8	$99
PUSH8	$19
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$11
SP_INC	$2
@IC5:	
SP_RD8	%ecx	$1
CMP8	%ecx	$2
JZ	@IC10
JNZ	@IC9
@IC10:	
PUSH8	$64
PUSH8	$0
PUSH8	$199
SP_DEC	$1
CALL	vos_iomux_define_bidi
POP8	%eax
SP_WR8	%eax	$13
SP_INC	$3
PUSH8	$97
PUSH8	$52
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$13
SP_INC	$2
PUSH8	$98
PUSH8	$55
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$14
SP_INC	$2
PUSH8	$99
PUSH8	$56
SP_DEC	$1
CALL	vos_iomux_define_output
POP8	%eax
SP_WR8	%eax	$15
SP_INC	$2
@IC9:	
SP_INC	$14
RTS	
.FUNC_END	"iomux_setup"

