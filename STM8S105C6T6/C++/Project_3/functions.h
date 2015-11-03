//Declaration of functions
void Delay(unsigned int Cycles);
__monitor void SendSPI(char Data);
char ByteToChar(unsigned int Int);
//============================
//Delay Cycles
void Delay(unsigned int Cycles)
{
  while (Cycles!=0)
  {
    Cycles--;
  }
}
//============================
__monitor void SendSPI(char Data)
{
  SPI_DR=Data;
  while (BitIsSet(SPI_SR,7));  
}
//============================
char ByteToChar(unsigned int Int)
{
  Int+=0x30;
  return Int;
}
//============================
