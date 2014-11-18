/*
** Filename: AOAtoFT232_iomux.c
**
** Automatically created by Application Wizard 2.0.0
** 
** Part of solution AOAtoFT232 in project AOAtoFT232
**
** Comments: 
**
** THIS SOFTWARE IS PROVIDED BY FUTURE TECHNOLOGY DEVICES INTERNATIONAL LIMITED
** ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
** TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
** PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL FUTURE TECHNOLOGY DEVICES
** INTERNATIONAL LIMITED BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
** EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
** OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
** INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
** STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
** OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
** DAMAGE.
*/


#include "vos.h"

void iomux_setup(void)
{
	unsigned char packageType;
	
	packageType = vos_get_package_type();
	if (packageType == VINCULUM_II_32_PIN)
	{
		// Debugger to pin 11 as Bi-Directional.
		vos_iomux_define_bidi(199, IOMUX_IN_DEBUGGER, IOMUX_OUT_DEBUGGER);
		// GPIO_Port_A_1 to pin 30 as Output.
		vos_iomux_define_output(30, IOMUX_OUT_GPIO_PORT_A_1);
		// GPIO_Port_A_2 to pin 31 as Output.
		vos_iomux_define_output(31, IOMUX_OUT_GPIO_PORT_A_2);
		// GPIO_Port_A_3 to pin 32 as Output.
		vos_iomux_define_output(32, IOMUX_OUT_GPIO_PORT_A_3);
	}

	if (packageType == VINCULUM_II_48_PIN)
	{
		// Debugger to pin 11 as Bi-Directional.
		vos_iomux_define_bidi(199, IOMUX_IN_DEBUGGER, IOMUX_OUT_DEBUGGER);
		// GPIO_Port_A_1 to pin 16 as Output.
		vos_iomux_define_output(16, IOMUX_OUT_GPIO_PORT_A_1);
		// GPIO_Port_A_2 to pin 18 as Output.
		vos_iomux_define_output(18, IOMUX_OUT_GPIO_PORT_A_2);
		// GPIO_Port_A_3 to pin 19 as Output.
		vos_iomux_define_output(19, IOMUX_OUT_GPIO_PORT_A_3);
	}

	if (packageType == VINCULUM_II_64_PIN)
	{
		// Debugger to pin 11 as Bi-Directional.
		vos_iomux_define_bidi(199, IOMUX_IN_DEBUGGER, IOMUX_OUT_DEBUGGER);
		// GPIO_Port_A_1 to pin 52 as Output.
		vos_iomux_define_output(52, IOMUX_OUT_GPIO_PORT_A_1);
		// GPIO_Port_A_2 to pin 55 as Output.
		vos_iomux_define_output(55, IOMUX_OUT_GPIO_PORT_A_2);
		// GPIO_Port_A_3 to pin 56 as Output.
		vos_iomux_define_output(56, IOMUX_OUT_GPIO_PORT_A_3);
		// GPIO_Port_A_4 to pin 56 as Output.
		vos_iomux_define_output(64, IOMUX_OUT_GPIO_PORT_B_3);
		vos_iocell_set_config(64,VOS_IOCELL_DRIVE_CURRENT_4MA,VOS_IOCELL_TRIGGER_NORMAL,
								VOS_IOCELL_SLEW_RATE_FAST, VOS_IOCELL_PULL_NONE);
		
		// PWM_0 to pin 61 as Output.
		//vos_iomux_define_output(56, IOMUX_OUT_GPIO_PORT_B_3);
		//vos_iocell_set_config(56,VOS_IOCELL_DRIVE_CURRENT_4MA,VOS_IOCELL_TRIGGER_NORMAL,
		//						VOS_IOCELL_SLEW_RATE_FAST, VOS_IOCELL_PULL_NONE);
		// GPIO_Port_A_5 to pin 62 as Output.
		vos_iomux_define_output(61, IOMUX_OUT_GPIO_PORT_B_4);
		vos_iocell_set_config(61,VOS_IOCELL_DRIVE_CURRENT_4MA,VOS_IOCELL_TRIGGER_NORMAL,
								VOS_IOCELL_SLEW_RATE_FAST, VOS_IOCELL_PULL_NONE);
		// GPIO_Port_A_6 to pin 63 as Output.
		vos_iomux_define_output(62, IOMUX_OUT_GPIO_PORT_B_5);
		vos_iocell_set_config(62,VOS_IOCELL_DRIVE_CURRENT_4MA,VOS_IOCELL_TRIGGER_NORMAL,
								VOS_IOCELL_SLEW_RATE_FAST, VOS_IOCELL_PULL_NONE);
		// GPIO_Port_A_7 to pin 64 as Output.
		vos_iomux_define_output(63, IOMUX_OUT_GPIO_PORT_B_6);
		vos_iocell_set_config(63,VOS_IOCELL_DRIVE_CURRENT_4MA,VOS_IOCELL_TRIGGER_NORMAL,
								VOS_IOCELL_SLEW_RATE_FAST, VOS_IOCELL_PULL_NONE);
								
								
		// UART_TXD to pin 39 as Output.
		vos_iomux_define_output(39, IOMUX_OUT_UART_TXD);
		// UART_RXD to pin 40 as Input.
		vos_iomux_define_input(40, IOMUX_IN_UART_RXD);
	}
}
