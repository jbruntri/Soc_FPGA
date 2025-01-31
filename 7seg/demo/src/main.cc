/*
 * Empty C++ Application
 */

#include "gpio_cores.h"
#include "bui_sseg_core.h"

void sseg_check(ssegCore *sseg_p) {
   int h,i,j,k,l,m;

   //turn off led
   for (i = 0; i < 8; i++) {
      sseg_p->write_1ptn(0xff, i);
   }
   //turn off all decimal points
   sseg_p->set_dp(0x00);

   // display 0x0 to 0xf in 4 epochs
   // upper 4  digits mirror the lower 4
   for (h = 0; h < 15; h++) {
      for (i = 0; i < 16; i++) {
	  for(j = 0; j <16; j++)
	  {
		  if(j>0)
			  sseg_p->set_dp(0x08);		// seconds decimal point
		  for(k=0; k<16; k++){
			  for(l=0; l<16; l++){
				  for(m=0; m<16; m++){
					  sseg_p->write_1ptn(sseg_p->hexToDisp(m), 0);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(l), 1);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(k), 2);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(j), 3);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(i), 4);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(h), 5);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(0), 6);
					  sseg_p->write_1ptn(sseg_p->hexToDisp(0), 7);

					  sleep_us(244);	// 244us cycles 0-4096, 1s display cycle
				  }
			  }
		  }
	  }
  }

}


}

ssegCore sseg(get_slot_addr(BRIDGE_BASE, S8_SSEG));


int main()
{
	while(1)
	{
		sseg_check(&sseg);
		sleep_ms(10000);
	}
    return 0;
}
