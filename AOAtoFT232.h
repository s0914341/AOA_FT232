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
#define PACKET_DATA_SIZE   128
#define PREFIX_VALUE  0x0D
/*define the accessory packet format*/
typedef struct android_accessory_packet{
        unsigned char u8Prefix;
		unsigned char u8Type;     /* keypad,slider */
		unsigned char u8Status;   /* machine status */
		unsigned char u8Reserved; /* reserved for future use */
		unsigned char u8len;      /* data valid length */
		unsigned char u8Data[PACKET_DATA_SIZE]; /* data content */
}android_accessory_packet;
		
#endif /* _AOAtoFT232_H_ */
