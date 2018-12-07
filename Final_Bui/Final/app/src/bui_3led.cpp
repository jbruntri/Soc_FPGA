/*****************************************************************//**
 * @file bui_3led.cpp
 *
 * @brief implementation of the multicolored led class
 *
 * @author Justin Bui
 * @version v1.0: initial release
 ********************************************************************/

#include "bui_3led.h"

mLED::mLED(uint32_t core_base_addr) {
   base_addr = core_base_addr;
   write(0x101);
}
mLED::~mLED() {
}

uint32_t mLED::read() {
   return (io_read(base_addr, DATA_REG));
}

void mLED::write(uint32_t data)
{
   wr_data = data;
   io_write(base_addr, DATA_REG, wr_data);
}
// Set Red LED Bit (1 or 9)
void mLED::setRed(uint8_t led) {
	uint32_t red;
	if(led==1)
		red=0x100;
	else
		red=0x1;
	write(red);
}
// Set Green LED Bit (2 or 10)
void mLED::setGreen(uint8_t led){
	uint32_t green;
	if(led==1)
		green=0x200;
	else
		green=0x2;
	write(green);
}
// Set Blue LED Bit (3 or 11)
void mLED::setBlue(uint8_t led){
	uint32_t blue;
	if(led==1)
		blue=0x400;
	else
		blue=0x4;
	write(blue);
}
// Clear Red LED Bit
void mLED::clrRed(uint8_t led){
	uint32_t dat = read();
	if(led==1)
		write(dat & ~0x100);
	else
		write(dat & ~0x1);
}
// Clear Green LED Bit
void mLED::clrGreen(uint8_t led){
	uint32_t dat = read();
	if(led==1)
		write(dat & ~0x200);
	else
		write(dat & ~0x2);
}
// Clear Blue LED Bit
void mLED::clrBlue(uint8_t led){
	uint32_t dat = read();
	if(led==1)
		write(dat & ~0x400);
	else
		write(dat & ~0x4);
}
