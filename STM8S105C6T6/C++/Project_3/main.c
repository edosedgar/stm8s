#include "stm8s105c6.h"
#include "functions.h"
#include "initperiphery.h"
#include "GeniusIRProtocol.c"

void main()
{
  InitSystemClock();
  InitPortsIO();  
  InitTimers();
  EnableInterrupts(); 
  while (1)
  {    
    GENSendPacketIR(0x00,0xF7,0x20,0xDF); //Led "Game"
    GENDelay100Us(500);
    GENSendPacketIR(0x00,0xF7,0xA0,0x5E); //Led "TV"
    GENDelay100Us(500);
    GENSendPacketIR(0x00,0xFC,0xA1,0x5E); //Led "DVD"
    GENDelay100Us(500);
    /*GENSendPacketIR(0x03,0xFC,0x51,0xAE); //Led "CD/MP3" 
    GENDelay100Us(500);
    GENSendPacketIR(0x03,0xFC,0x11,0xEE); //Led "Game"
    GENDelay100Us(500);
    GENSendPacketIR(0x03,0xFC,0xB1,0x4E); //Led "TV"
    GENDelay100Us(500);
    GENSendPacketIR(0x03,0xFC,0xA1,0x5E); //Led "DVD"
    GENDelay100Us(500);    
    GENSendPacketIR(0x03,0xFC,0xB1,0x4E); //Led "TV"
    GENDelay100Us(500);
    GENSendPacketIR(0x03,0xFC,0x11,0xEE); //Led "Game"
    GENDelay100Us(500);   */
  }
}
    
void HandlerTimer2()
{ 
  GENIRTimer100Us(); 
}


