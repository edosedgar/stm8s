;====================================================================================
	WORDS			; The following addresses are 16 bits long
	segment byte at 4000-43FF 'EEPROM'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8080-FFFF 'ROM'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8000-807F 'INTERRUPT'
;====================================================================================
PORTA        EQU    $5000
PINA         EQU    $5001
DDRA         EQU    $5002
CR1A         EQU    $5003
CR2A         EQU    $5004
;====================================================================================
PORTB        EQU    $5005
PINB         EQU    $5006
DDRB         EQU    $5007
CR1B         EQU    $5008
CR2B         EQU    $5009
;====================================================================================
PORTC        EQU    $500A
PINC         EQU    $500B
DDRC         EQU    $500C
CR1C         EQU    $500D
CR2C         EQU    $500E
;====================================================================================
PORTD        EQU    $500F
PIND         EQU    $5010
DDRD         EQU    $5011
CR1D         EQU    $5012
CR2D         EQU    $5013
;====================================================================================
PORTE        EQU    $5014
PINE         EQU    $5015
DDRE         EQU    $5016
CR1E         EQU    $5017
CR2E         EQU    $5018
;====================================================================================
PORTG        EQU    $501E
PING         EQU    $501F
DDRG         EQU    $5020
CR1G         EQU    $5021
CR2G         EQU    $5022
;====================================================================================
EXTI_CR1     EQU    $50A0   ; External interrupt control register 1 
EXTI_CR2     EQU    $50A1   ; External interrupt control register 2 
RST_SR       EQU    $50B3   ; Reset status register 
;====================================================================================
CLK_ICKR     EQU    $50C0   ; Internal clock control register         
CLK_ECKR     EQU    $50C1   ; External clock control register         
CLK_CMSR     EQU    $50C3   ; Clock master status register            
CLK_SWR      EQU    $50C4   ; Clock master switch register            
CLK_SWCR     EQU    $50C5   ; Clock switch control register           
CLK_CKDIVR   EQU    $50C6   ; Clock divider register                  
CLK_PCKENR1  EQU    $50C7   ; Peripheral clock gating register 1      
CLK_CSSR     EQU    $50C8   ; Clock security system register          
CLK_CCOR     EQU    $50C9   ; Configurable clock control register     
CLK_PCKENR2  EQU    $50CA   ; Peripheral clock gating register 2      
CLK_CANCCR   EQU    $50CB   ; CAN clock control register              
CLK_HSITRIMR EQU    $50CC   ; HSI clock calibration trimming register 
CLK_SWIMCCR  EQU    $50CD   ; SWIM clock control register             
;====================================================================================
UART1_SR     EQU    $5230   ; UART1 status register       
UART1_DR     EQU    $5231   ; UART1 data register         
UART1_BRR1   EQU    $5232   ; UART1 baud rate register    
UART1_BRR2   EQU    $5233   ; UART1 baud rate register    
UART1_CR1    EQU    $5234   ; UART1 control register 1    
UART1_CR2    EQU    $5235   ; UART1 control register 2    
UART1_CR3    EQU    $5236   ; UART1 control register 3    
UART1_CR4    EQU    $5237   ; UART1 control register 4    
UART1_CR5    EQU    $5238   ; UART1 control register 5    
UART1_GTR    EQU    $5239   ; UART1 guard time register   
UART1_PSCR   EQU    $523A   ; UART1 prescaler register    
;====================================================================================
SPI_CR1      EQU    $5200   ; SPI control register 1          
SPI_CR2      EQU    $5201   ; SPI control register 2          
SPI_ICR      EQU    $5202   ; SPI interrupt control register 
SPI_SR       EQU    $5203   ; SPI status register             
SPI_DR       EQU    $5204   ; SPI data register              
SPI_CRCPR    EQU    $5205   ; SPI CRC polynomial register     
SPI_RXCRCR   EQU    $5206   ; SPI Rx CRC register             
SPI_TXCRCR   EQU    $5207   ; SPI Tx CRC register             
;====================================================================================
FLASH_CR1    EQU    $505A   ; Flash control register 1                         
FLASH_CR2    EQU    $505B   ; Flash control register 2                         
FLASH_NCR2   EQU    $505C   ; Flash complementary control register 2           
FLASH_FPR    EQU    $505D   ; Flash protection register                        
FLASH_NFPR   EQU    $505E   ; Flash complementary protection register          
FLASH_IAPSR  EQU    $505F   ; Flash in-application programming status register 
FLASH_PUKR   EQU    $5062   ; Flash program memory unprotection register       
FLASH_DUKR   EQU    $5064   ; Data EEPROM unprotection register                
;====================================================================================
WWDG_CR      EQU    $50D1   ; WWDG control register                      
WWDG_WR      EQU    $50D2   ; WWDR window register                       
IWDG_KR      EQU    $50E0   ; IWDG key register                          
IWDG_PR      EQU    $50E1   ; IWDG prescaler register                    
IWDG_RLR     EQU    $50E2   ; IWDG reload register                       
AWU_CSR1     EQU    $50F0   ; AWU control/status register 1              
AWU_APR      EQU    $50F1   ; AWU asynchronous prescaler buffer register 
AWU_TBR      EQU    $50F2   ; AWU timebase selection register            
BEEP_CSR     EQU    $50F3   ; BEEP control/status register               
;====================================================================================
TIM1_CR1     EQU    $5250   ; TIM1 control register 1                
TIM1_CR2     EQU    $5251   ; TIM1 control register 2                
TIM1_SMCR    EQU    $5252   ; TIM1 slave mode control register       
TIM1_ETR     EQU    $5253   ; TIM1 external trigger register         
TIM1_IER     EQU    $5254   ; TIM1 interrupt enable register         
TIM1_SR1     EQU    $5255   ; TIM1 status register 1                 
TIM1_SR2     EQU    $5256   ; TIM1 status register 2                 
TIM1_EGR     EQU    $5257   ; TIM1 event generation register         
TIM1_CCMR1   EQU    $5258   ; TIM1 capture/compare mode register 1   
TIM1_CCMR2   EQU    $5259   ; TIM1 capture/compare mode register 2   
TIM1_CCMR3   EQU    $525A   ; TIM1 capture/compare mode register 3   
TIM1_CCMR4   EQU    $525B   ; TIM1 capture/compare mode register 4   
TIM1_CCER1   EQU    $525C   ; TIM1 capture/compare enable register 1 
TIM1_CCER2   EQU    $525D   ; TIM1 capture/compare enable register 2 
TIM1_CNTRH   EQU    $525E   ; TIM1 counter high                      
TIM1_CNTRL   EQU    $525F   ; TIM1 counter low                       
TIM1_PSCRH   EQU    $5260   ; TIM1 prescaler register high           
TIM1_PSCRL   EQU    $5261   ; TIM1 prescaler register low            
TIM1_ARRH    EQU    $5262   ; TIM1 auto-reload register high         
TIM1_ARRL    EQU    $5263   ; TIM1 auto-reload register low          
TIM1_RCR     EQU    $5264   ; TIM1 repetition counter register       
TIM1_CCR1H   EQU    $5265   ; TIM1 capture/compare register 1 high   
TIM1_CCR1L   EQU    $5266   ; TIM1 capture/compare register 1 low    
TIM1_CCR2H   EQU    $5267   ; TIM1 capture/compare register 2 high   
TIM1_CCR2L   EQU    $5268   ; TIM1 capture/compare register 2 low    
TIM1_CCR3H   EQU    $5269   ; TIM1 capture/compare register 3 high   
TIM1_CCR3L   EQU    $526A   ; TIM1 capture/compare register 3 low    
TIM1_CCR4H   EQU    $526B   ; TIM1 capture/compare register 4 high   
TIM1_CCR4L   EQU    $526C   ; TIM1 capture/compare register 4 low    
TIM1_BKR     EQU    $526D   ; TIM1 break register                    
TIM1_DTR     EQU    $526E   ; TIM1 dead-time register                
TIM1_OISR    EQU    $526F   ; TIM1 output idle state register        
;====================================================================================
UIF			 EQU    $0000
;====================================================================================
TIM2_CR1     EQU    $5300   ; TIM2 control register 1                 
TIM2_IER     EQU    $5301   ; TIM2 Interrupt enable register          
TIM2_SR1     EQU    $5302   ; TIM2 status register 1                  
TIM2_SR2     EQU    $5303   ; TIM2 status register 2                  
TIM2_EGR     EQU    $5304   ; TIM2 event generation register          
TIM2_CCMR1   EQU    $5305   ; TIM2 capture/compare mode register 1    
TIM2_CCMR2   EQU    $5306   ; TIM2 capture/compare mode register 2    
TIM2_CCMR3   EQU    $5307   ; TIM2 capture/compare mode register 3    
TIM2_CCER1   EQU    $5308   ; TIM2 capture/compare enable register 1  
TIM2_CCER2   EQU    $5309   ; TIM2 capture/compare enable register 2  
TIM2_CNTRH   EQU    $530A   ; TIM2 counter high                       
TIM2_CNTRL   EQU    $530B   ; TIM2 counter low                        
TIM2_PSCR    EQU    $530C   ; TIM2 prescaler register                 
TIM2_ARRH    EQU    $530D   ; TIM2 auto-reload register high          
TIM2_ARRL    EQU    $530E   ; TIM2 auto-reload register low           
TIM2_CCR1H   EQU    $530F   ; TIM2 capture/compare register 1 high    
TIM2_CCR1L   EQU    $5310   ; TIM2 capture/compare register 1 low     
TIM2_CCR2H   EQU    $5311   ; TIM2 capture/compare reg. 2 high        
TIM2_CCR2L   EQU    $5312   ; TIM2 capture/compare register 2 low     
TIM2_CCR3H   EQU    $5313   ; TIM2 capture/compare register 3 high    
TIM2_CCR3L   EQU    $5314   ; TIM2 capture/compare register 3 low     
;====================================================================================
TIM3_CR1     EQU    $5320   ;TIM3 control register 1 
TIM3_IER     EQU    $5321   ;TIM3 interrupt enable register
TIM3_SR1     EQU    $5322   ;TIM3 status register 1 
TIM3_SR2     EQU    $5323   ;TIM3 status register 2 
TIM3_EGR     EQU    $5324   ;TIM3 event generation register 
TIM3_CCMR1   EQU    $5325   ;TIM3 capture/compare mode register 1 
TIM3_CCMR2   EQU    $5326   ;TIM3 capture/compare mode register 2
TIM3_CCER1   EQU    $5327   ;TIM3 capture/compare enable register 1
TIM3_CNTRH   EQU    $5328   ;TIM3 counter high
TIM3_CNTRL   EQU    $5329   ;TIM3 counter low
TIM3_PSCR    EQU    $532A   ;TIM3 prescaler register 
TIM3_ARRH    EQU    $532B   ;TIM3 auto-reload register high
TIM3_ARRL    EQU    $532C   ;TIM3 auto-reload register low
TIM3_CCR1H   EQU    $532D   ;TIM3 capture/compare register 1 high
TIM3_CCR1L   EQU    $532E   ;TIM3 capture/compare register 1 low 
TIM3_CCR2H   EQU    $532F   ;TIM3 capture/compare register 2 high
TIM3_CCR2L   EQU    $5330   ;TIM3 capture/compare register 2 low
;====================================================================================
TIM4_CR1     EQU    $5340   ; TIM4 control register 1         
TIM4_IER     EQU    $5341   ; TIM4 interrupt enable register  
TIM4_SR      EQU    $5342   ; TIM4 status register            
TIM4_EGR     EQU    $5343   ; TIM4 event generation register  
TIM4_CNTR    EQU    $5344   ; TIM4 counter                    
TIM4_PSCR    EQU    $5345   ; TIM4 prescaler register         
TIM4_ARR     EQU    $5346   ; TIM4 auto-reload register       
;====================================================================================
ADC_CSR      EQU    $5400   ; ADC control/status register                
ADC_CR1      EQU    $5401   ; ADC configuration register 1               
ADC_CR2      EQU    $5402   ; ADC configuration register 2               
ADC_CR3      EQU    $5403   ; ADC configuration register 3               
ADC_DRH      EQU    $5404   ; ADC data register high                     
ADC_DRL      EQU    $5405   ; ADC data register low                      
ADC_TDRH     EQU    $5406   ; ADC Schmitt trigger disable register high  
ADC_TDRL     EQU    $5407   ; ADC Schmitt trigger disable register low   
ADC_HTRH     EQU    $5408   ; ADC high threshold register high           
ADC_HTRL     EQU    $5409   ; ADC high threshold register low            
ADC_LTRH     EQU    $540A   ; ADC low threshold register high            
ADC_LTRL     EQU    $540B   ; ADC low threshold register low             
ADC_AWSRH    EQU    $540C   ; ADC analog watchdog status register high   
ADC_AWSRL    EQU    $540D   ; ADC analog watchdog status register low    
ADC_AWCRH    EQU    $540E   ; ADC analog watchdog control register high  
ADC_AWCRL    EQU    $540F   ; ADC analog watchdog control register low   
;====================================================================================
CFG_GCR      EQU    $7F60   ; Global configuration register           
ITC_SPR1     EQU    $7F70   ; Interrupt software priority register 1  
ITC_SPR2     EQU    $7F71   ; Interrupt software priority register 2  
ITC_SPR3     EQU    $7F72   ; Interrupt software priority register 3  
ITC_SPR4     EQU    $7F73   ; Interrupt software priority register 4  
ITC_SPR5     EQU    $7F74   ; Interrupt software priority register 5  
ITC_SPR6     EQU    $7F75   ; Interrupt software priority register 6  
ITC_SPR7     EQU    $7F76   ; Interrupt software priority register 7  
ITC_SPR8     EQU    $7F77   ; Interrupt software priority register 8  
SWIM_CSR     EQU    $7F80   ; SWIM control status register            
;====================================================================================
CCR          EQU    $7F0A   
X_L          EQU    $7F05
X_H          EQU    $7F04
Y_L          EQU    $7F07
Y_H          EQU    $7F06
ACC          EQU    $7F00
;====================================================================================
	SEGMENT 'ROM'
;====================================================================================
NoneInterrupt:  
	IRET
;====================================================================================	
InitMemory:  
	;Init Stack
	LDW X,#$07FF        
	LDW SP,X
	LDW X,#$0000
ClearRam0:
	CLR (X)
	INCW X
	CPW X,#$00FF    
	JRULE ClearRam0
	LDW X,#$0100
ClearRam1:
	CLR (X)
	INCW X
	CPW X,#$01FF    
	JRULE ClearRam1
	LDW X,#$0200
ClearStack:
	CLR (X)
	INCW X
	CPW X,#$03FF
	JRULE ClearStack
	call SystemStart
GeneralCycle:
	WFI
	JP GeneralCycle 
;====================================================================================	
	END