//Declaration of functions
void Delay(unsigned long Cycles);
__monitor void SendSPI(char Data);
char DigitToChar(unsigned int Digit);
//============================
//Delay Cycles
void Delay(unsigned long Cycles)
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
char DigitToChar(unsigned int Digit)
{
  Digit+=0x30;
  return Digit;
}
//============================
