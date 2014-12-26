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

#define SENSOR_SIMULATE
#define SHAKER_SIMULATE

const char *firmware_version = "001a";

vos_tcb_t *tcbANDROID_RECEIVER;
vos_tcb_t *tcbEXPERIMENT_TASK;
vos_tcb_t *tcbTIMER_TICK;

void timer_tick();
void android_receiver();				// Thread to copy data from Android device to FT232
void experiment_task();						// Thread to copy data from FT232 do Android device

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

machine_status machine_info;

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

unsigned char device_connect_status = 0;

uint8 delay_count = 0;
uint32 experiment_delay = 0;

const char *sensor_request = "Request OD data\r";
const char *sensor_check = "Hello OD Monitor\r";
const char *shaker_on = "ON ";
const char *shaker_off = "OF ";
const char *shaker_speed = "SS0";
const char *shaker_temperature = "SC";
const char *shaker_end = "0 ";
const char *experiment_data_file = "raw.txt";
const char *script_file = "Script.txt";


const char *manufacturer = "Maestrogen\0";						// Android Open Accessory ID strings
/* gibson 2014/12/24 */
const char *model = "ODMonitor\0";
const char *description = "ODMonitor Accessory Controller\0";	//  expected by the FTDI AOA HyperTerm
const char *version = "1.0\0";						            //  application on the Android device
const char *uri = "http://www.ftdichip.com\0";
const char *serial = "ODMonitorAccessory\0";

/*accessory packet*/
#define SHAKER_BUFFER_SIZE   64
uint8 shaker_buffer[SHAKER_BUFFER_SIZE];
uint8 shaker_buffer_start;
uint8 shaker_data_size;
uint32 repeat_time[MAX_REPEAT_LEVEL];
uint8 can_notify = FALSE;

//android_accessory_packet gstAccPacketWriteSensor;
android_accessory_packet gstAccPacketNotify;
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

	shaker_buffer_start = 0;
	shaker_data_size = 0;
	machine_info.shaker_status = STATUS_SHAKER_NOT_READY;
	machine_info.sensor_status = STATUS_SENSOR_NOT_READY;
	machine_info.mass_storage_status = STATUS_MASS_STORAGE_NOT_READY;
	machine_info.experiment_status = STATUS_EXPERIMENT_IDLE;
	machine_info.current_instruction_index = 0;
	machine_info.experiment_timer = 0;
	machine_info.synchronous_sensor_data = SYNCHRONOUS_NO_DATA;
	memcpy(machine_info.version, firmware_version, sizeof(machine_info.version));

	/* Create threads */
	tcbANDROID_RECEIVER = vos_create_thread_ex(24, 2048, android_receiver, "android_receiver", 0);
	tcbEXPERIMENT_TASK = vos_create_thread_ex(24, 2048, experiment_task, "experiment_task", 0);
	/* timer tick thread */
    tcbTIMER_TICK = vos_create_thread_ex(24, 1024, timer_tick, "timer_tick", 0);

 
	// Initialize Mutexes as locked
	vos_init_mutex(&mInitAndroid, VOS_MUTEX_UNLOCKED);
	
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

	if (hBOMS) {
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

// *******************************************************************
// timer tick thread
// *******************************************************************
void timer_tick() {

	VOS_HANDLE hTimer;
	tmr_ioctl_cb_t tmr_iocb;
	uint8 i;

	hTimer = vos_dev_open(VOS_DEV_TIMER0);
	tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_TICK_SIZE;
	tmr_iocb.param = TIMER_TICK_MS;
	vos_dev_ioctl(hTimer, &tmr_iocb);

	tmr_iocb.ioctl_code = VOS_IOCTL_TIMER_SET_COUNT;
	tmr_iocb.param = 1000;                        // 500ms
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

         for (i = 0; i < MAX_REPEAT_LEVEL; i++) {
             if (repeat_time[i] > 0)
			 	repeat_time[i]--;
		 }
		 
		 if (delay_count > 0)
	         delay_count--;
			
	     if (experiment_delay > 0)
		     experiment_delay--;

         if ((machine_info.experiment_status == STATUS_EXPERIMENT_START) ||
		 	 (machine_info.experiment_status == STATUS_EXPERIMENT_RUNNING))
		     machine_info.experiment_timer++;
	}
}

/*
	Thread Name:  atof()
	Comments:
	This thread reads data from the Android device on USB1 and copies it to the FT232 on USB2
*/	
uint8 write_sensor_data_to_file(unsigned char *buf, unsigned short len)
{
	FILE *file;
	uint8 ret = 0;

    // now call the stdio runtime functions
	file = fopen(experiment_data_file, "a+");

	if (file == NULL) {
		ret |= ERR_OPEN_FILE_FAIL;
		return ret;
	}

	if (fwrite(buf, len, sizeof(char), file) == -1) {
		ret |= ERR_WRITE_FILE_FAIL;
	}

	if (fclose(file) == -1) {
		ret |= ERR_CLOSE_FILE_FAIL;
		return ret;
	}

	return ret;
}

uint8 read_data_from_shaker(uint8 *data, uint8 max_len, uint16 *actualw)
{	
	uint8 status = 1;
	common_ioctl_cb_t ft232_iocb;
	uint16 dataAvail = 0;

    if (hUSBHOST_FT232 != NULL) {
        ft232_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;					// check whether any data is 
        status = vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);							// available at from the FT232
        dataAvail = ft232_iocb.get.queue_stat;

        if (dataAvail > max_len) {				// If there is more data than the buffer size.
	        dataAvail = max_len; 				// ... then limit the number of bytes to the buffer size
        }
					
	    if (dataAvail > 0) 								                            // If there is any data available
	        status = vos_dev_read(hUSBHOST_FT232, data, dataAvail, actualw); 		// read from FT232 device
	}
		
	return status;
}

uint8 write_data_to_shaker(uint8 *data, uint8 data_len, uint16 *actualw)
{	
	uint8 status = 1;
	/* then write to the FT232 */
	if (hUSBHOST_FT232 != NULL)
	     status = vos_dev_write(hUSBHOST_FT232, data, data_len, actualw);	
		
	return status;
}
	
uint8 get_shaker_return()
{
	uint8 offset, len;
	
	gstAccPacketWrite.u8len = shaker_data_size;
	if ((shaker_buffer_start + shaker_data_size) <= SHAKER_BUFFER_SIZE) {
	    memcpy(gstAccPacketWrite.u8Data, &shaker_buffer[shaker_buffer_start], shaker_data_size);
		shaker_buffer_start += shaker_data_size;
		shaker_data_size = 0;
    } else {
	     offset = 0;
		 len = SHAKER_BUFFER_SIZE - shaker_buffer_start;
	     memcpy(&gstAccPacketWrite.u8Data[offset], &shaker_buffer[shaker_buffer_start], len);
		 len = shaker_data_size - len;
		 offset = SHAKER_BUFFER_SIZE - shaker_buffer_start;
		 memcpy(&gstAccPacketWrite.u8Data[offset], &shaker_buffer[0], len);
		 shaker_buffer_start = len;
		 shaker_data_size = 0;
	}
	
    gstAccPacketWrite.u8Status = STATUS_OK;
	return (HEADER_SIZE + gstAccPacketWrite.u8len);
}
	
uint8 set_experiment_script(android_accessory_packet *packet)
{
	uint8 status, write_len;
	unsigned short actualw = 0;
	FILE *file;
	uint8 ret = 0;

    // now call the stdio runtime functions
	
	if (packet->u8Status == STATUS_START) {
	    remove(script_file);
	}
	
	file = fopen(script_file, "a+");

	if (file == NULL) {
		ret |= ERR_OPEN_FILE_FAIL;
	}

	if ((packet->u8len > 0) && (file != NULL)) {
		if (fwrite(packet->u8Data, packet->u8len, sizeof(uint8), file) == -1) {
			ret |= ERR_WRITE_FILE_FAIL;
		}
	}
	
	if (fclose(file) == -1) {
		ret |= ERR_CLOSE_FILE_FAIL;
	}
	
	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;
	gstAccPacketWrite.u8Status = packet->u8Status;
	gstAccPacketWrite.u8len = 0;
	write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	if (write_len > 0)
	    status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);
	vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
	
	return status;	
}

void do_firmware_update()
{
    FILE *file, *log_file;
	uint8 status = 0;
	char buffer[16];

    // now call the stdio runtime functions
	file = fopen("AOA.rom", "r");

	if (file == NULL) {
        return;		
	} else {
	    status = FirmwareUpdateFATFile(file, REFLASHER_OFFSET);
		fclose(file);

		log_file = fopen("log.txt", "a+");

	    if (log_file == NULL) {
		    return;
	    }

	    memset(buffer, 0, sizeof(buffer));
		sprintf(buffer, "update: %d", status);
		if (fwrite(buffer, sizeof(buffer), sizeof(uint8), log_file) == -1) {
			return;
		}

	
	    if (fclose(log_file) == -1) {
		    return;
	    }
	}
}


	
uint8 set_experiment_status(uint8 *data, uint8 data_len)
{
	uint8 status, write_len;
	unsigned short actualw = 0;
	char time_buffer[8*3+9];
	int size = 0;

	if (data_len == 9) {
	    if (STATUS_EXPERIMENT_START == data[0]) {
		    remove(experiment_data_file);

		    /* first write start time to file */
			memset(time_buffer, 0, sizeof(time_buffer));
		    sprintf(time_buffer,"%d/%d/%d/%d/%d/%d/%d/%d\n",
		    data[1],data[2],data[3],data[4],data[5],
		    data[6],data[7],data[8]);
			for (size = 0; size < sizeof(time_buffer); size++) {
                if (time_buffer[size] == '\n')
					break;
			}
		    write_sensor_data_to_file(time_buffer, (unsigned short)(size+1));
	    }
	}
	machine_info.experiment_status = data[0];
	machine_info.experiment_timer = 0;

	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;
	gstAccPacketWrite.u8Status = STATUS_OK;
	gstAccPacketWrite.u8len = 0;
	write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	if (write_len > 0)
	    status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);
	vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
	
	return status;	
}
	
uint8 get_experiment_data(uint8 *data, uint8 data_len)
{
	uint8 status, write_len;
	unsigned short actualw = 0;
	FILE *file;
	uint8 end_read = 0;
	uint8 ret = 0;

    // now call the stdio runtime functions
	file = fopen(experiment_data_file, "r");

	if (file == NULL) {
		ret |= ERR_OPEN_FILE_FAIL;
		return ret;
	}

	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;
	do {
	    gstAccPacketWrite.u8len = fread(gstAccPacketWrite.u8Data, PACKET_DATA_SIZE, 1, file);
	    if (gstAccPacketWrite.u8len > 0) {
			if (feof(file)) {
			    gstAccPacketWrite.u8Status = STATUS_OK;
				end_read = 1;
		    } else {
			    gstAccPacketWrite.u8Status = STATUS_HAVE_DATA;
			}
				
			write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	        status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);

	    } else {
			ret |= ERR_WRITE_FILE_FAIL;		
			end_read = 1;
	    }
    } while (0 == end_read);
	vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex

	if (fclose(file) == -1) {
		ret |= ERR_CLOSE_FILE_FAIL;
		return ret;
	}
	
	return status;	
}
	
uint8 manual_send_shaker_command(uint8 *data, uint8 data_len)
{
	uint8 status, write_len;
	uint16 actualw = 0;
	
	/* then write to the FT232 */
	status = write_data_to_shaker(data, data_len, &actualw);
		
	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;	
	gstAccPacketWrite.u8Status = STATUS_OK;
	gstAccPacketWrite.u8len = 0;
	write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	if (write_len > 0)
	    status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);
	vos_unlock_mutex(&mInitAndroid);	// unlock the AOA mutex
	
	return status;	
}
	
uint8 get_machine_status()
{
	uint8 status, write_len;
	unsigned short actualw = 0;
	
	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;	
	memcpy(gstAccPacketWrite.u8Data, &machine_info, sizeof(machine_info));
	gstAccPacketWrite.u8Status = STATUS_OK;
	gstAccPacketWrite.u8len = sizeof(machine_info);
	write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	if (write_len > 0)
	    status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);
	vos_unlock_mutex(&mInitAndroid);	// unlock the AOA mutex
	
	return status;	
}

uint8 set_tablet_on_off_line(uint8 *data, uint8 data_len)
{
	uint8 status, write_len;
	unsigned short actualw = 0;
	
	vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
	if (data_len == 1) {
		if (data[0] == 1) {
	        can_notify = TRUE;
		} else {
		    can_notify = FALSE;
		}
	}
	gstAccPacketWrite.u8Prefix = PREFIX_VALUE;
	gstAccPacketWrite.u8Type = gstAccPacketRead.u8Type;
	gstAccPacketWrite.u8Status = STATUS_OK;
	gstAccPacketWrite.u8len = 0;
	write_len = HEADER_SIZE + gstAccPacketWrite.u8len;
	if (write_len > 0)
	    status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketWrite, write_len, &actualw);
	vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
	
	return status;	
}

void android_receiver()
{
	common_ioctl_cb_t aoa_iocb;
	uint8 status, i, write_len;
	unsigned short dataAvail = 0, actual = 0, actualw = 0;
	unsigned char numRead = 0;
	unsigned char blink = 0;
	gpio_ioctl_cb_t gpio_ioca;

    // Set all pins to output using an ioctl.
	gpio_ioca.ioctl_code = VOS_IOCTL_GPIO_SET_MASK;
	gpio_ioca.value      = 0x78;
	// Send the ioctl to the device manager.
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	hGPIO_PORT_B = vos_dev_open(VOS_DEV_GPIO_PORT_B);	// Open up the GPIO port - used for LEDs
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_ioca);
	
	hUSBHOST1_Android = vos_dev_open(VOS_DEV_USBHOST_1);		// Open USB Host Port 1 for android
	while(1) {
		if (usbhost_connect_state(hUSBHOST1_Android)) {
			hANDROID_ACCESSORY = android_attach(hUSBHOST1_Android, VOS_DEV_ANDROID_ACCESSORY, manufacturer, model, description, version, uri, serial);
			if(hANDROID_ACCESSORY) {
				device_connect_status |= CONNECTED_ANDROID;
				vos_gpio_write_pin(GPIO_A_1, 0);				// Android device connected and AOA mode established - Turn on LED at USB1
				
				while (device_connect_status&CONNECTED_ANDROID) {
					//status = vos_dev_read(hANDROID_ACCESSORY,(uint8 *)&gstAccPacketRead, sizeof(gstAccPacketRead) , &numRead);
					status = vos_dev_read(hANDROID_ACCESSORY,(uint8 *)&gstAccPacketRead, sizeof(gstAccPacketRead) , &numRead);

					if (usbhost_connect_state(hUSBHOST1_Android)) {
					    if (!status) {
		                    if(numRead >= (sizeof(gstAccPacketRead)-sizeof(gstAccPacketRead.u8Data))) {
		                        // process the message from the Android device
								write_len = 0;
								switch (gstAccPacketRead.u8Type) {
									case DATA_TYPE_GET_MACHINE_STATUS:
										write_len = get_machine_status();
									break;
									
									case DATA_TYPE_SEND_SHAKER_COMMAND:
									    write_len = manual_send_shaker_command(gstAccPacketRead.u8Data, gstAccPacketRead.u8len);
									break;
									
									case DATA_TYPE_GET_SHAKER_RETURN:
									    write_len = get_shaker_return();
									break;
									
									case DATA_TYPE_GET_EXPERIMENT_DATA:
									    write_len = get_experiment_data(gstAccPacketRead.u8Data, gstAccPacketRead.u8len);
									break;
									
									case DATA_TYPE_SET_EXPERIMENT_SCRIPT:
									    write_len = set_experiment_script(&gstAccPacketRead);
									break;
									
									case DATA_TYPE_SET_EXPERIMENT_STATUS:
									    write_len = set_experiment_status(gstAccPacketRead.u8Data, gstAccPacketRead.u8len);
									break;

									case DATA_TYPE_SET_TABLET_ON_OFF_LINE:
									    write_len = set_tablet_on_off_line(gstAccPacketRead.u8Data, gstAccPacketRead.u8len);
									break;
								}
							} 
					    }
				    } else {
				        vos_lock_mutex(&mInitAndroid);
				        device_connect_status &= ~CONNECTED_ANDROID;
						android_detach(hANDROID_ACCESSORY);					// Break down the Android device connection
						vos_gpio_write_pin(GPIO_A_1, 1);					// Turn off LED at USB1
						hANDROID_ACCESSORY = NULL;
						can_notify = FALSE;
						vos_unlock_mutex(&mInitAndroid);				    // unlock the AOA mutex	
			        }
			    }
			}
		} else {
	        vos_gpio_write_pin(GPIO_A_3, blink);			// While waiting, blink LED1 at 10Hz
		    blink = !blink;
		    vos_delay_msecs(100);
    	}
	}
}
#define ERR_USB_HOST_CONNECT_FAIL (1<<0)
#define ERR_BOMS_ATTACH_FAIL      (1<<1)
#define ERR_FAT_ATTACH_FAIL       (1<<2)
#define ERR_FT232_ATTACH_FAIL     (1<<3)
	
uint8 check_mass_storage_connect_status(uint8 *status)
{
	uint8 ret = STATUS_OK;
	
	if (usbhost_connect_state(hUSBHOST2) == PORT_STATE_ENUMERATED) {
		if (hBOMS == NULL) {
		    hBOMS = boms_attach(hUSBHOST2, VOS_DEV_BOMS);
		    if (hBOMS == NULL) {
			    ret |= ERR_BOMS_ATTACH_FAIL;
				 *status = STATUS_MASS_STORAGE_NOT_READY;
		        return ret;
		    } 
		}
		
		if (hFAT_FILE_SYSTEM == NULL) {
		    hFAT_FILE_SYSTEM = fat_attach(hBOMS, VOS_DEV_FAT_FILE_SYSTEM);
		    if (hFAT_FILE_SYSTEM == NULL) {
			    ret |= ERR_FAT_ATTACH_FAIL;
				boms_detach(hBOMS);
				*status = STATUS_MASS_STORAGE_NOT_READY;
			    return ret;
		    } 
		
		    // lastly attach the stdio file system to the FAT file system
		    fsAttach(hFAT_FILE_SYSTEM);
		}
		
		*status = STATUS_MASS_STORAGE_READY;
		return ret;
	} else {
	    if (hFAT_FILE_SYSTEM != NULL) {
		    fat_detach(hFAT_FILE_SYSTEM);
			hFAT_FILE_SYSTEM = NULL;
		}
		
	    if (hBOMS != NULL) {
		    boms_detach(hBOMS);
			hBOMS = NULL;
		}
		
		ret |= ERR_USB_HOST_CONNECT_FAIL;
		*status = STATUS_MASS_STORAGE_NOT_READY;
	    return ret;
	}
}
	
uint8 check_shaker_connect_status(uint8 *status)
{
	uint8 ret = STATUS_OK;
	common_ioctl_cb_t ft232_iocb;

#ifdef SHAKER_SIMULATE
    *status = STATUS_SHAKER_READY;
    return ret;
#endif
	
	if (usbhost_connect_state(hUSBHOST2) == PORT_STATE_ENUMERATED) {
		if (hUSBHOST_FT232 == NULL) {
            hUSBHOST_FT232 = ft232_host_attach(hUSBHOST2, VOS_DEV_USBHOST_FT232, USBHOSTFT232_PORTA);
		    if (hUSBHOST_FT232 == NULL) {
			    ret |= ERR_FT232_ATTACH_FAIL;
		        *status = STATUS_SHAKER_NOT_READY;
		        return ret;
		    } 

			 // FT232 set baud rate
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_BAUD_RATE;
			 ft232_iocb.set.uart_baud_rate = DEF_FT232_BAUD;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			 // FT232 set flow control
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_FLOW_CONTROL;
			 ft232_iocb.set.param = DEF_FT232_FLOW;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			 // FT232 set data bits
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_DATA_BITS;
			 ft232_iocb.set.param = DEF_FT232_DATA_BITS;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			 // FT232 set stop bits
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_STOP_BITS;
			 ft232_iocb.set.param = DEF_FT232_STOP_BITS;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			 // FT232 set parity
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_SET_PARITY;
			 ft232_iocb.set.param = DEF_FT232_PARITY;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);

			 // start polling to ensure we receive data in the RX Queue
			 ft232_iocb.ioctl_code = VOS_IOCTL_USBHOSTFT232_START_POLL;
			 vos_dev_ioctl(hUSBHOST_FT232, &ft232_iocb);
	    }
		
		*status = STATUS_SHAKER_READY;
		return ret;
	} else {
	    if (hUSBHOST_FT232 != NULL) {
		    ft232_host_detach(hUSBHOST_FT232);
			hUSBHOST_FT232 = NULL;
		}
		
		ret |= ERR_USB_HOST_CONNECT_FAIL;
		*status = STATUS_SHAKER_NOT_READY;
	    return ret;
	}
}

uint8 check_sensor_connect_status(uint8 *status)
{
    uint8 ret = 1;
    common_ioctl_cb_t uart_iocb;
	unsigned short dataAvail, actual, offset;
	uint8 buffer[64];
	
#ifdef SENSOR_SIMULATE
    ret = STATUS_OK;
    (*status) = STATUS_SENSOR_READY;
	return ret;
#endif

	status = vos_dev_write(hUART, (uint8*)sensor_check, sizeof(sensor_check), NULL);
	delay_count = 4;

    while(delay_count > 0) {
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

			/*if (...) {
			    ret = STATUS_OK;
			    break;
	    	} */
	    }
    }

    if (STATUS_OK == ret)
		(*status) = STATUS_SENSOR_READY;
	else
		(*status) = STATUS_SENSOR_NOT_READY;
	
	return ret;
}
	
#define INSTRUCTION_EXEC_START      1
#define INSTRUCTION_EXEC_RUNNING    2
#define INSTRUCTION_EXEC_END        3

uint8 check_repeat_level(repeat_info *repeat)
{
    uint8 index = 0;
	
    for (index = 0; index < MAX_REPEAT_LEVEL; index++) {
        if (repeat[index].repeat_instruct_index == 0)
			break;
	}

	return index;
}

uint8 is_repeating(repeat_info *repeat, uint32 repeat_index)
{
    uint8 index = 0;
	
    for (index = 0; index < MAX_REPEAT_LEVEL; index++) {
        if (repeat[index].repeat_instruct_index == repeat_index)
			break;
	}

	return index;
}

uint8 repeat_count_exec(running_exec *exec)
{
    uint8 repeat_level_index = 0;
	uint8 ret = 0;
	uint32 next;
	uint32 count;

    repeat_level_index = is_repeating(exec->repeat_count, exec->script.instruct_index);
	if (MAX_REPEAT_LEVEL <= repeat_level_index) {
	    repeat_level_index = check_repeat_level(exec->repeat_count);
	    if (repeat_level_index < MAX_REPEAT_LEVEL) {
            exec->repeat_count[repeat_level_index].repeat_instruct_index = exec->script.instruct_index;
		    exec->repeat_count[repeat_level_index].repeat_instruct_from = exec->script.arg2;
		    exec->repeat_count[repeat_level_index].repeat_argument = exec->script.arg1;
		} else {
            /* this script's repeat level over MAX_REPEAT_LEVEL */
			ret = 1;
		}
	} else {
        exec->repeat_count[repeat_level_index].repeat_argument--;
	}


    if (exec->repeat_count[repeat_level_index].repeat_argument == 0) {
		exec->next_instruct_index = exec->current_instruct_index+1;
        memset(&(exec->repeat_count[repeat_level_index]), 0, sizeof(repeat_info));
    } else {
		exec->next_instruct_index = exec->repeat_count[repeat_level_index].repeat_instruct_from;
	}		

	exec->instruction_exec_status = INSTRUCTION_EXEC_END;
	return ret;
}

uint8 repeat_time_exec(running_exec *exec)
{
    uint8 repeat_level_index = 0;
	uint8 ret = 0;

    repeat_level_index = is_repeating(exec->repeat_time, exec->script.instruct_index);
	if (MAX_REPEAT_LEVEL <= repeat_level_index) {
	    repeat_level_index = check_repeat_level(exec->repeat_count);
	    if (repeat_level_index < MAX_REPEAT_LEVEL) {
            exec->repeat_time[repeat_level_index].repeat_instruct_index = exec->script.instruct_index;
		    exec->repeat_time[repeat_level_index].repeat_instruct_from = exec->script.arg2;
		    exec->repeat_time[repeat_level_index].repeat_argument = exec->script.arg1;
			repeat_time[repeat_level_index] = exec->script.arg1;
		} else {
            /* this script's repeat level over MAX_REPEAT_LEVEL */
			ret = 1;
		}
	}


    if (repeat_time[repeat_level_index] == 0) {
		exec->next_instruct_index = exec->current_instruct_index+1;
        memset(&(exec->repeat_time[repeat_level_index]), 0, sizeof(repeat_info));
    } else {
		exec->next_instruct_index = exec->repeat_time[repeat_level_index].repeat_instruct_from;
	}		

	exec->instruction_exec_status = INSTRUCTION_EXEC_END;
	return ret;
}

uint8 check_experiment_script(running_exec *exec)
{
	FILE *file;
	uint8 ret = 0;
	experiment_script_header header;
	
	if (INSTRUCTION_EXEC_END == (exec->instruction_exec_status)) {
	    file = fopen(script_file, "r");
	
	    if (file == NULL) {
		    ret |= ERR_OPEN_FILE_FAIL;
		    return ret;
	    }
		
		fread(&header, sizeof(experiment_script_header), 1, file);
		//(*cur_instruct_index)++;
		fseek(file, (exec->next_instruct_index-1)*sizeof(script_instruction), SEEK_CUR);
		fread(&(exec->script), sizeof(script_instruction), 1, file);
		exec->current_instruct_index = exec->script.instruct_index;
		
	    if (fclose(file) == -1) {
		    ret |= ERR_CLOSE_FILE_FAIL;
		    return ret;
	    }

		exec->instruction_exec_status = INSTRUCTION_EXEC_START;
	}

	return ret;
}
	
void notify_android_receive_sensor_data(unsigned char *buf, unsigned short len)
{
	unsigned short actualw;
	uint8 status;

    if (hANDROID_ACCESSORY != NULL) {
        vos_lock_mutex(&mInitAndroid);// hold here until unlocked - lock then proceed
		if (FALSE == can_notify) {
			vos_unlock_mutex(&mInitAndroid);
		    return;
		}
		gstAccPacketNotify.u8Prefix = PREFIX_VALUE;
		gstAccPacketNotify.u8Type = DATA_TYPE_NOTIFY_EXPERIMENT_DATA;
		gstAccPacketNotify.u8len = len;
	    memcpy(gstAccPacketNotify.u8Data, buf, gstAccPacketNotify.u8len);
		
		status = vos_dev_write(hANDROID_ACCESSORY, (uint8 *)&gstAccPacketNotify, gstAccPacketNotify.u8len+5, &actualw);		// then write to Android device
		vos_unlock_mutex(&mInitAndroid);						// unlock the AOA mutex
    } 
}

#define ERR_NO                          (0)
#define ERR_READ_SENSOR_TIMEOUT         (1)	
#define ERR_READ_SENSOR_DATA_NOMATCH    (2)	

uint8 transfer_number_to_string(char *buffer, int digits_len, int data)
{
    int digits = 0;
	int divider = 10;
	int i = 0;
	int zeros = 0;
	uint8 ret = 0;

	for (digits = 1; digits <= digits_len; digits++) {
        if ((data/divider) == 0)
			break;
		else
			divider = divider*10;
	}

	memset(buffer, 0, sizeof(buffer));

	if (digits <= digits_len)
        zeros = digits_len-digits;
	else {
		ret = 1;
		zeros = 0;
	}
	
	for(i = 0; i < zeros; i++) {
        buffer[i] = '0';
	}
	
    sprintf(&buffer[zeros],"%d", data);

	return ret;
}

uint8 read_sensor_exec(running_exec *exec)
{
	common_ioctl_cb_t uart_iocb;
	uint8 status = 0, ret = ERR_READ_SENSOR_TIMEOUT;
	unsigned short dataAvail, actual, offset, total_len;
	unsigned char raw_buffer[PACKET_DATA_SIZE];
	unsigned char buffer[PACKET_DATA_SIZE];

	status = vos_dev_write(hUART, (uint8*)sensor_request, sizeof(sensor_request), NULL);
    delay_count = 4;
	offset = 0;
	exec->instruction_exec_status = INSTRUCTION_EXEC_RUNNING;

	while (delay_count > 0) {
#ifndef SENSOR_SIMULATE
		uart_iocb.ioctl_code = VOS_IOCTL_COMMON_GET_RX_QUEUE_STATUS;
		vos_dev_ioctl(hUART, &uart_iocb);
		dataAvail = uart_iocb.get.queue_stat;
#else
        dataAvail = 66;
#endif

		if (dataAvail > 0) {
		    if (dataAvail > sizeof(buffer)) {
			    dataAvail = sizeof(buffer);
			}
#ifndef SENSOR_SIMULATE
			// read from UART
			status = vos_dev_read(hUART, &raw_buffer[offset], dataAvail, &actual);
			offset += actual;
#else
            memcpy(raw_buffer, "index: 597, 0704,  0702,  0698,  0698,  0694,  0694,  0692,  0693\r", dataAvail);
			offset += dataAvail;
#endif
			
			/* check head is "index", end is '\r' */
			if (raw_buffer[offset-1] == '\r') {
				if (raw_buffer[0] == 'i' && raw_buffer[1] == 'n' && raw_buffer[2] == 'd'
					&&	raw_buffer[3] == 'e' && raw_buffer[4] == 'x' ) {
					//	buffer[offset] = '\n';
					total_len = 0;
                    transfer_number_to_string(&buffer[total_len], 3, exec->pre_raw_index);
					total_len += 3;
					buffer[total_len] = ' ';
					total_len += 1;
					transfer_number_to_string(&buffer[total_len], 3, exec->current_raw_index);
					total_len += 3;
					buffer[total_len] = ' ';
					total_len += 1;
					transfer_number_to_string(&buffer[total_len], 10, machine_info.experiment_timer);
                    total_len += 10;
					buffer[total_len] = ' ';
					total_len += 1;
					memcpy(&buffer[total_len], raw_buffer, offset);
					total_len += offset;
					exec->pre_raw_index = exec->current_raw_index;
					exec->current_raw_index++;
					
					notify_android_receive_sensor_data(buffer, total_len);
					write_sensor_data_to_file(buffer, total_len);
					ret = ERR_NO;
				} else {
				    ret = ERR_READ_SENSOR_DATA_NOMATCH;
			    }
				
				offset = 0;
				/* sensor uart has reponse */
				machine_info.sensor_status = STATUS_SENSOR_READY;
				exec->next_instruct_index = exec->current_instruct_index+1;
				exec->instruction_exec_status = INSTRUCTION_EXEC_END;
				break;
			}
		}
	}
			
	if (ret == ERR_READ_SENSOR_TIMEOUT) {
        offset = 0;
		/* sensor uart timeout no reponse */
		machine_info.sensor_status = STATUS_SENSOR_NOT_READY;
		exec->next_instruct_index = exec->current_instruct_index+1;
		exec->instruction_exec_status = INSTRUCTION_EXEC_END;
	}
	
	return ret;
}
	
uint8 experiment_delay_exec(running_exec *exec)
{
	uint8 ret = 0;

    if (INSTRUCTION_EXEC_START == exec->instruction_exec_status) {
		experiment_delay = exec->script.arg1;
		exec->instruction_exec_status = INSTRUCTION_EXEC_RUNNING;
	} else if (0 == experiment_delay) {
	    exec->next_instruct_index = exec->current_instruct_index+1;
	    exec->instruction_exec_status = INSTRUCTION_EXEC_END;
	}
		
    return ret;
}

uint8 send_shaker_command(uint8 *cmd, uint8 cmd_len)
{
    uint16 actualw, actualr;
    uint8 i = 0;
	uint8 compare_result = TRUE;
	uint8 buffer[16];
	uint8 ret = 0;
	
    do {
	    ret = write_data_to_shaker(cmd, cmd_len, &actualw);
		ret = read_data_from_shaker(buffer, 16, &actualr);

        compare_result = TRUE;
		if (actualr == cmd_len) {
		    for (i = 0; i < actualr; i++) {
			    if (buffer[i] != cmd[i]) {
			        compare_result = FALSE;
				    break;
			    }		
		    }	
	    } else {
	        compare_result = FALSE;
	    }
		/* need timeout exception */
	} while (FALSE == compare_result);

	return ret;
}

uint8 shaker_on_exec(running_exec *exec) 
{
    uint8 ret = 0;
	
    ret = send_shaker_command(shaker_on, sizeof(shaker_on));
	
	exec->next_instruct_index = exec->current_instruct_index+1;
	exec->instruction_exec_status = INSTRUCTION_EXEC_END;

	return ret;
}

uint8 shaker_off_exec(running_exec *exec) 
{
    uint8 ret = 0;
	
    ret = send_shaker_command(shaker_off, sizeof(shaker_off));
	
	exec->next_instruct_index = exec->current_instruct_index+1;
	exec->instruction_exec_status = INSTRUCTION_EXEC_END;

	return ret;
}

uint8 shaker_set_temperature_exec(running_exec *exec) 
{
    uint8 ret = 0;
	uint8 buffer[6];
	
    ret = send_shaker_command(shaker_temperature, sizeof(shaker_temperature));
	transfer_number_to_string(buffer, 2, exec->script.arg1);
	ret = send_shaker_command(buffer, 2);
	ret = send_shaker_command(shaker_end, sizeof(shaker_end));
	
	exec->next_instruct_index = exec->current_instruct_index+1;
	exec->instruction_exec_status = INSTRUCTION_EXEC_END;

	return ret;
}

uint8 shaker_set_speed_exec(running_exec *exec) 
{
    uint8 ret = 0;
	uint8 buffer[6];
	
    ret = send_shaker_command(shaker_speed, sizeof(shaker_speed));

	transfer_number_to_string(buffer, 3, exec->script.arg1);
	ret = send_shaker_command(buffer, 2);
	ret = send_shaker_command(shaker_end, sizeof(shaker_end));
	
	exec->next_instruct_index = exec->current_instruct_index+1;
	exec->instruction_exec_status = INSTRUCTION_EXEC_END;

	return ret;
}

/*
	Thread Name:  uart_sensor()
	Comments:
	This thread reads data from the Nuvotun Sensor on UART and copies it to the Android device on USB1
*/	
void experiment_task()
{
	common_ioctl_cb_t uart_iocb;
	uint8 ret = 0;
	uint16 actualw, actualr;
	uint32 cur_loop_count = 0;
	running_exec current_instruction;
	uint8 device_status = 0;

	
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
	
	hFAT_FILE_SYSTEM = NULL;
	hBOMS = NULL;
	memset(&current_instruction, 0, sizeof(running_exec));
	current_instruction.instruction_exec_status = INSTRUCTION_EXEC_END;
	current_instruction.current_instruct_index = 0;
	current_instruction.next_instruct_index = 1;
	memset(repeat_time, 0, sizeof(repeat_time));
	machine_info.experiment_timer = 0;
	
	while(1) {
		// wait for enumeration to complete
	/*	vos_delay_msecs(100);
		vos_gpio_write_pin(GPIO_B_3, 0);
		vos_delay_msecs(100);
		vos_gpio_write_pin(GPIO_B_3, 1);
		
	*/	device_status = 0;
	    if (STATUS_OK != check_mass_storage_connect_status(&machine_info.mass_storage_status))
			device_status = (device_status<<1)|0x01;

		if (STATUS_OK != check_shaker_connect_status(&machine_info.shaker_status))
			device_status = (device_status<<1)|0x01;
		
		if (STATUS_OK != check_sensor_connect_status(&machine_info.sensor_status))
			device_status = (device_status<<1)|0x01;

        if(device_status != 0)
			continue;
		
		
		if ((STATUS_EXPERIMENT_START == machine_info.experiment_status) || (STATUS_EXPERIMENT_RUNNING == machine_info.experiment_status)) {	
		    if (STATUS_OK == check_experiment_script(&current_instruction)) {
				machine_info.current_instruction_index = current_instruction.current_instruct_index;
			    switch(current_instruction.script.instruct_type) {
				    case INSTRUCT_READ_SENSOR:
				        ret = read_sensor_exec(&current_instruction);
				    break;
						
					case INSTRUCT_SHAKER_ON:
						ret = shaker_on_exec(&current_instruction);
					break;
						
					case INSTRUCT_SHAKER_OFF:
						ret = shaker_off_exec(&current_instruction);
					break;
						
					case INSTRUCT_SHAKER_SET_TEMPERATURE:
						ret = shaker_set_temperature_exec(&current_instruction);
					break;
						
					case INSTRUCT_SHAKER_SET_SPEED:
						ret = shaker_set_speed_exec(&current_instruction);
					break;
						
					case INSTRUCT_REPEAT_COUNT:
						ret = repeat_count_exec(&current_instruction);
					break;
						
					case INSTRUCT_REPEAT_TIME:
						ret = repeat_time_exec(&current_instruction);
					break;

					case INSTRUCT_DELAY:
						ret = experiment_delay_exec(&current_instruction);
					break;
						
					case INSTRUCT_FINISH:
						machine_info.experiment_status = STATUS_EXPERIMENT_FINISH;
					    memset(&current_instruction, 0, sizeof(running_exec));
						current_instruction.instruction_exec_status = INSTRUCTION_EXEC_END;
						current_instruction.current_instruct_index = 0;
						current_instruction.next_instruct_index = 1;
						memset(repeat_time, 0, sizeof(repeat_time));
					break;
						
					default:
					break;
				}
			} else {
                machine_info.experiment_status = STATUS_EXPERIMENT_STOP;
			}
	    }
    }
}
	
