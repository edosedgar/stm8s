void InitPortsIO();
void InitSystemClock();
void InitSPI();
void InitTimers();
void InitADC();
//----------------------------
void InitPortsIO()
{  
/************************/
//============  *6543***    
  DDRA= 0x00; //00000000
  CR1A= 0x00; //00000000
  PORTA=0x00; //00000000
/************************/
//============  76543210  
  DDRB= 0x00; //00000000
  CR1B= 0x00; //00000000
  PORTB=0x00; //00000000
/************************/
//============  7654321*   
  DDRC= 0x60; //01100000
  CR1C= 0x60; //01100000
  CR2C= 0x60; //01100000
  PORTC=0x00; //00000000
/************************/
//============  76543210   
  DDRD= 0x01; //00000001
  CR1D= 0x01; //00000001
  CR2D= 0x01; //00000001
  PORTD=0x00; //00000000
/************************/
//============  765*3210   
  DDRE= 0x20; //00100000
  CR1E= 0x20; //00100000
  PORTE=0x20; //00100000
/************************/
//============  ******10   
  DDRG= 0x00; //00000000
  CR1G= 0x00; //00000000
  PORTG=0x00; //00000000
/************************/
}

void InitSystemClock()
{
  CLK_ECKR=0x01;                 //Включаем HSE
  CLK_SWCR=0x02;                 //Разрешаем переключение источника тактовой частоты
  CLK_PCKENR1=0xFF;              //Разрешаем тактирование всей переферии
  while (BitIsClear(CLK_ECKR,1));//Ждем готовности источника тактирования
  CLK_CKDIVR=0x00;               //Предделитель равен нулю
  CLK_SWR=0xB4;                  //Выбираем HSE источником тактовой частоты  
  while (BitIsClear(CLK_SWCR,3));//Ждем готовности переключения
}

void InitSPI()
{
  SPI_CR1=0x54;//01010100
  SPI_CR2=0x03;//00000011
}

void InitTimers()
{
  //Timer 1  
  TIM1_PSCRH=0x00;
  TIM1_PSCRL=0x00;//~36KHz
  TIM1_ARRH= 0xFF;
  TIM1_ARRL= 0xFF;
  TIM1_BKR = 0x00;
  TIM1_CCER1=0x00;
  TIM1_CCMR2=0x00;
  TIM1_CR1=  0x81;//10000001
  TIM1_IER=  0x01;//00000001  
  //Timer 2
  TIM2_PSCR= 0x00;
  TIM2_ARRH= 0xFF;
  TIM2_ARRL= 0xFF;
  TIM2_CR1=  0x81;//10000001
  TIM2_IER=  0x01;//00000001  
  //Timer 3
  TIM3_PSCR= 0x00;
  TIM3_ARRH= 0xFF;
  TIM3_ARRL= 0xFF;
  TIM3_CR1=  0x81;//10000001
  TIM3_IER=  0x01;//00000001  
  //Timer 4
  TIM4_PSCR= 0x00;
  TIM4_ARR=  0xFF;
  TIM4_CR1=  0x81;//10000001
  TIM4_IER=  0x01;//00000001  
}

void InitADC()
{
  ADC_CSR=0x29;//00101001
  ADC_CR1=0x42;//01000010
  ADC_CR2=0x40;//00111000
  ADC_CR3=0x00;//00000000
  SetBit(ADC_CR1,0);//Start Conversion  
}