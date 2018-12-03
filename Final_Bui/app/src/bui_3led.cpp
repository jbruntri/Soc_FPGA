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
mLED::setRed() {

}
