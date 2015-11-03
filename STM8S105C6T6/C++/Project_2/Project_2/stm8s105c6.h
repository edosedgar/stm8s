/*#define SetBit(VAR,Place)         ( (VAR) |= (char)((char)1<<(char)(Place)) )
#define ClrBit(VAR,Place)         ( (VAR) &= (char)((char)((char)1<<(char)(Place))^(char)255) ); 
#define InvBit(VAR,Place)         ( (VAR) ^= (char)((char)1<<(char)(Place)) );   */
#define   SetBit(reg, bit)          reg |= (1<<bit)            
#define   ClrBit(reg, bit)          reg &= (~(1<<bit))
#define   InvBit(reg, bit)          reg ^= (1<<bit)
#define   BitIsSet(reg, bit)        ((reg & (1<<bit)) != 0)
#define   BitIsClear(reg, bit)      ((reg & (1<<bit)) == 0)
//PORTD |= (1<<7)|(1<<6);//Set
//PORTD^=(1<<0)|(1<<1);Cnahge
//while (!( CLK_ECKR & (1<<1)));wait while 1 bit CLK_ECKR=0
//******************************************
//**Файл описания регистров для STM8S105C6**
//******************************************
//Порт A
#define PORTA        (* (char *) 0x5000)
#define PINA         (* (char *) 0x5001)
#define DDRA         (* (char *) 0x5002)
#define CR1A         (* (char *) 0x5003)
#define CR2A         (* (char *) 0x5004)
//******************************************
//Порт B
#define PORTB        (* (char *) 0x5005)
#define PINB         (* (char *) 0x5006)
#define DDRB         (* (char *) 0x5007)
#define CR1B         (* (char *) 0x5008)
#define CR2B         (* (char *) 0x5009)
//******************************************
//Порт C
#define PORTC        (* (char *) 0x500A)
#define PINC         (* (char *) 0x500B)
#define DDRC         (* (char *) 0x500C)
#define CR1C         (* (char *) 0x500D)
#define CR2C         (* (char *) 0x500E)
//******************************************
//Порт D
#define PORTD        (* (char *) 0x500F)
#define PIND         (* (char *) 0x5010)
#define DDRD         (* (char *) 0x5011)
#define CR1D         (* (char *) 0x5012)
#define CR2D         (* (char *) 0x5013)
//******************************************
//Порт E
#define PORTE        (* (char *) 0x5014)
#define PINE         (* (char *) 0x5015)
#define DDRE         (* (char *) 0x5016)
#define CR1E         (* (char *) 0x5017)
#define CR2E         (* (char *) 0x5018)
//******************************************
//Порт G
#define PORTG        (* (char *) 0x501E)
#define PING         (* (char *) 0x501F)
#define DDRG         (* (char *) 0x5020)
#define CR1G         (* (char *) 0x5021)
#define CR2G         (* (char *) 0x5022)
//******************************************
//Clock 
#define CLK_ICKR     (* (char *) 0x50C0)   
#define CLK_ECKR     (* (char *) 0x50C1)   
#define CLK_CMSR     (* (char *) 0x50C3)   
#define CLK_SWR      (* (char *) 0x50C4)   
#define CLK_SWCR     (* (char *) 0x50C5)  
#define CLK_CKDIVR   (* (char *) 0x50C6)  
#define CLK_PCKENR1  (* (char *) 0x50C7)  
#define CLK_CSSR     (* (char *) 0x50C8)  
#define CLK_CCOR     (* (char *) 0x50C9)   
#define CLK_PCKENR2  (* (char *) 0x50CA)  
#define CLK_CANCCR   (* (char *) 0x50CB) 
#define CLK_HSITRIMR (* (char *) 0x50CC)  
#define CLK_SWIMCCR  (* (char *) 0x50CD)
//******************************************
//SPI
#define SPI_CR1      (* (char *) 0x5200)   
#define SPI_CR2      (* (char *) 0x5201)   
#define SPI_ICR      (* (char *) 0x5202)   
#define SPI_SR       (* (char *) 0x5203)  
#define SPI_DR       (* (char *) 0x5204)   
#define SPI_CRCPR    (* (char *) 0x5205)  
#define SPI_RXCRCR   (* (char *) 0x5206) 
#define SPI_TXCRCR   (* (char *) 0x5207)  
//******************************************
//ТАймер 1
#define TIM1_CR1     (* (char *) 0x5250)   
#define TIM1_CR2     (* (char *) 0x5251)   
#define TIM1_SMCR    (* (char *) 0x5252)   
#define TIM1_ETR     (* (char *) 0x5253)   
#define TIM1_IER     (* (char *) 0x5254)   
#define TIM1_SR1     (* (char *) 0x5255)  
#define TIM1_SR2     (* (char *) 0x5256)   
#define TIM1_EGR     (* (char *) 0x5257)  
#define TIM1_CCMR1   (* (char *) 0x5258)   
#define TIM1_CCMR2   (* (char *) 0x5259)  
#define TIM1_CCMR3   (* (char *) 0x525A)  
#define TIM1_CCMR4   (* (char *) 0x525B)  
#define TIM1_CCER1   (* (char *) 0x525C)  
#define TIM1_CCER2   (* (char *) 0x525D)  
#define TIM1_CNTRH   (* (char *) 0x525E)   
#define TIM1_CNTRL   (* (char *) 0x525F)  
#define TIM1_PSCRH   (* (char *) 0x5260)  
#define TIM1_PSCRL   (* (char *) 0x5261)   
#define TIM1_ARRH    (* (char *) 0x5262)   
#define TIM1_ARRL    (* (char *) 0x5263)  
#define TIM1_RCR     (* (char *) 0x5264)   
#define TIM1_CCR1H   (* (char *) 0x5265)  
#define TIM1_CCR1L   (* (char *) 0x5266) 
#define TIM1_CCR2H   (* (char *) 0x5267)   
#define TIM1_CCR2L   (* (char *) 0x5268) 
#define TIM1_CCR3H   (* (char *) 0x5269)  
#define TIM1_CCR3L   (* (char *) 0x526A)  
#define TIM1_CCR4H   (* (char *) 0x526B)  
#define TIM1_CCR4L   (* (char *) 0x526C)  
#define TIM1_BKR     (* (char *) 0x526D)  
#define TIM1_DTR     (* (char *) 0x526E)   
#define TIM1_OISR    (* (char *) 0x526F) 
//******************************************
//Таймер 2
#define TIM2_CR1     (* (char *) 0x5300)  
#define TIM2_IER     (* (char *) 0x5301)  
#define TIM2_SR1     (* (char *) 0x5302)  
#define TIM2_SR2     (* (char *) 0x5303)  
#define TIM2_EGR     (* (char *) 0x5304) 
#define TIM2_CCMR1   (* (char *) 0x5305)  
#define TIM2_CCMR2   (* (char *) 0x5306)   
#define TIM2_CCMR3   (* (char *) 0x5307)   
#define TIM2_CCER1   (* (char *) 0x5308)   
#define TIM2_CCER2   (* (char *) 0x5309)   
#define TIM2_CNTRH   (* (char *) 0x530A)   
#define TIM2_CNTRL   (* (char *) 0x530B)   
#define TIM2_PSCR    (* (char *) 0x530C)   
#define TIM2_ARRH    (* (char *) 0x530D)   
#define TIM2_ARRL    (* (char *) 0x530E) 
#define TIM2_CCR1H   (* (char *) 0x530F)  
#define TIM2_CCR1L   (* (char *) 0x5310)  
#define TIM2_CCR2H   (* (char *) 0x5311)   
#define TIM2_CCR2L   (* (char *) 0x5312)   
#define TIM2_CCR3H   (* (char *) 0x5313)  
#define TIM2_CCR3L   (* (char *) 0x5314)  
//******************************************
//Таймер 3
#define TIM3_CR1     (* (char *) 0x5320)  
#define TIM3_IER     (* (char *) 0x5321)   
#define TIM3_SR1     (* (char *) 0x5322)   
#define TIM3_SR2     (* (char *) 0x5323)   
#define TIM3_EGR     (* (char *) 0x5324)  
#define TIM3_CCMR1   (* (char *) 0x5325)  
#define TIM3_CCMR2   (* (char *) 0x5326)   
#define TIM3_CCER1   (* (char *) 0x5327) 
#define TIM3_CNTRH   (* (char *) 0x5328)   
#define TIM3_CNTRL   (* (char *) 0x5329)  
#define TIM3_PSCR    (* (char *) 0x532A)  
#define TIM3_ARRH    (* (char *) 0x532B)   
#define TIM3_ARRL    (* (char *) 0x532C)   
#define TIM3_CCR1H   (* (char *) 0x532D)  
#define TIM3_CCR1L   (* (char *) 0x532E)  
#define TIM3_CCR2H   (* (char *) 0x532F)  
#define TIM3_CCR2L   (* (char *) 0x5330)   
//******************************************
//Таймер 4
#define TIM4_CR1     (* (char *) 0x5340)   
#define TIM4_IER     (* (char *) 0x5341)   
#define TIM4_SR      (* (char *) 0x5342)   
#define TIM4_EGR     (* (char *) 0x5343)  
#define TIM4_CNTR    (* (char *) 0x5344)  
#define TIM4_PSCR    (* (char *) 0x5345)   
#define TIM4_ARR     (* (char *) 0x5346)   
//******************************************
//UART
#define UART2_SR     (* (char *) 0x5240)   
#define UART2_DR     (* (char *) 0x5241)   
#define UART2_BRR1   (* (char *) 0x5242)   
#define UART2_BRR2   (* (char *) 0x5243)  
#define UART2_CR1    (* (char *) 0x5244)   
#define UART2_CR2    (* (char *) 0x5245)  
#define UART2_CR3    (* (char *) 0x5246)  
#define UART2_CR4    (* (char *) 0x5247)  
#define UART2_CR6    (* (char *) 0x5249)  
#define UART2_GTR    (* (char *) 0x524A)  
#define UART2_PSCR   (* (char *) 0x524B)  
//******************************************
//Flash
#define FLASH_CR1    (* (char *) 0x505A) 
#define FLASH_CR2    (* (char *) 0x505B)  
#define FLASH_NCR2   (* (char *) 0x505C) 
#define FLASH_FPR    (* (char *) 0x505D)  
#define FLASH_NFPR   (* (char *) 0x505E)  
#define FLASH_IAPSR  (* (char *) 0x505F)  
#define FLASH_PUKR   (* (char *) 0x5062)  
#define FLASH_DUKR   (* (char *) 0x5064)  
//******************************************
//WWDG
#define WWDG_CR      (* (char *) 0x50D1)   
#define WWDG_WR      (* (char *) 0x50D2)
//******************************************
//IWDG
#define IWDG_KR      (* (char *) 0x50E0)   
#define IWDG_PR      (* (char *) 0x50E1)   
#define IWDG_RLR     (* (char *) 0x50E2)   
//******************************************
//AWU
#define AWU_CSR1     (* (char *) 0x50F0)  
#define AWU_APR      (* (char *) 0x50F1)  
#define AWU_TBR      (* (char *) 0x50F2)  
//******************************************
//BEEP
#define BEEP_CSR     (* (char *) 0x50F3) 
//******************************************
//EXTI
#define EXTI_CR1     (* (char *) 0x50A0)   
#define EXTI_CR2     (* (char *) 0x50A1)  
//******************************************
//RESET
#define RST_SR       (* (char *) 0x50B3)   
//******************************************
//Other
#define CFG_GCR      (* (char *) 0x7F60)   
#define ITC_SPR1     (* (char *) 0x7F70)   
#define ITC_SPR2     (* (char *) 0x7F71)   
#define ITC_SPR3     (* (char *) 0x7F72)   
#define ITC_SPR4     (* (char *) 0x7F73)   
#define ITC_SPR5     (* (char *) 0x7F74)   
#define ITC_SPR6     (* (char *) 0x7F75)   
#define ITC_SPR7     (* (char *) 0x7F76)  
#define ITC_SPR8     (* (char *) 0x7F77)   
#define SWIM_CSR     (* (char *) 0x7F80)  
//******************************************
//I2C
#define I2C_CR1      (* (char *) 0x5210)
#define I2C_CR2      (* (char *) 0x5211)
#define I2C_FREQR    (* (char *) 0x5212)
#define I2C_OARL     (* (char *) 0x5213)
#define I2C_OARH     (* (char *) 0x5214)
#define I2C_DR       (* (char *) 0x5216)
#define I2C_SR1      (* (char *) 0x5217)
#define I2C_SR2      (* (char *) 0x5218)
#define I2C_SR3      (* (char *) 0x5219)
#define I2C_ITR      (* (char *) 0x521A)
#define I2C_CCRL     (* (char *) 0x521B)
#define I2C_CCRH     (* (char *) 0x521C)
#define I2C_TRISER   (* (char *) 0x521D)       
#define I2C_PECR I2C (* (char *) 0x521E)
//******************************************
//ADC
#define ADC_CSR      (* (char *) 0x5400)   
#define ADC_CR1      (* (char *) 0x5401)  
#define ADC_CR2      (* (char *) 0x5402)  
#define ADC_CR3      (* (char *) 0x5403)  
#define ADC_DRH      (* (char *) 0x5404)  
#define ADC_DRL      (* (char *) 0x5405) 
#define ADC_TDRH     (* (char *) 0x5406)  
#define ADC_TDRL     (* (char *) 0x5407)   
#define ADC_HTRH     (* (char *) 0x5408)  
#define ADC_HTRL     (* (char *) 0x5409)  
#define ADC_LTRH     (* (char *) 0x540A)  
#define ADC_LTRL     (* (char *) 0x540B)   
#define ADC_AWSRH    (* (char *) 0x540C)  
#define ADC_AWSRL    (* (char *) 0x540D)   
#define ADC_AWCRH    (* (char *) 0x540E)  
#define ADC_AWCRL    (* (char *) 0x540F)   
//******************************************
//************************************************************************************************************************************
//************************************************************************************************************************************
//************************************************************************************************************************************
//Declaration of functions
void HandlerTimer1();
void HandlerTimer2();
void HandlerTimer3();
void HandlerTimer4();
void HandlerADC();
void HandlerAWU();
void HandlerEXTI0();
void HandlerEXTI1();
void HandlerEXTI2();
void HandlerEXTI3();
void HandlerEXTI4();
void HandlerEndTransferSPI();
void EnableInterrupts();
void DisableInterrupts();
//=============================================
//Разрешаем прерывания
void EnableInterrupts()
{
  asm("RIM");
}
//**********************************************
//Запрещаем прерывания
void DisableInterrupts()
{
  asm("SIM");
}
//**********************************************
//Обработчик при переполнении счетчика таймера 1
#pragma vector=0x0D
__interrupt void Timer1(void)
{
  asm("BRES 0x5255,#0");
  //HandlerTimer1();
}
//**********************************************
//Обработчик при переполнении счетчика таймера 2
#pragma vector=0x0F
__interrupt void Timer2(void)
{
  asm("BRES 0x5302,#0");
  //HandlerTimer2();
}
//**********************************************
//Обработчик при переполнении счетчика таймера 3
#pragma vector=0x11
__interrupt void Timer3(void)
{
  asm("BRES 0x5322,#0");
  //HandlerTimer3();
}
//**********************************************
//Обработчик при переполнении счетчика таймера 4
#pragma vector=0x19
__interrupt void Timer4(void)
{
  asm("BRES 0x5342,#0");
  //HandlerTimer4();
}
//**********************************************
//Обработка результата конвертации ADC
#pragma vector=0x18
__interrupt void ADC(void)
{
  //HandlerADC();
}
//**********************************************
//Пробуждение после сна, заданного времени
#pragma vector=0x03
__interrupt void AWU(void)
{
  //HandlerAWU();
}
//**********************************************
//Port A external interrupts
#pragma vector=0x05
__interrupt void EXTI0(void)
{
  //HandlerEXTI0();
}
//**********************************************
//Port B external interrupts
#pragma vector=0x06
__interrupt void EXTI1(void)
{
  //HandlerEXTI1();
}
//**********************************************
//Port C external interrupts
#pragma vector=0x07
__interrupt void EXTI2(void)
{
  //HandlerEXTI2();
}
//**********************************************
//Port D external interrupts
#pragma vector=0x08
__interrupt void EXTI3(void)
{
  //HandlerEXTI3();
}
//**********************************************
//Port E external interrupts
#pragma vector=0x09
__interrupt void EXTI4(void)
{
  //HandlerEXTI4();
}
//**********************************************
//SPI End of transfer
#pragma vector=0x0C
__interrupt void SPIEndTransfer(void)
{
  //HandlerEndTransferSPI();
}
//**********************************************