/*****************************************************************//**
 * @file bui_3led.h
 *
 * @brief Contain classes of simple multicolor LED control
 *
 * Detailed description:
 *
 * @author Justin Bui
 * @version v1.0: initial release
 ********************************************************************/

#ifndef _BUI_3LED_H_INCLUDED
#define _BUI_3LED_H_INCLUDED

#include "chu_init.h"
#include "chu_io_rw.h"
#include "chu_io_map.h"

class mLED {
public:
   /**
    * register map
    *
    */
   enum {
      DATA_REG = 0 /**< input data register */
   };
   /**
    * constructor.
    *
    */
   mLED(uint32_t core_base_addr);
   ~mLED();                  // not used

   /* methods */
   uint32_t read();
   void write(uint32_t data);
   // set color function definitions
   void setRed();
   void setGreen();
   void setBlue();
   void clrRed();
   void clrGreen();
   void clrBlue();

private:
   uint32_t base_addr;
   uint32_t wr_data;
};

#endif
