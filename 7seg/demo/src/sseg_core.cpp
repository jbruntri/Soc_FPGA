/*****************************************************************//**
 * @file sseg_core.cpp
 *
 * @brief implementation of SsegCore class
 *
 * @author p chu
 * @version v1.0: initial release
 ********************************************************************/

#include "bui_sseg_core.h"

ssegCore::ssegCore(uint32_t core_base_addr) {
   const uint8_t HI_PTN[]={0xff,0xf9,0x89,0xff,0xff,0xff,0xff,0xff};
   base_addr = core_base_addr;
   write_8ptn((uint8_t*) HI_PTN);
   set_dp(0x02);
}

ssegCore::~ssegCore() {
}
// not used

void ssegCore::write_disp() {
   int i, p;
   uint32_t word = 0;

   // pack left 4 patterns into a 32-bit word
   // ptn_buf[0] is the leftmost led
   for (i = 0; i < 4; i++) {
      word = (word << 8) | ptn_buf[3 - i];
   }
   io_write(base_addr, DATA_LOW_REG, word);

   // pack right 4 patterns into a 32-bit word
   for (i = 0; i < 4; i++) {
      word = (word << 8) | ptn_buf[7 - i];
   }
   io_write(base_addr, DATA_HIGH_REG, word);
   // transmit decimal points
   word = dp;
   io_write(base_addr, DATA_DP_REG, word);

}

void ssegCore::write_8ptn(uint8_t *ptn_array) {
   int i;

   for (i = 0; i < 8; i++) {
      ptn_buf[i] = *ptn_array;
      ptn_array++;
   }
   write_disp();
}

void ssegCore::write_1ptn(uint8_t pattern, int pos) {
   ptn_buf[pos] = pattern;
   write_disp();
}

// set decimal points,
// bits turn on the corresponding decimal points
void ssegCore::set_dp(uint8_t pt) {
   dp = ~pt;     // active low
   write_disp();
}

// convert a hex digit to
uint8_t ssegCore::hexToDisp(int hex) {
   /* active-low hex digit 7-seg patterns (0-9,a-f); MSB assigned to 1 */
   static const uint8_t PTN_TABLE[16] =
     {0, 1, 2, 3, 4, 5, 6, 7, 8, 9,  //0-9
      10, 11, 12, 13, 14, 15 };                       //a-f
   uint8_t ptn;

   if (hex < 16)
      ptn = PTN_TABLE[hex];
   else
      ptn = 0xff;
   return (ptn);
}
