#include "stm8s105c6.h"   //All registers and interrupts declared in "stm8s105c6.h"
#include "initperiphery.h"//File with initialization periphery
#include "functions.h"    //Default functions for normal working
#include "Nokia1616LCD.c"
#include "stdlib.h"
//----------------------------
void main()      
{ 
  char ru;
  InitSystemClock();
  InitPortsIO();   
  InitSPI();
  //InitTimers();
  //EnableInterrupts(); 
  InitLCD();
  DrawFillRectangle(1,1,130,130,0x000000);//Background
  ru=PIND;
  //DrawText(1,1,"Hello /@",1);
  for (char i=1;i<=255;i+=2) {
   DrawFillRectangle(1,i/2,130,1,i);   
  };
  while (1)   
  {   
    
  }   
} 
