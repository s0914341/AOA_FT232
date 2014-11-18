/*
** Filename: AOAtoFT232.c
**
** Automatically created by Application Wizard 2.0.0
** 
** Part of solution AOAtoFT232 in project AOAtoFT232
**
** Comments: 
**
** Important: Sections between markers "FTDI:S*" and "FTDI:E*" will be overwritten by
** the Application Wizard
*/

#include "AOAtoFT232.h"

/* Default settings for FT232 interface */
#define DEF_FT232_BAUD		USBHOSTFT232_BAUD_9600
#define DEF_FT232_DATA_BITS	USBHOSTFT232_DATA_BITS_8
#define DEF_FT232_FLOW		USBHOSTFT232_FLOW_NONE
#define DEF_FT232_STOP_BITS	USBHOSTFT232_STOP_BITS_1
#define DEF_FT232_PARITY	USBHOSTFT232_PARITY_NONE

common_ioctl_cb_t aoa_iocb;
common_ioctl_cb_t ft232_iocb;

vos_tcb_t *tcbATOF;
vos_tcb_t *tcbFTOA;
vos_tcb_t *tcbCONNECT;

void atof();
void ftoa();
void connect();

VOS_HANDLE hUSBHOST_1; // USB Host Port 1
VOS_HANDLE hUSBHOST_2; // USB Host Port 2
VOS_HANDLE hGPIO_PORT_A; // GPIO Port A Driver
VOS_HANDLE hANDROID_ACCESSORY; // Android Open Accessory Class Driver
VOS_HANDLE hUSBHOST_FT232; // Connects to FT232 devices using the USB Host Interface

vos_mutex_t mInit;
unsigned char flag = FALSE;

/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
	// USB Host configuration context
	usbhost_context_t usbhostContext;
	/* FTDI:EDD */

	/* FTDI:SKI Kernel Initialisation */
	vos_init(50, VOS_TICK_INTERVAL, VOS_NUMBER_DEVICES);
	vos_set_clock_frequency(VOS_48MHZ_CLOCK_FREQUENCY);
	vos_set_idle_thread_tcb_size(512);
	/* FTDI:EKI */

	iomux_setup();

	/* FTDI:SDI Driver Initialisation */
	// Initialise GPIO A
	gpioContextA.port_identifier = GPIO_PORT_A;
	gpio_init(VOS_DEV_GPIO_PORT_A,&gpioContextA);
	
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

	// Create threads
	tcbATOF = vos_create_thread_ex(24, 1024, atof, "atof", 0);
	tcbFTOA = vos_create_thread_ex(24, 1024, ftoa, "ftoa", 0);
	tcbCONNECT = vos_create_thread_ex(23, 1024, connect, "connect", 0);
	
	// Initialize Mutex as locked
	vos_init_mutex(&mInit, VOS_MUTEX_LOCKED);
	
	vos_start_scheduler();

main_loop:
	goto main_loop;
}

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

	// Configure FT232
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_BAUD_RATE;
	ft232_iocb.set.uart_baud_rate = DEF_FT232_BAUD;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);

	// FT232 set flow control
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_FLOW_CONTROL;
	ft232_iocb.set.param = DEF_FT232_FLOW;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);

	// FT232 set data bits
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_DATA_BITS;
	ft232_iocb.set.param = DEF_FT232_DATA_BITS;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);

	// FT232 set stop bits
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_STOP_BITS;
	ft232_iocb.set.param = DEF_FT232_STOP_BITS;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);

	// FT232 set parity
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_PARITY;
	ft232_iocb.set.param = DEF_FT232_PARITY;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);

	// start polling to ensure we receive data in the RX Queue
	ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_START_POLL;
	vos_dev_ioctl(hHostFT232, &ft232_iocb);
	
	return hHostFT232;
}

void ft232_host_detach(VOS_HANDLE hHostFT232)
{
	if (hHostFT232)
	{
		ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_DETACH;

		vos_dev_ioctl(hHostFT232, &ft232_iocb);
		vos_dev_close(hHostFT232);
	}
}

/* Application Threads */

void connect()
{
	// Android Accessory Driver attach must specify various strings
	unsigned char status;
	unsigned char cBuffer[40] = "\n\rSend Config through Settings button\r\n\0";
	unsigned short protocolRevision = 0;
	unsigned short actual, dataAvail = 0;
	
	char *manufacturer = "FTDI\0";
	char *model = "FTDIUARTDemo\0";
	char *description = "Vinculum Accessory Test\0";
	char *version = "1.0\0";
	char *uri = "http://www.ftdichip.com\0";
	char *serial = "VinculumAccessory1\0";
	
	hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
	vos_gpio_write_port(GPIO_PORT_A, 0xFF);						// Pre-set PORT A all high
	vos_gpio_set_port_mode(GPIO_PORT_A, 0xFF); 					// Port A all output
	
	while(1)
	{
		// Open handles
		hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);				// Open USB Host Port 1
		hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);				// Open USB Host Port 2
		// Wait for both to connect
		vos_delay_msecs(100);
		while(!usbhost_connect_state(hUSBHOST_1) || !usbhost_connect_state(hUSBHOST_2));					// Wait for both devices to connect
		{
			vos_delay_msecs(100);
		}
		
		// Attach layered drivers
		hANDROID_ACCESSORY = android_attach(hUSBHOST_1, VOS_DEV_ANDROID_ACCESSORY, manufacturer, model, description, version, uri, serial);
		if(hANDROID_ACCESSORY)
			vos_gpio_write_pin(GPIO_A_1, 0);							// Turn on LED at USB1
		
		hUSBHOST_FT232 = ft232_host_attach(hUSBHOST_2, VOS_DEV_USBHOST_FT232, USBHOSTFT232_PORTA);
		if(hUSBHOST_FT232)
			vos_gpio_write_pin(GPIO_A_2, 0);							// Turn on LED at USB2

		vos_delay_msecs(200);
		
		status = vos_dev_write(hANDROID_ACCESSORY, cBuffer, sizeof(cBuffer), &actual);	
		while(dataAvail < 8)
		{
			aoa_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;
			status = vos_dev_ioctl(hANDROID_ACCESSORY, &aoa_iocb);		
			dataAvail = aoa_iocb.get.queue_stat;
		}
		status = vos_dev_read(hANDROID_ACCESSORY, cBuffer, dataAvail, &actual);
//		status = vos_dev_read(hANDROID_ACCESSORY, cBuffer, 8, &actual);

		// All configured now - unlock the mutex
		vos_unlock_mutex(&mInit);
		
//		while(usbhost_connect_state(hUSBHOST_1) && usbhost_connect_state(hUSBHOST_2))
		while(1)
		{
			vos_delay_msecs(100);									// Spin here until one or both USB ports are disconnected
		}

		// One of the USB ports was unplugged - lock the mutex before closing everything down
		vos_lock_mutex(&mInit);		
		
		android_detach(hANDROID_ACCESSORY);							// Something is disconnected, detach and close everything and go to top
		ft232_host_detach(hUSBHOST_FT232);
		vos_gpio_write_pin(GPIO_A_1, 1);							// Turn off LED at USB1
		vos_gpio_write_pin(GPIO_A_2, 1);					// Turn off LED at USB2
		vos_dev_close(hUSBHOST_1);
		vos_dev_close(hUSBHOST_2);
		hUSBHOST_1 = NULL;
		hANDROID_ACCESSORY = NULL;
		hUSBHOST_2 = NULL;
		hUSBHOST_FT232 = NULL;
	}		
}
	
void atof()
{
	unsigned char status;
	unsigned char buffer[64];
	unsigned short dataAvail, actual, actualw;

	while(1)
	{
		// hold for unlock
		vos_lock_mutex(&mInit);
		aoa_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;
		status = vos_dev_ioctl(hANDROID_ACCESSORY, &aoa_iocb);		
		
		if (status != USBHOSTANDROIDACCESSORY_OK)
		{
			vos_gpio_write_pin(GPIO_A_3, 0);
		}
		
		dataAvail = aoa_iocb.get.queue_stat;
		if (dataAvail > sizeof(buffer))
		{
			dataAvail = sizeof(buffer);
		}
		if (dataAvail > 0)
		{
			// read from ANDROID device
			status = vos_dev_read(hANDROID_ACCESSORY, buffer, dataAvail, &actual);
			if (status != USBHOSTANDROIDACCESSORY_OK) 								// getting status not found (0x02)
			{
				vos_gpio_write_pin(GPIO_A_3, 0);
			}
			vos_gpio_write_pin(GPIO_A_3, 1);

			// then write to FT232
			status = vos_dev_write(hUSBHOST_FT232, buffer, actual, &actualw);
			if (status != USBHOSTFT232_OK)
			{
				vos_gpio_write_pin(GPIO_A_3, 0);
			}			
		}
		vos_unlock_mutex(&mInit);
	}
}

void ftoa()
{
	unsigned char status;
	unsigned char buffer[64];
	unsigned short dataAvail, actual, actualw;

	
	while(1)
	{
		//hold for unlock
		vos_lock_mutex(&mInit);
		
		ft232_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;
		status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);		
		
		if (status != USBHOSTFT232_OK)
		{
			vos_gpio_write_pin(GPIO_A_3, 0);
		}
		
		dataAvail = ft232_iocb.get.queue_stat;
		if (dataAvail > sizeof(buffer))
		{
			dataAvail = sizeof(buffer);
		}
		if (dataAvail > 0)
		{
			// read from FT232 device
			status = vos_dev_read(hUSBHOST_FT232, buffer, dataAvail, &actual);
			if (status != USBHOSTFT232_OK)
			{
				vos_gpio_write_pin(GPIO_A_3, 0);
			}
			vos_gpio_write_pin(GPIO_A_3, 1);

			// then write to ANDROID
			status = vos_dev_write(hANDROID_ACCESSORY, buffer, actual, &actualw); // Getting 0x02 for status???
			if (status != USBHOSTANDROIDACCESSORY_OK)
			{
				vos_gpio_write_pin(GPIO_A_3, 0);
			}
		}
		vos_unlock_mutex(&mInit);
	}

}
