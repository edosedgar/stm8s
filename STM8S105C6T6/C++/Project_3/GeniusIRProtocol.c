unsigned int GENuSec100=0;

void GENDelay100Us (unsigned int Time)
{ 
  asm("BSET 0x5300,#0"); //TIM2_CR1.CEN=1
  while (GENuSec100!=Time);
  asm("BRES 0x5300,#0"); //TIM2_CR1.CEN=0
  GENuSec100=0;
};

void GENSendBitIR (char Bit)
{
  if (Bit==1) 
  {
    asm("BSET 0x525C,#4"); //TIM1_CCER1.CC2E=1
    GENDelay100Us(5);
    asm("BRES 0x525C,#4");    
  } else GENDelay100Us(5); //TIM1_CCER1.CC2E=1
};

void GENSendByteIR (char Byte)
{
  for (char i=0;i<=7;i++)
  {
    if (BitIsClear(Byte,7-i)) 
    {               
      GENSendBitIR(1); 
      GENSendBitIR(0); 
    } else 
    {
      GENSendBitIR(1); 
      GENSendBitIR(0);      
      GENSendBitIR(0); 
      GENSendBitIR(0); 
    };
  }
};

void GENSendPacketIR (char Byte1,char Byte2,char Byte3,char Byte4)
{
  asm("BSET 0x525C,#4");
  GENDelay100Us(100);
  asm("BRES 0x525C,#4"); 
  GENDelay100Us(50);
  GENSendByteIR(Byte1);
  GENSendByteIR(Byte2);
  GENSendByteIR(Byte3);
  GENSendByteIR(Byte4);
  GENSendBitIR(1);
};

void GENIRTimer100Us()
{
  GENuSec100+=1;   
};