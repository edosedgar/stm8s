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
  
  }
}


