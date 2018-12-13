/********************************************************************
 * @file bui_sseg_core.h
 *
 * @brief 7-segment LED Display Driver
 *
 * @author J. Bui
 *********************************************************************/
 
#ifndef 	_BUI_SSEG_CORE_H_INCLUDED
#define		_BUI_SSEG_CORE_H_INCLUDED
 
#include "chu_init.h"

class ssegCore {
public:
   /**
    * Register map
    */
   enum {
      DATA_LOW_REG = 0, 	// 32-bit data for right 4 digits
      DATA_HIGH_REG = 1, 	// 32-bit data for left 4 digits
	  DATA_DP_REG = 2		// 32-bit data, LSB for DP
   };

   ssegCore(uint32_t core_base_addr);
   ~ssegCore(); // not used

   /**
    * convert a hexadecimal digit to 7-seg pattern
    * @param hex a hexadecimal number (0 to 15)
    * @return 7-seg pattern w/ MSB equal to 1
    * @note return 0xff if hex exceeds 15
    */
   uint8_t hexToDisp(int hex);

   /**
    * write one 7-seg pattern to a specific position
    * @param pattern 7-seg pattern
    * @param pos digit position (0 is least significant digit)
    */
   void write_1ptn(uint8_t pattern, int pos);

   /**
    * write 8 7-seg patterns
    * @param ptn_array pointer to an 8-element pattern array
    */
   void write_8ptn(uint8_t *ptn_array);

   /**
    * set decimal points
    * @param pt decimal point patterns
    * @note each bit of pt control a decimal point of a 7-seg led.
    * @note decimal point turned on when the bit is 1 (active high).
    * @note LSB controls digit 0 of the display.
    *
    */
   void set_dp(uint8_t pt);

private:
   /* variable to keep track of current status */
   uint32_t base_addr;
   uint8_t ptn_buf[8];    // led pattern buffer
   uint8_t dp;            // decimal point
   /* methods */
   void write_disp();      // write patterns to reg
}
;

#endif
 
 
 
