unsigned int uSec100=0;

void Delay100Us (unsigned int Time)
{ 
  asm("BSET 0x5300,#0"); //TIM2_CR1.CEN=1
  while (uSec100!=Time);
  asm("BRES 0x5300,#0"); //TIM2_CR1.CEN=0
  uSec100=0;
};

void SendBitIR (char Bit)
{
  if (Bit==1) 
  {
    asm("BSET 0x525C,#4"); //TIM1_CCER1.CC2E=1
    Delay100Us(5);
    asm("BRES 0x525C,#4");    
  } else Delay100Us(5);    //TIM1_CCER1.CC2E=1
};

void SendByteIR (char Byte)
{
  for (char i=0;i<=7;i++)
  {
    if (BitIsClr(Byte,7-i)) 
    {               
      SendBitIR(1); 
      SendBitIR(0); 
    } else 
    {
      SendBitIR(1); 
      SendBitIR(0);      
      SendBitIR(0); 
      SendBitIR(0); 
    };
  }
};

void SendPacketIR (char Byte1,char Byte2,char Byte3,char Byte4)
{
  asm("BSET 0x525C,#4");
  Delay100Us(100);
  asm("BRES 0x525C,#4"); 
  Delay100Us(50);
  SendByteIR(Byte1);
  SendByteIR(Byte2);
  SendByteIR(Byte3);
  SendByteIR(Byte4);
  SendBitIR(1);
};

void IRTimer100Us()
{
  uSec100+=1;   
};