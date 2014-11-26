/*
** Filename: AOAtoFT232.h
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

#ifndef _AOAtoFT232_H_
#define _AOAtoFT232_H_

#include "vos.h"

/* FTDI:SHF Header Files */
#include "USB.h"
#include "USBHost.h"
#include "GPIO.h"
#include "ioctl.h"
#include "USBAndroidAccessory.h"
#include "USBHostAndroidAccessory.h"
#include "USBHostFT232.h"
#include "FAT.h"
#include "msi.h"
#include "BOMS.h"
#include "UART.h"
#include "stdio.h"
#include "errno.h"
#include "string.h"
#include "time.h"
#include "Timers.h"
/* FTDI:EHF */

/* FTDI:SDC Driver Constants */
#define VOS_DEV_USBHOST_1            0
#define VOS_DEV_USBHOST_2            1
#define VOS_DEV_GPIO_PORT_A          2
#define VOS_DEV_GPIO_PORT_B          3
#define VOS_DEV_ANDROID_ACCESSORY    4
#define VOS_DEV_USBHOST_FT232        5
#define VOS_DEV_FAT_FILE_SYSTEM      6
#define VOS_DEV_UART		         7
#define VOS_DEV_BOMS			     8
#define VOS_DEV_TIMER0			     9

#define VOS_NUMBER_DEVICES           10
/* FTDI:EDC */

/* FTDI:SXH Externs */
/* FTDI:EXH */
/* android tablet and VNC2 handshake command */
#define ERR_OPEN_FILE_FAIL    (1<<0)
#define ERR_WRITE_FILE_FAIL   (1<<1)
#define ERR_READ_FILE_FAIL    (1<<2)
#define ERR_CLOSE_FILE_FAIL   (1<<3)

enum DATA_TYPE{
DATA_TYPE_KEYPAD = 0,
DATA_TYPE_GET_MACHINE_STATUS,
DATA_TYPE_SEND_SHAKER_COMMAND,
DATA_TYPE_GET_SHAKER_RETURN,
DATA_TYPE_GET_EXPERIMENT_DATA,
DATA_TYPE_SET_EXPERIMENT_SCRIPT,
DATA_TYPE_SET_EXPERIMENT_STATUS,

DATA_TYPE_NOTIFY_EXPERIMENT_DATA,

TOTAL_DATA_TYPE
};

#define STATUS_OK           0
#define STATUS_FAIL         1
#define STATUS_HAVE_DATA    2 
#define STATUS_START        3 

/*define the accessory packet format*/
#define PACKET_DATA_SIZE   128
#define PREFIX_VALUE       0x0D
#define HEADER_SIZE        5
typedef struct android_accessory_packet{
        unsigned char u8Prefix;
		unsigned char u8Type;     /* keypad,slider */
		unsigned char u8Status;   /* reponse */
		unsigned char u8Reserved; /* reserved for future use */
		unsigned char u8len;      /* data valid length */
		unsigned char u8Data[PACKET_DATA_SIZE]; /* data content */
}android_accessory_packet;


/* android get VNC2 machine informat */
#define STATUS_SHAKER_NOT_READY          0
#define STATUS_SHAKER_READY              1
#define STATUS_SHAKER_NO_RESPONSE        2

#define STATUS_SENSOR_NOT_READY          0
#define STATUS_SENSOR_READY              1
		
#define STATUS_MASS_STORAGE_NOT_READY    0
#define STATUS_MASS_STORAGE_READY        1
		
#define STATUS_SPI_STORAGE_NOT_READY     0
#define STATUS_SPI_STORAGE_READY         1
		
#define STATUS_EXPERIMENT_IDLE           0
#define STATUS_EXPERIMENT_START          1 
#define STATUS_EXPERIMENT_RUNNING        2
#define STATUS_EXPERIMENT_STOP           3
#define STATUS_EXPERIMENT_STORAGE_FULL   4
#define STATUS_EXPERIMENT_FINISH         5
		
#define SYNCHRONOUS_NO_DATA              0
#define SYNCHRONOUS_NEED                 1
		
typedef struct {
	uint8 shaker_status;
	uint8 sensor_status;
	uint8 mass_storage_status;
	uint8 spi_storage_status;
	uint8 experiment_status;
	uint8 experiment_progress;
	uint8 synchronous_sensor_data;
} machine_status;
		
#define CONNECTED_ANDROID    (1<<0)
#define CONNECTED_FT232      (1<<1)	

/* experiment script file struct */
#define EXPERIMENT_SCRIPT_HEADER    0xEE
typedef struct {
	uint8 header;
	uint8 item_num;
} experiment_script_header;

enum INSTRUCT_TYPE{
EXPERIMENT_INSTRUCT_SHAKER = 0,
EXPERIMENT_INSTRUCT_SENSOR,
EXPERIMENT_INSTRUCT_DELAY,
EXPERIMENT_INSTRUCT_LOOP,
EXPERIMENT_INSTRUCT_FINISH,

TOTAL_INSTRUCT_TYPE
};

typedef struct {
	uint8 instruct_index;
	uint8 instruct_type;
	uint8 arg_len;
	uint8 arg[4];
} script_instruction;
		
#endif /* _AOAtoFT232_H_ */
