#include "stm8s105c6.h"
#include "functions.h"
#include "initperiphery.h"

void main()
{
  InitSystemClock();
  InitPortsIO();  
  InitTimers();
  EnableInterrupts();   
  while (1)
  {
    if ((PINB&0x80)==0x80) 
    {
      asm("BRES 0x5340,#0");
      asm("BSET 0x525C,#4"); 
    };
    if ((PINB&0x80)==0x00) 
    {
      asm("BSET 0x5340,#0");
    };
    
  }
}

void HandlerTimer4 (void)
{
  asm("BCPL 0x525C,#4"); //TIM1_CCER1.CC2E=!TIM1_CCER1.CC2E 
};


