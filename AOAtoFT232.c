/*
** Filename: AOAtoFT232.c
**
** Automatically created by Application Wizard 2.0.0
** 
** Part of solution AOAtoFT232 in project AOAtoFT232
**
** Comments: 
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

#include "AOAtoFT232.h"


#define DATA_TYPE_KEYPAD	        0
#define DATA_TYPE_SLIDER	        1
#define DATA_TYPE_SHAKER_COMMAND	2
#define DATA_TYPE_SHAKER_RETURN	    3
#define DATA_TYPE_SENSOR_DATA	    4

vos_tcb_t *tcbATOF;
vos_tcb_t *tcbCONNECT;
vos_tcb_t *tcbUART_SENSOR;
vos_tcb_t *tcbTICK;

void tick();
void atof();							// Thread to copy data from Android device to FT232
void uart_sensor();							// Thread to copy data from FT232 do Android device
void connect();							// Thread to establish and tear-down USB connections

VOS_HANDLE hUSBHOST1_Android; 					// USB Host Port 1 - connect to Android device
VOS_HANDLE hUSBHOST2; 					// USB Host Port 2 - connect to FT232
VOS_HANDLE hGPIO_PORT_A; 				// GPIO Port A Driver - Used for LEDs
VOS_HANDLE hANDROID_ACCESSORY = NULL; 			// Android Open Accessory Class Driver
VOS_HANDLE hUSBHOST_FT232 = NULL; 				// Connects to FT232 devices using the USB Host Interface
VOS_HANDLE hGPIO_PORT_B; 				// GPIO Port A Driver - Used for LEDs

VOS_HANDLE hFAT_FILE_SYSTEM;           // FAT File System for FAT32 and FAT16
VOS_HANDLE hBOMS;                      // Bulk Only Mass Storage for USB disks
VOS_HANDLE hUART;                      // UART Interface Driver

vos_mutex_t mInitAndroid;						// Mutex to halt AOA activity until setup is complete
vos_mutex_t mInitF;						// Mutex to halt FT232 activity until setup is complete

/* Default settings for UART interface */
#define DEF_UART_BAUD		UART_BAUD_115200
#define DEF_UART_DATA_BITS	UART_DATA_BITS_8
#define DEF_UART_FLOW		UART_FLOW_NONE
#define DEF_UART_STOP_BITS	UART_STOP_BITS_1
#define DEF_UART_PARITY		UART_PARITY_NONE

/* Default settings for FT232 interface */
#define DEF_FT232_BAUD		USBHOSTFT232_BAUD_38400
#define DEF_FT232_DATA_BITS	USBHOSTFT232_DATA_BITS_8
#define DEF_FT232_FLOW		USBHOSTFT232_FLOW_NONE
#define DEF_FT232_STOP_BITS	USBHOSTFT232_STOP_BITS_1
#define DEF_FT232_PARITY	USBHOSTFT232_PARITY_NONE

unsigned int  ft232Baud = USBHOSTFT232_BAUD_38400;		// Set up default FT232 UART parameters
unsigned char ft232Data = USBHOSTFT232_DATA_BITS_8;
unsigned char ft232Stop = USBHOSTFT232_STOP_BITS_1;
unsigned char ft232Parity = USBHOSTFT232_PARITY_NONE;
unsigned char ft232Flow = USBHOSTFT232_FLOW_NONE;
unsigned char device_connect_status = 0;

unsigned char delay_count = 0;

/*accessory packet*/
android_accessory_packet gstAccPacketWriteSensor;
android_accessory_packet gstAccPacketWrite;
android_accessory_packet gstAccPacketRead;
/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
	// GPIO Port B configuration context
	gpio_context_t gpioContextB;
	// USB Host configuration context
	usbhost_context_t usbhostContext;
	// UART Driver configuration context
	uart_context_t uartContext;
	tmr_context_t tmrCtx;

	/* FTDI:EDD */

	/* FTDI:SKI Kernel Initialisation */
	vos_init(50, VOS_TICK_INTERVAL, VOS_NUMBER_DEVICES);
	vos_set_clock_frequency(VOS_48MHZ_CLOCK_FREQUENCY);
	vos_set_idle_thread_tcb_size(512);
	/* FTDI:EKI */

	iomux_setup();						// Configure the IO pins - just three for LEDs and the debug interface
	
	/* FTDI:SDI Driver Initialisation */
	// Initializes our device with the device manager.
	tmrCtx.timer_identifier = TIMER_0;
	tmr_init(VOS_DEV_TIMER0, &tmrCtx);
	// Initialise UART
	uartContext.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	uart_init(VOS_DEV_UART, &uartContext);
	// Initialise FAT File System Driver
	fatdrv_init(VOS_DEV_FAT_FILE_SYSTEM);
	// Initialise BOMS Device Driver
	boms_init(VOS_DEV_BOMS);
	// Initialise GPIO A
	gpioContextA.port_identifier = GPIO_PORT_A;
	gpio_init(VOS_DEV_GPIO_PORT_A,&gpioContextA);
	// Initialise GPIO B
	gpioContextB.port_identifier = GPIO_PORT_B;
	gpio_init(VOS_DEV_GPIO_PORT_B,&gpioContextB);
	// Initialise Android Accessory Device Driver
	usbHostAndroidAccessory_init(VOS_DEV_ANDROID_ACCESSORY);
	// Initialise USB Host FT232 Driver
	usbHostFt232_init(VOS_DEV_USBHOST_FT232);
	// Initialise USB Host
	usbhostContext.if_count = 8;
	usbhostContext.ep_count = 16;
	usbhostContext.xfer_count = 2;
	usbhostContext.iso_xfer_count = 2;
	usbhost_init(VOS_DEV_USBHOST_1, VOS_DEV_USBHOST_2, &usbhostContext);
	
	
	/* Open GPIO A handles */
	hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);	// Open up the GPIO port - used for LEDs
	vos_gpio_write_port(GPIO_PORT_A, 0xFF);				// Pre-set PORT A all high - prevents glitch
	vos_gpio_set_port_mode(GPIO_PORT_A, 0xFF); 			// Port A all output
	vos_gpio_write_pin(GPIO_A_3, 0);					// Turn on LED1 on V2EVAL
	vos_gpio_write_pin(GPIO_A_4, 0);					// Turn on LED1 on V2EVAL
	// Open USB Host 2 handles
	hUSBHOST2 = vos_dev_open(VOS_DEV_USBHOST_2);		// Open USB Host Port 2
	// Open UART handles
	hUART = vos_dev_open(VOS_DEV_UART);
	
	/* Create threads */
	tcbATOF = vos_create_thread_ex(24, 1024, atof, "atof", 0);
	tcbCONNECT = vos_create_thread_ex(24, 1024, connect, "connect", 0);
	tcbUART_SENSOR = vos_create_thread_ex(24, 2048, uart_sensor, "uart_sensor", 0);
	// tick thread
    tcbTICK = vos_create_thread_ex(24, 1024, tick, "tick", 0);

 


	
	// Initialize Mutexes as locked
	vos_init_mutex(&mInitAndroid, VOS_MUTEX_LOCKED);
	vos_init_mutex(&mInitF, VOS_MUTEX_LOCKED);
	
	vos_start_scheduler();

main_loop:
	goto main_loop;
}
	
/* FTDI:SSP Support Functions */

VOS_HANDLE fat_attach(VOS_HANDLE hMSI, unsigned char devFAT)
{
	fat_ioctl_cb_t fat_ioctl;
	fatdrv_ioctl_cb_attach_t fat_att;
	VOS_HANDLE hFAT;

	// currently the MSI (BOMS or other) must be open
	// open the FAT driver
	hFAT = vos_dev_open(devFAT);

	// attach the FAT driver to the MSI driver
	fat_ioctl.ioctl_code = FAT_IOCTL_FS_ATTACH;
	fat_ioctl.set = &fat_att;
	fat_att.msi_handle = hMSI;
	fat_att.partition = 0;

	if (vos_dev_ioctl(hFAT, &fat_ioctl) != FAT_OK)
	{
		// unable to open the FAT driver
		vos_dev_close(hFAT);
		hFAT = NULL;
	}

	return hFAT;
}

void fat_detach(VOS_HANDLE hFAT)
{
	fat_ioctl_cb_t fat_ioctl;

	if (hFAT)
	{
		fat_ioctl.ioctl_code = FAT_IOCTL_FS_DETACH;
		fat_ioctl.set = NULL;
		fat_ioctl.get = NULL;

		vos_dev_ioctl(hFAT, &fat_ioctl);
		vos_dev_close(hFAT);
	}
}

VOS_HANDLE boms_attach(VOS_HANDLE hUSB, unsigned char devBOMS)
{
	usbhost_device_handle_ex ifDisk;
	usbhost_ioctl_cb_t hc_iocb;
	usbhost_ioctl_cb_class_t hc_iocb_class;
	msi_ioctl_cb_t boms_iocb;
	boms_ioctl_cb_attach_t boms_att;
	VOS_HANDLE hBOMS;

	// find BOMS class device
	hc_iocb_class.dev_class = USB_CLASS_MASS_STORAGE;
	hc_iocb_class.dev_subclass = USB_SUBCLASS_MASS_STORAGE_SCSI;
	hc_iocb_class.dev_protocol = USB_PROTOCOL_MASS_STORAGE_BOMS;

	// user ioctl to find first hub device
	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_FIND_HANDLE_BY_CLASS;
	hc_iocb.handle.dif = NULL;
	hc_iocb.set = &hc_iocb_class;
	hc_iocb.get = &ifDisk;

	if (vos_dev_ioctl(hUSB, &hc_iocb) != USBHOST_OK)
	{
		return NULL;
	}

	// now we have a device, intialise a BOMS driver with it
	hBOMS = vos_dev_open(devBOMS);

	// perform attach
	boms_att.hc_handle = hUSB;
	boms_att.ifDev = ifDisk;

	boms_iocb.ioctl_code = MSI_IOCTL_BOMS_ATTACH;
	boms_iocb.set = &boms_att;
	boms_iocb.get = NULL;

	if (vos_dev_ioctl(hBOMS, &boms_iocb) != MSI_OK)
	{
		vos_dev_close(hBOMS);
		hBOMS = NULL;
	}

	return hBOMS;
}

void boms_detach(VOS_HANDLE hBOMS)
{
	msi_ioctl_cb_t boms_iocb;

	if (hBOMS)
	{
		boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
		boms_iocb.set = NULL;
		boms_iocb.get = NULL;

		vos_dev_ioctl(hBOMS, &boms_iocb);
		vos_dev_close(hBOMS);
	}
}
	
void mass_storage_attach_drivers(void)
{
	/* FTDI:SUA Layered Driver Attach Function Calls */
	hBOMS = boms_attach(hUSBHOST2, VOS_DEV_BOMS);
	hFAT_FILE_SYSTEM = fat_attach(hBOMS, VOS_DEV_FAT_FILE_SYSTEM);
	// TODO attach stdio to file system and stdio interface
	// fsAttach(hFAT_FILE_SYSTEM); // VOS_HANDLE for file system (typically FAT)
	// stdioAttach(hUART); // VOS_HANDLE for stdio interface (typically UART)
	/* FTDI:EUA */
}


// The following functions are genereated by the new project wizard
/* FTDI:SSP Support Functions */

unsigned char usbhost_connect_state(VOS_HANDLE hUSB)
{
	unsigned char connectstate = PORT_STATE_DISCONNECTED;
	usbhost_ioctl_cb_t hc_iocb;

	if (hUSB)
	{
		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
		hc_iocb.get        = &connectstate;
		vos_dev_ioctl(hUSB, &hc_iocb);

    // repeat if connected to see if we move to enumerated
		if (connectstate == PORT_STATE_CONNECTED)
		{
			vos_dev_ioctl(hUSB, &hc_iocb);
		}
	}
	return connectstate;
}

VOS_HANDLE android_attach(VOS_HANDLE hUSB, unsigned char devANDACC,
	char *manufacturer, char *model, char *description,
	char *version, char *uri, char *serial)
{
	common_ioctl_cb_t androidAccessory_cb;
	usbHostAndroidAccessory_ioctl_cb_attach_t atInfo;
	VOS_HANDLE hANDACC;
	unsigned char status = NULL;
	unsigned short protocolRevision = NULL;

	hANDACC = vos_dev_open(devANDACC);

	atInfo.hc_handle = hUSB;
	atInfo.manufacturer = manufacturer;
	atInfo.model = model;
	atInfo.description = description;
	atInfo.version = version;
	atInfo.uri = uri;
	atInfo.serial = serial;

	androidAccessory_cb.ioctl_code = VOS_IOCTL_USBHOSTANDROIDACCESSORY_ATTACH;
	androidAccessory_cb.set.data = &atInfo;
	if (vos_dev_ioctl(hANDACC, &androidAccessory_cb) != USBHOSTANDROIDACCESSORY_OK)
	{
		vos_dev_close(hANDACC);
		hANDACC = NULL;
	}

	return hANDACC;
}
#if 0
VOS_HANDLE android_attach(VOS_HANDLE hUSB, unsigned char devANDACC,
	char *manufacturer, char *model, char *description,
	char *version, char *uri, char *serial, char mode)
{
	common_ioctl_cb_t androidAccessory_cb;
	usbHostAndroidAccessory_ioctl_cb_attach_t atInfo;
	VOS_HANDLE hANDACC;

	hANDACC = vos_dev_open(devANDACC);

	atInfo.hc_handle = hUSB;
	atInfo.manufacturer = manufacturer;
	atInfo.model = model;
	atInfo.description = description;
	atInfo.version = version;
	atInfo.uri = uri;
	atInfo.serial = serial;
	atInfo.mode = mode;

	androidAccessory_cb.ioctl_code = VOS_IOCTL_USBHOSTANDROIDACCESSORY_ATTACH;
	androidAccessory_cb.set.data = &atInfo;
	if (vos_dev_ioctl(hANDACC, &androidAccessory_cb) != USBHOSTANDROIDACCESSORY_OK)
	{
		vos_dev_close(hANDACC);
		hANDACC = NULL;
	}

	return hANDACC;
}
#endif
void android_detach(VOS_HANDLE hANDACC)
{
	common_ioctl_cb_t androidAccessory_cb;

	if (hANDACC)
	{
		androidAccessory_cb.ioctl_code = VOS_IOCTL_USBHOSTANDROIDACCESSORY_DETACH;
		vos_dev_ioctl(hANDACC, &androidAccessory_cb);
		vos_dev_close(hANDACC);
	}
}


VOS_HANDLE ft232_host_attach(VOS_HANDLE hUSB, unsigned char devHostFT232, unsigned char ftport)
{
	usbhost_device_handle_ex ifFT232 = 0;
	usbhost_ioctl_cb_t hc_iocb;
	usbhost_ioctl_cb_vid_pid_t hc_iocb_vendor;
	common_ioctl_cb_t ft232_iocb;
	usbhostft232_ioctl_cb_attach_t ft232_att;
	VOS_HANDLE hHostFT232;

	// find FT232 class device
	hc_iocb_vendor.vid = USB_VID_FTDI;
	hc_iocb_vendor.pid = USB_PID_FTDI_FT232;

	// user ioctl to find first FT232 device
	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_FIND_HANDLE_BY_VID_PID;
	hc_iocb.handle.dif = NULL;
	hc_iocb.set = &hc_iocb_vendor;
	hc_iocb.get = &ifFT232;

	if (vos_dev_ioctl(hUSB, &hc_iocb) != USBHOST_OK)
	{
		return NULL;
	}

	// now we have a device, intialise the FT232 driver for it
	hHostFT232 = vos_dev_open(devHostFT232);

	// perform attach
	ft232_att.hc_handle = hUSB;
	ft232_att.ifDev = ifFT232;
	ft232_att.ftPort = ftport;

	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_ATTACH;
	ft232_iocb.set = &ft232_att;
	ft232_iocb.get = NULL;

	if (vos_dev_ioctl(hHostFT232, &ft232_iocb) != USBHOSTFT232_OK)
	{
		vos_dev_close(hHostFT232);
		hHostFT232 = NULL;
	}

	return hHostFT232;
}

void ft232_host_detach(VOS_HANDLE hHostFT232)
{
	common_ioctl_cb_t ft232_iocb;

	if (hHostFT232)
	{
		ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_DETACH;

		vos_dev_ioctl(hHostFT232, &ft232_iocb);
		vos_dev_close(hHostFT232);
	}
}

/* Application Threads */

/*
	Thread Name:  connect()
	Comments:
	This thread establishes the following USB connections:
		USB1 = Connection to an Android Device with Android Open Accessory support
			   The "FTDI AOA HyperTerm" must be loaded from the Google Play Store
		USB2 = Connection to a FT232B- or FT232R-based RS232 cable (FT23xX support 
			   is not present but can be added with the appropriate USB Product ID
			   recognition
	Upon connection of both devices, data is copied in both directions by the "atof()"
	and "ftoa()" threads.  Upon detection of a disconnect from either USB port, 
	all USB connections are terminated and the VNC2 halted.  
*/
# if 0
void connect()
{
	common_ioctl_cb_t aoa_iocb;
	common_ioctl_cb_t ft232_iocb;
		
	// Android Accessory Driver attach must specify various strings
	unsigned char status;
	unsigned char blink = 0;
	
	unsigned short protocolRevision = 0;
	unsigned short actual, actualw, dataAvail = 0;
	
	char *manufacturer 	= "FTDI\0";						// Android Open Accessory ID strings
	//char *model 		= "FTDIUARTDemo\0";				// These need to match the strings
	/* gibson 2014/11/12 */
	char *model         = "FTDIDemoKit\0";
	char *description 	= "Vinculum Accessory Test\0";	//  expected by the FTDI AOA HyperTerm
	char *version 		= "1.0\0";						//  application on the Android device
	char *uri 			= "http://www.ftdichip.com\0";
	char *serial 		= "VinculumAccessory1\0";
	
	hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);	// Open up the GPIO port - used for LEDs
	vos_gpio_write_port(GPIO_PORT_A, 0xFF);				// Pre-set PORT A all high - prevents glitch
	vos_gpio_set_port_mode(GPIO_PORT_A, 0xFF); 			// Port A all output
	vos_gpio_write_pin(GPIO_A_3, 0);					// Turn on LED1 on V2EVAL
	
	// Open handles
	hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);		// Open USB Host Port 1
	hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);		// Open USB Host Port 2
	// Wait for both to connect
	vos_delay_msecs(100);
	while(!usbhost_connect_state(hUSBHOST_1) || !usbhost_connect_state(hUSBHOST_2))	// Wait for both devices to connect
	{
		vos_gpio_write_pin(GPIO_A_3, blink);			// While waiting, blink LED1 at 10Hz
		blink = !blink;
		vos_delay_msecs(100);
	}
		
	// Attach layered drivers
	hANDROID_ACCESSORY = android_attach(hUSBHOST_1, VOS_DEV_ANDROID_ACCESSORY, manufacturer, model, description, version, uri, serial);
	if(hANDROID_ACCESSORY)
		vos_gpio_write_pin(GPIO_A_1, 0);				// Android device connected and AOA mode established - Turn on LED at USB1
		
	hUSBHOST_FT232 = ft232_host_attach(hUSBHOST_2, VOS_DEV_USBHOST_FT232, USBHOSTFT232_PORTA);
	if(hUSBHOST_FT232)
		vos_gpio_write_pin(GPIO_A_2, 0);				// FT232 connected - Turn on LED at USB2
		
	vos_gpio_write_pin(GPIO_A_3, 1);					// Turn off LED1 while everything is connected

	vos_delay_msecs(500);								// Give a little time for the USB devices to get initialized
		
	status = vos_dev_write(hANDROID_ACCESSORY, "\n\rSend Config through Settings button first\r\n", 45, &actual);	// send initial message 
	while(status)										// The default setting is 9600,n,8,1,no handshake
	{
		vos_gpio_write_pin(GPIO_A_3, blink);			// Something's wrong with the AOA connection.  
		blink = !blink;
		vos_delay_msecs(50);							// Blink LED1 at 20Hz forever since "status" will not change at this point
	}
		
	status = vos_dev_read(hANDROID_ACCESSORY, rAOAw232, sizeof(rAOAw232), &actual); // Read in the configuration string 
														// This call will block until some data is received from the Android device

	ft232Baud = (rAOAw232[3]<<24 | rAOAw232[2]<<16 | rAOAw232[1]<<8 | rAOAw232[0]);	// Parse the baud rate from the configuration string
	
	if (rAOAw232[4] == 7)								// Parse the number of data bits
		ft232Data = 0;									// 		7 data bits
	else
		ft232Data = 1;									//		8 data bits
	
	if (rAOAw232[5] == 1)								// Parse the number of stop bits
		ft232Stop = 0;									// 		1 stop bit
	else
		ft232Stop = 1;									//		2 stop bits
	
	ft232Parity = rAOAw232[6];							// Parse the parity setting
	
	ft232Flow = rAOAw232[7];							// Parse the flow control setting
														// NOTE: Be sure to set whatever is connected to the FT232 to these NEW settings
	
	ft232_host_detach(hUSBHOST_FT232);					// detach the FT232...
														// ... and re-attach with the new values parsed above
	hUSBHOST_FT232 = ft232_host_attach(hUSBHOST_2, VOS_DEV_USBHOST_FT232, USBHOSTFT232_PORTA);
	
	if (ft232Flow == USBHOSTFT232_FLOW_RTS_CTS)
	{
		ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_RTS;	// If flow is set to RTS/CTS, then set RTS on the FT232
		status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);	// to allow connected device to send data
	}

	vos_unlock_mutex(&mInitA);							// Allow the "atof()" thread to start
	vos_unlock_mutex(&mInitF);							// Allow the "ftoa()" thread to start
		
	while(usbhost_connect_state(hUSBHOST_1) && usbhost_connect_state(hUSBHOST_2)) // spin in this loop as long as both ports are connected
	{
		vos_delay_msecs(500);							// Blink LED1 at 2Hz as a "heartbeat"
		blink = !blink;
		vos_gpio_write_pin(GPIO_A_3, blink);
	}

	// If we drop out of the while() loop, one of the USB ports was unplugged
	
	if (usbhost_connect_state(hUSBHOST_1))				// If the Android device is still connected... 
		vos_dev_write(hANDROID_ACCESSORY, "\n\rFT232 is UNPLUGGED - Halting VNC2!\n\r", 38, &actual);//... send a note indicating the FT232 is gone
	
	android_detach(hANDROID_ACCESSORY);					// Break down the Android device connection
	ft232_host_detach(hUSBHOST_FT232);					// Break down the FT232 connection
	vos_gpio_write_pin(GPIO_A_1, 1);					// Turn off LED at USB1
	vos_gpio_write_pin(GPIO_A_2, 1);					// Turn off LED at USB2
	vos_dev_close(hUSBHOST_1);							// Close the USB handle to the Android device
	vos_dev_close(hUSBHOST_2);							// Close the USB handle to the FT232
	hUSBHOST_1 = NULL;									// Housekeeping - set handles to zero
	hANDROID_ACCESSORY = NULL;
	hUSBHOST_2 = NULL;
	hUSBHOST_FT232 = NULL;
	vos_gpio_write_pin(GPIO_A_3, 0);					// Turn on LED1
	vos_halt_cpu();										// Stop here - a VNC2 reset is required to start again
}
#endif
	
// *******************************************************************
// tick thread
// *******************************************************************
void tick() {

     VOS_HANDLE hTimer;
     tmr_ioctl_cb_t tmr_iocb;

     hTimer = vos_dev_open(VOS_DEV_TIMER0);
     tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_TICK_SIZE;
     tmr_iocb.param = TIMER_TICK_MS;
     vos_dev_ioctl(hTimer, &tmr_iocb);

     tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_COUNT;
     tmr_iocb.param = 500;                        // 500ms
     vos_dev_ioctl(hTimer, &tmr_iocb);

     tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_DIRECTION;
     tmr_iocb.param = TIMER_COUNT_DOWN;
	 vos_dev_ioctl(hTimer, &tmr_iocb);

     tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_MODE;
     tmr_iocb.param = TIMER_MODE_CONTINUOUS;
     vos_dev_ioctl(hTimer, &tmr_iocb);

     tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_START;
     vos_dev_ioctl(hTimer, &tmr_iocb);

     while (1) {
         tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_WAIT_ON_COMPLETE;
         vos_dev_ioctl(hTimer, &tmr_iocb);
		 
		 if (delay_count > 0)
	         delay_count--;
     }
}

#define CONNECTED_ANDROID    (1<<0)
#define CONNECTED_FT232      (1<<1)	
void connect()
{
	common_ioctl_cb_t ft232_iocb;
		
	// Android Accessory Driver attach must specify various strings

	unsigned short protocolRevision = 0;
	unsigned short actual, actualw, dataAvail = 0;
	unsigned char blink = 0;
	unsigned char status;
	
	// Wait for both to connect
	vos_delay_msecs(100);
	while (1) {
		if (usbhost_connect_state(hUSBHOST2)) {
			hUSBHOST_FT232 = ft232_host_attach(hUSBHOST2, VOS_DEV_USBHOST_FT232, USBHOSTFT232_PORTA);
			if(hUSBHOST_FT232) {
				device_connect_status |= CONNECTED_FT232;
				vos_gpio_write_pin(GPIO_A_2, 0);				// FT232 connected - Turn on LED at USB2
				//vos_unlock_mutex(&mInitF);							// Allow the "ftoa()" thread to start
				
			/*	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_BAUD_RATE;	// If flow is set to RTS/CTS, then set RTS on the FT232
		        status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);	// to allow connected device to send data
				
				ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_DATA_BITS;	// If flow is set to RTS/CTS, then set RTS on the FT232
		        status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);	// to allow connected device to send data
				
				ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_STOP_BITS;	// If flow is set to RTS/CTS, then set RTS on the FT232
		        status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);	// to allow connected device to send data
				
				ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_PARITY;	// If flow is set to RTS/CTS, then set RTS on the FT232
		        status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);	// to allow connected device to send data
			*/	
			
			    // FT232 set baud rate
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_BAUD_RATE;
			    ft232_iocb.set.uart_baud_rate = ft232Baud;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			    // FT232 set flow control
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_FLOW_CONTROL;
			    ft232_iocb.set.param = USBHOSTFT232_FLOW_NONE;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			    // FT232 set data bits
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_DATA_BITS;
			    ft232_iocb.set.param = ft232Data;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			    // FT232 set stop bits
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_STOP_BITS;
			    ft232_iocb.set.param = ft232Stop;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			    // FT232 set parity
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_PARITY;
			    ft232_iocb.set.param = ft232Parity;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			    // start polling to ensure we receive data in the RX Queue
			    ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_START_POLL;
			    vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);
				while (device_connect_status&CONNECTED_FT232) {
					ft232_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;					// check whether any data is 
		            status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);							// available at from the FT232
		            dataAvail = ft232_iocb.get.queue_stat;

		            if (dataAvail > sizeof(gstAccPacketWrite.u8Data)) {				// If there is more data than the buffer size.
			            dataAvail = sizeof(gstAccPacketWrite.u8Data); 				// ... then limit the number of bytes to the buffer size
		            }
					
					if (dataAvail > 0) {								// If there is any data available
				        status = vos_dev_read(hUSBHOST_FT232, gstAccPacketWrite.u8Data, dataAvail, &actual); 		// read from FT232 device
						if (hANDROID_ACCESSORY != NULL) {
							gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
							gstAccPacketWrite.u8Type = DATA_TYPE_SHAKER_RETURN;
							gstAccPacketWrite.u8len = actual;
							vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
							status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, gstAccPacketWriteSensor.u8len+5, &actualw);		// then write to Android device
						    vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
						}
		            }
					
					if (!usbhost_connect_state(hUSBHOST2)) {
						device_connect_status &= ~CONNECTED_FT232;
			            android_detach(hUSBHOST_FT232);					// Break down the Android device connection
				        vos_gpio_write_pin(GPIO_A_2, 1);				// Turn off LED at USB1
				        //hUSBHOST2_FT232 = NULL;
	                    hUSBHOST_FT232 = NULL;
					}
				}
			}
		} else {
		    vos_gpio_write_pin(GPIO_B_3, blink);			// While waiting, blink LED1 at 10Hz
		    blink = !blink;
		    vos_delay_msecs(100);
	    }
	}
}

/*
	Thread Name:  atof()
	Comments:
	This thread reads data from the Android device on USB1 and copies it to the FT232 on USB2
*/	
	
#define LED_BUTTON_MAP	   	(0x78)
#if 1
void atof()
{
	common_ioctl_cb_t aoa_iocb;
	unsigned char status, i;
	unsigned short dataAvail = 0, actual = 0, actualw = 0;
	uint8 u8Data;
	unsigned char numRead = 0;
	unsigned char blink = 0;
	gpio_ioctl_cb_t gpio_ioca;
	char *manufacturer 	= "FTDI\0";						// Android Open Accessory ID strings
	//char *model 		= "FTDIUARTDemo\0";				// These need to match the strings
	/* gibson 2014/11/12 */
	char *model         = "FTDIDemoKit\0";
	char *description 	= "Vinculum Accessory Test\0";	//  expected by the FTDI AOA HyperTerm
	char *version 		= "1.0\0";						//  application on the Android device
	char *uri 			= "http://www.ftdichip.com\0";
	char *serial 		= "VinculumAccessory1\0";

    // Set all pins to output using an ioctl.
	gpio_ioca.ioctl_code = VOS_IOCTL_GPIO_SET_MASK;
	gpio_ioca.value      = 0x78;
	// Send the ioctl to the device manager.
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	hGPIO_PORT_B = vos_dev_open(VOS_DEV_GPIO_PORT_B);	// Open up the GPIO port - used for LEDs
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	//vos_gpio_write_port(GPIO_PORT_B, 0xFF);				// Pre-set PORT A all high - prevents glitch
	//vos_gpio_set_port_mode(GPIO_PORT_B, 0xFF); 			// Port A all output

	hUSBHOST1_Android = vos_dev_open(VOS_DEV_USBHOST_1);		// Open USB Host Port 1 for android
	while(1)
	{
		if (usbhost_connect_state(hUSBHOST1_Android)) {
			hANDROID_ACCESSORY = android_attach(hUSBHOST1_Android, VOS_DEV_ANDROID_ACCESSORY, manufacturer, model, description, version, uri, serial);
			if(hANDROID_ACCESSORY) {
				device_connect_status |= CONNECTED_ANDROID;
				vos_gpio_write_pin(GPIO_A_1, 0);				// Android device connected and AOA mode established - Turn on LED at USB1
				vos_unlock_mutex(&mInitAndroid);				// unlock the AOA mutex	
				
				while (device_connect_status&CONNECTED_ANDROID) {
					//status = vos_dev_read(hANDROID_ACCESSORY,(uint8 *)&gstAccPacketRead, sizeof(gstAccPacketRead) , &numRead);
					status = vos_dev_read(hANDROID_ACCESSORY,(uint8 *)&gstAccPacketRead, sizeof(gstAccPacketRead) , &numRead);

					if (usbhost_connect_state(hUSBHOST1_Android)) {
					    if (!status) {
		                    if(numRead >= (sizeof(gstAccPacketRead)-sizeof(gstAccPacketRead.u8Data))) {
		                        // process the message from the Android device
								switch (gstAccPacketRead.u8Type) {
									case DATA_TYPE_KEYPAD:
								        /*update the led bitmap*/
						                u8Data = (gstAccPacketRead.u8Data[0] << 3);
				                        u8Data &= LED_BUTTON_MAP;
			                            vos_dev_write(hGPIO_PORT_B,&u8Data, 1, NULL);
									break;
									
									case DATA_TYPE_SLIDER:
									    //u8Changed = 1;
				                        //u8PwmDutyCycle = gstAccPacketRead.u8Data;
									break;
									
									case DATA_TYPE_SHAKER_COMMAND:
									    if (hUSBHOST_FT232 != NULL)
									         status = vos_dev_write(hUSBHOST_FT232, gstAccPacketRead.u8Data, gstAccPacketRead.u8len, &actualw);				// then write to the FT232
									break;
								}
							} 
					    }
				    } else {
				        device_connect_status &= ~CONNECTED_ANDROID;
						android_detach(hANDROID_ACCESSORY);					// Break down the Android device connection
						vos_gpio_write_pin(GPIO_A_1, 1);					// Turn off LED at USB1
						hANDROID_ACCESSORY = NULL;
			        }
			    }
			}
		} else {
	        vos_gpio_write_pin(GPIO_A_3, blink);			// While waiting, blink LED1 at 10Hz
		    blink = !blink;
		    vos_delay_msecs(100);
    	}
		
		
		
		//vos_lock_mutex(&mInitA);						// hold here until unlocked - lock then proceed
		
		// read a message from the Android device
		// wrap this in the accessory driver read function
		// NOTE: this call may return with less data than was requested
		// In this case, we are requesting 64 bytes to fill our buffer,
		// but our Android app will only send 1 byte!

		// VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS is not a valid ioctl for Android Open Accessory mode
		// Just let vos_dev_read block until some data comes in.
		
		//status = vos_dev_read(hANDROID_ACCESSORY, rAOAw232, sizeof(rAOAw232), &actual);	// read from Android device 
		//status = vos_dev_write(hUSBHOST_FT232, rAOAw232, actual, &actualw);				// then write to the FT232
		//vos_unlock_mutex(&mInitA);						// unlock the AOA mutex
	}
}
#endif
#if 0	
void atof()
{
	common_ioctl_cb_t aoa_iocb;
	unsigned char status, i, dev_status;
	unsigned short dataAvail = 0, actual = 0, actualw = 0;
	uint8 u8Data;
	unsigned char numRead = 0;
	unsigned char blink = 0;
	gpio_ioctl_cb_t gpio_ioca;
	char *manufacturer 	= "FTDI\0";						// Android Open Accessory ID strings
	//char *model 		= "FTDIUARTDemo\0";				// These need to match the strings
	/* gibson 2014/11/12 */
	char *model         = "FTDIDemoKit\0";
	char *description 	= "Vinculum Accessory Test\0";	//  expected by the FTDI AOA HyperTerm
	char *version 		= "1.0\0";						//  application on the Android device
	char *uri 			= "http://www.ftdichip.com\0";
	char *serial 		= "VinculumAccessory1\0";

    // Set all pins to output using an ioctl.
	gpio_ioca.ioctl_code = VOS_IOCTL_GPIO_SET_MASK;
	gpio_ioca.value      = 0x78;
	// Send the ioctl to the device manager.
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	hGPIO_PORT_B = vos_dev_open(VOS_DEV_GPIO_PORT_B);	// Open up the GPIO port - used for LEDs
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	//vos_gpio_write_port(GPIO_PORT_B, 0xFF);				// Pre-set PORT A all high - prevents glitch
	//vos_gpio_set_port_mode(GPIO_PORT_B, 0xFF); 			// Port A all output

	hUSBHOST1_Android = vos_dev_open(VOS_DEV_USBHOST_1);		// Open USB Host Port 1 for android
	while(1)
	{
		if (usbhost_connect_state(hUSBHOST1_Android)) {
			if (!(device_connect_status&CONNECTED_ANDROID)) {
			    hANDROID_ACCESSORY = android_attach(hUSBHOST1_Android, VOS_DEV_ANDROID_ACCESSORY, manufacturer, model, description, version, uri, serial);
			    if(hANDROID_ACCESSORY) {
				    device_connect_status = device_connect_status | CONNECTED_ANDROID;
				    vos_gpio_write_pin(GPIO_A_1, 0);				// Android device connected and AOA mode established - Turn on LED at USB1
				    //vos_unlock_mutex(&mInitA);							// Allow the "atof()" thread to start
				}
			} else {
			    status = vos_dev_read(hANDROID_ACCESSORY,(uint8 *)&gstAccPacketRead, sizeof(gstAccPacketRead) , &numRead);
				if (!status) {
		                    if(numRead == sizeof(gstAccPacketRead)) {
		                        // process the message from the Android device
			                    if(gstAccPacketRead.u8Type == DATA_TYPE_KEYPAD) {
			                        /*update the led bitmap*/
						            u8Data = (gstAccPacketRead.u8Data << 3);
				                    u8Data &= LED_BUTTON_MAP;
			                        //u8PrevLedMap ^= u8Data;
									//vos_dev_write(hGPIO_PORT_B,&u8PrevLedMap, 1, NULL);
			                        vos_dev_write(hGPIO_PORT_B,&u8Data, 1, NULL);
									if (hUSBHOST_FT232 != NULL)
				                        status = vos_dev_write(hUSBHOST_FT232, &u8Data, 1, &actualw);				// then write to the FT232
							    } else if (gstAccPacketRead.u8Type == DATA_TYPE_SLIDER) {
				                    //u8Changed = 1;
				                    //u8PwmDutyCycle = gstAccPacketRead.u8Data;
                                }
							}
				}
		    }
		} else {
	        vos_gpio_write_pin(GPIO_A_3, blink);			// While waiting, blink LED1 at 10Hz
		    blink = !blink;
		    vos_delay_msecs(100);
    	}
		
		
		
		//vos_lock_mutex(&mInitA);						// hold here until unlocked - lock then proceed
		
		// read a message from the Android device
		// wrap this in the accessory driver read function
		// NOTE: this call may return with less data than was requested
		// In this case, we are requesting 64 bytes to fill our buffer,
		// but our Android app will only send 1 byte!

		// VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS is not a valid ioctl for Android Open Accessory mode
		// Just let vos_dev_read block until some data comes in.
		
		//status = vos_dev_read(hANDROID_ACCESSORY, rAOAw232, sizeof(rAOAw232), &actual);	// read from Android device 
		//status = vos_dev_write(hUSBHOST_FT232, rAOAw232, actual, &actualw);				// then write to the FT232
		//vos_unlock_mutex(&mInitA);						// unlock the AOA mutex
	}
}
#endif
	
void write_sensor_data_to_file(unsigned char *buf, unsigned short len)
{
	FILE *file;
	int i;

//	while (1) {
	if (usbhost_connect_state(hUSBHOST2) == PORT_STATE_ENUMERATED) {
		hBOMS = boms_attach(hUSBHOST2, VOS_DEV_BOMS);

		if (hBOMS == NULL) {
			vos_gpio_write_pin(GPIO_B_3, 0);
			vos_delay_msecs(1000);
			return;
		}

		hFAT_FILE_SYSTEM = fat_attach(hBOMS, VOS_DEV_FAT_FILE_SYSTEM);

		if (hFAT_FILE_SYSTEM == NULL) {
			vos_gpio_write_pin(GPIO_B_3, 0);
			vos_delay_msecs(1000);
			return;
		}

		// lastly attach the stdio file system to the FAT file system
		fsAttach(hFAT_FILE_SYSTEM);

		// now call the stdio runtime functions
		file = fopen("SensorData.TXT", "a+");

		if (file == NULL) {
			//vos_gpio_write_port(GPIO_PORT_A, leds);
			vos_delay_msecs(1000);
			return;
		}

		if (fwrite(buf, len, sizeof(char), file) == -1) {
			//vos_gpio_write_port(GPIO_PORT_A, leds);
			vos_delay_msecs(1000);
		}

		if (fclose(file) == -1) {
			//vos_gpio_write_port(GPIO_PORT_A, leds);
			vos_delay_msecs(1000);
		}

		//vos_gpio_write_port(GPIO_PORT_A, leds);

		fat_detach(hFAT_FILE_SYSTEM);
		boms_detach(hBOMS);

		//leds = 0;
		//vos_gpio_write_port(GPIO_PORT_A, leds);
		/*for (i = 0; i < 3; i++) {
		    vos_gpio_write_pin(GPIO_B_3, 0);
			vos_delay_msecs(200);
			vos_gpio_write_pin(GPIO_B_3, 1);
			vos_delay_msecs(200);
		}*/
		return;
	}
//}
}
	
void write_sensor_data_to_android(unsigned char *buf, unsigned short len)
{
	unsigned short actualw;
	unsigned char status;
	
	if (hANDROID_ACCESSORY != NULL) {
		gstAccPacketWriteSensor.u8Prefix = PREFIX_VALUE;
		gstAccPacketWriteSensor.u8Type = DATA_TYPE_SENSOR_DATA;
		gstAccPacketWriteSensor.u8len = len;
		
		memcpy(gstAccPacketWriteSensor.u8Data, buf, gstAccPacketWriteSensor.u8len);
		vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
		status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWriteSensor, gstAccPacketWriteSensor.u8len+5, &actualw);		// then write to Android device
		vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
	}
}
/*
	Thread Name:  uart_sensor()
	Comments:
	This thread reads data from the Nuvotun Sensor on UART and copies it to the Android device on USB1
*/		
void uart_sensor()
{
	char *tx_sensor = "Request OD data\r";
	common_ioctl_cb_t uart_iocb;
	unsigned char buffer[PACKET_DATA_SIZE];
	unsigned short dataAvail, actual, offset;
	unsigned char status, send_cmd_flag = 0;

	
	/* UART ioctl call to enable DMA and link to DMA driver */
	uart_iocb.ioctl_code = VOS_IOCTL_COMMON_ENABLE_DMA;
	uart_iocb.set.param = DMA_ACQUIRE_AND_RETAIN;
	vos_dev_ioctl(hUART, &uart_iocb);

	// UART set baud rate
	uart_iocb.ioctl_code = VOS_IOCTL_UART_SET_BAUD_RATE;
	uart_iocb.set.uart_baud_rate = DEF_UART_BAUD;
	vos_dev_ioctl(hUART, &uart_iocb);

	// UART set flow control
	uart_iocb.ioctl_code = VOS_IOCTL_UART_SET_FLOW_CONTROL;
	uart_iocb.set.param = DEF_UART_FLOW;
	vos_dev_ioctl(hUART, &uart_iocb);

	// UART set data bits
	uart_iocb.ioctl_code = VOS_IOCTL_UART_SET_DATA_BITS;
	uart_iocb.set.param = DEF_UART_DATA_BITS;
	vos_dev_ioctl(hUART, &uart_iocb);

	// UART set stop bits
	uart_iocb.ioctl_code = VOS_IOCTL_UART_SET_STOP_BITS;
	uart_iocb.set.param = DEF_UART_STOP_BITS;
	vos_dev_ioctl(hUART, &uart_iocb);

	// UART set parity
	uart_iocb.ioctl_code = VOS_IOCTL_UART_SET_PARITY;
	uart_iocb.set.param = DEF_UART_PARITY;
	vos_dev_ioctl(hUART, &uart_iocb);
	
	while(1)
	{
		// wait for enumeration to complete
	/*	vos_delay_msecs(100);
		vos_gpio_write_pin(GPIO_B_3, 0);
		vos_delay_msecs(100);
		vos_gpio_write_pin(GPIO_B_3, 1);
	*/	
		if (!send_cmd_flag) {
		    status = vos_dev_write(hUART, tx_sensor, 16/*sizeof(tx_sensor)*/, NULL);
			delay_count = 4;
		    send_cmd_flag = 1;
			offset = 0;
		} else {
		    uart_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;
		    vos_dev_ioctl(hUART, &uart_iocb);
		    dataAvail = uart_iocb.get.queue_stat;

		    if (dataAvail > 0) {
			    if (dataAvail > sizeof(buffer)) {
			        dataAvail = sizeof(buffer);
		        }
			    // read from UART
			    status = vos_dev_read(hUART, &buffer[offset], dataAvail, &actual);
				offset += actual;
				
				if (buffer[offset-1] == '\r') {
				    if (buffer[0] == 'i' && buffer[1] == 'n' && buffer[2] == 'd'
                        &&	buffer[3] == 'e' && buffer[4] == 'x' ) {
						//	buffer[offset] = '\n';
						    write_sensor_data_to_android(buffer, offset);
							write_sensor_data_to_file(buffer, offset);
					}
					offset = 0;
					send_cmd_flag = 0;
				}
		    }
			
			if (delay_count == 0) {
				offset = 0;
				send_cmd_flag = 0;
			}
		}
	}
}
	
