STM8/
	WORDS			; The following addresses are 16 bits long
	segment byte at 4000-43FF 'EEPROM'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8080-FFFF 'ROM'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8000-807F 'INTERRUPT'
;Start with stm8s105c6(First Project)
;=======Register==============================
PORTA        EQU    $5000
PINA         EQU    $5001
DDRA         EQU    $5002
CR1A         EQU    $5003
CR2A         EQU    $5004

PORTB        EQU    $5005
PINB         EQU    $5006
DDRB         EQU    $5007
CR1B         EQU    $5008
CR2B         EQU    $5009

PORTC        EQU    $500A
PINC         EQU    $500B
DDRC         EQU    $500C
CR1C         EQU    $500D
CR2C         EQU    $500E

PORTD        EQU    $500F
PIND         EQU    $5010
DDRD         EQU    $5011
CR1D         EQU    $5012
CR2D         EQU    $5013

PORTE        EQU    $5014
PINE         EQU    $5015
DDRE         EQU    $5016
CR1E         EQU    $5017
CR2E         EQU    $5018

PORTG        EQU    $501E
PING         EQU    $501F
DDRG         EQU    $5020
CR1G         EQU    $5021
CR2G         EQU    $5022

;==========================
EXTI_CR1     EQU    $50A0   ; External interrupt control register 1 0x00
EXTI_CR2     EQU    $50A1   ; External interrupt control register 2 0x00
RST_SR       EQU    $50B3   ; Reset status register 0xXX
;==========================
CLK_ICKR     EQU    $50C0   ; Internal clock control register         0x01
CLK_ECKR     EQU    $50C1   ; External clock control register         0x00
CLK_CMSR     EQU    $50C3   ; Clock master status register            0xE1
CLK_SWR      EQU    $50C4   ; Clock master switch register            0xE1
CLK_SWCR     EQU    $50C5   ; Clock switch control register           0xXX
CLK_CKDIVR   EQU    $50C6   ; Clock divider register                  0x18
CLK_PCKENR1  EQU    $50C7   ; Peripheral clock gating register 1      0xFF
CLK_CSSR     EQU    $50C8   ; Clock security system register          0x00
CLK_CCOR     EQU    $50C9   ; Configurable clock control register     0x00
CLK_PCKENR2  EQU    $50CA   ; Peripheral clock gating register 2      0xFF
CLK_CANCCR   EQU    $50CB   ; CAN clock control register              0x00
CLK_HSITRIMR EQU    $50CC   ; HSI clock calibration trimming register 0x00
CLK_SWIMCCR  EQU    $50CD   ; SWIM clock control register             0bXXXX XXX0
;==========================
UART1_SR     EQU    $5230   ; UART1 status register       0xC0
UART1_DR     EQU    $5231   ; UART1 data register         0xXX
UART1_BRR1   EQU    $5232   ; UART1 baud rate register    0x00
UART1_BRR2   EQU    $5233   ; UART1 baud rate register    0x00
UART1_CR1    EQU    $5234   ; UART1 control register 1    0x00
UART1_CR2    EQU    $5235   ; UART1 control register 2    0x00
UART1_CR3    EQU    $5236   ; UART1 control register 3    0x00
UART1_CR4    EQU    $5237   ; UART1 control register 4    0x00
UART1_CR5    EQU    $5238   ; UART1 control register 5    0x00
UART1_GTR    EQU    $5239   ; UART1 guard time register   0x00
UART1_PSCR   EQU    $523A   ; UART1 prescaler register    0x00

SBK          EQU    0       ; Send break
RWU          EQU    1       ; Receiver wakeup
REN          EQU    2       ; Receiver enable
TEN          EQU    3       ; Transmitter enable
ILIEN        EQU    4       ; IDLE Line interrupt enable
RIEN         EQU    5       ; Receiver interrupt enable
TCIEN        EQU    6       ; Transmission complete interrupt enable
TIEN         EQU    7       ; Transmitter interrupt enable

TC           EQU    6       ; Transmission complete
;==========================
SPI_CR1      EQU    $5200   ; SPI control register 1          0x00
SPI_CR2      EQU    $5201   ; SPI control register 2          0x00
SPI_ICR      EQU    $5202   ; SPI interrupt control register  0x00
SPI_SR       EQU    $5203   ; SPI status register             0x02
SPI_DR       EQU    $5204   ; SPI data register               0x00
SPI_CRCPR    EQU    $5205   ; SPI CRC polynomial register     0x07
SPI_RXCRCR   EQU    $5206   ; SPI Rx CRC register             0xFF
SPI_TXCRCR   EQU    $5207   ; SPI Tx CRC register             0xFF
;==========================
FLASH_CR1    EQU    $505A   ; Flash control register 1                         0x00
FLASH_CR2    EQU    $505B   ; Flash control register 2                         0x00
FLASH_NCR2   EQU    $505C   ; Flash complementary control register 2           0xFF
FLASH_FPR    EQU    $505D   ; Flash protection register                        0x00
FLASH_NFPR   EQU    $505E   ; Flash complementary protection register          0xFF
FLASH_IAPSR  EQU    $505F   ; Flash in-application programming status register 0x00
FLASH_PUKR   EQU    $5062   ; Flash program memory unprotection register       0x00
FLASH_DUKR   EQU    $5064   ; Data EEPROM unprotection register                0x00
;==========================
WWDG_CR      EQU    $50D1   ; WWDG control register                      0x7F
WWDG_WR      EQU    $50D2   ; WWDR window register                       0x7F
IWDG_KR      EQU    $50E0   ; IWDG key register                          0xXX
IWDG_PR      EQU    $50E1   ; IWDG prescaler register                    0x00
IWDG_RLR     EQU    $50E2   ; IWDG reload register                       0xFF
AWU_CSR1     EQU    $50F0   ; AWU control/status register 1              0x00
AWU_APR      EQU    $50F1   ; AWU asynchronous prescaler buffer register 0x3F
AWU_TBR      EQU    $50F2   ; AWU timebase selection register            0x00
BEEP_CSR     EQU    $50F3   ; BEEP control/status register               0x1F
;==========================
TIM1_CR1     EQU    $5250   ; TIM1 control register 1                0x00
TIM1_CR2     EQU    $5251   ; TIM1 control register 2                0x00
TIM1_SMCR    EQU    $5252   ; TIM1 slave mode control register       0x00
TIM1_ETR     EQU    $5253   ; TIM1 external trigger register         0x00
TIM1_IER     EQU    $5254   ; TIM1 interrupt enable register         0x00
TIM1_SR1     EQU    $5255   ; TIM1 status register 1                 0x00
TIM1_SR2     EQU    $5256   ; TIM1 status register 2                 0x00
TIM1_EGR     EQU    $5257   ; TIM1 event generation register         0x00
TIM1_CCMR1   EQU    $5258   ; TIM1 capture/compare mode register 1   0x00
TIM1_CCMR2   EQU    $5259   ; TIM1 capture/compare mode register 2   0x00
TIM1_CCMR3   EQU    $525A   ; TIM1 capture/compare mode register 3   0x00
TIM1_CCMR4   EQU    $525B   ; TIM1 capture/compare mode register 4   0x00
TIM1_CCER1   EQU    $525C   ; TIM1 capture/compare enable register 1 0x00
TIM1_CCER2   EQU    $525D   ; TIM1 capture/compare enable register 2 0x00
TIM1_CNTRH   EQU    $525E   ; TIM1 counter high                      0x00
TIM1_CNTRL   EQU    $525F   ; TIM1 counter low                       0x00
TIM1_PSCRH   EQU    $5260   ; TIM1 prescaler register high           0x00
TIM1_PSCRL   EQU    $5261   ; TIM1 prescaler register low            0x00
TIM1_ARRH    EQU    $5262   ; TIM1 auto-reload register high         0xFF
TIM1_ARRL    EQU    $5263   ; TIM1 auto-reload register low          0xFF
TIM1_RCR     EQU    $5264   ; TIM1 repetition counter register       0x00
TIM1_CCR1H   EQU    $5265   ; TIM1 capture/compare register 1 high   0x00
TIM1_CCR1L   EQU    $5266   ; TIM1 capture/compare register 1 low    0x00
TIM1_CCR2H   EQU    $5267   ; TIM1 capture/compare register 2 high   0x00
TIM1_CCR2L   EQU    $5268   ; TIM1 capture/compare register 2 low    0x00
TIM1_CCR3H   EQU    $5269   ; TIM1 capture/compare register 3 high   0x00
TIM1_CCR3L   EQU    $526A   ; TIM1 capture/compare register 3 low    0x00
TIM1_CCR4H   EQU    $526B   ; TIM1 capture/compare register 4 high   0x00
TIM1_CCR4L   EQU    $526C   ; TIM1 capture/compare register 4 low    0x00
TIM1_BKR     EQU    $526D   ; TIM1 break register                    0x00
TIM1_DTR     EQU    $526E   ; TIM1 dead-time register                0x00
TIM1_OISR    EQU    $526F   ; TIM1 output idle state register        0x00
;==========================
TIM2_CR1     EQU    $5300   ; TIM2 control register 1                 0x00
TIM2_IER     EQU    $5301   ; TIM2 Interrupt enable register          0x00
TIM2_SR1     EQU    $5302   ; TIM2 status register 1                  0x00
TIM2_SR2     EQU    $5303   ; TIM2 status register 2                  0x00
TIM2_EGR     EQU    $5304   ; TIM2 event generation register          0x00
TIM2_CCMR1   EQU    $5305   ; TIM2 capture/compare mode register 1    0x00
TIM2_CCMR2   EQU    $5306   ; TIM2 capture/compare mode register 2    0x00
TIM2_CCMR3   EQU    $5307   ; TIM2 capture/compare mode register 3    0x00
TIM2_CCER1   EQU    $5308   ; TIM2 capture/compare enable register 1  0x00
TIM2_CCER2   EQU    $5309   ; TIM2 capture/compare enable register 2  0x00
TIM2_CNTRH   EQU    $530A   ; TIM2 counter high                       0x00
TIM2_CNTRL   EQU    $530B   ; TIM2 counter low                        0x00
TIM2_PSCR    EQU    $530C   ; TIM2 prescaler register                 0x00
TIM2_ARRH    EQU    $530D   ; TIM2 auto-reload register high          0xFF
TIM2_ARRL    EQU    $530E   ; TIM2 auto-reload register low           0xFF
TIM2_CCR1H   EQU    $530F   ; TIM2 capture/compare register 1 high    0x00
TIM2_CCR1L   EQU    $5310   ; TIM2 capture/compare register 1 low     0x00
TIM2_CCR2H   EQU    $5311   ; TIM2 capture/compare reg. 2 high        0x00
TIM2_CCR2L   EQU    $5312   ; TIM2 capture/compare register 2 low     0x00
TIM2_CCR3H   EQU    $5313   ; TIM2 capture/compare register 3 high    0x00
TIM2_CCR3L   EQU    $5314   ; TIM2 capture/compare register 3 low     0x00
;==========================
TIM3_CR1     EQU    $5320   ;TIM3 control register 1 
TIM3_IER     EQU    $5321   ;TIM3 interrupt enable register
TIM3_SR1     EQU    $5322   ;TIM3 status register 1 
TIM3_SR2     EQU    $5323   ;TIM3 status register 2 
TIM3_EGR     EQU    $5324   ;TIM3 event generation register 
TIM3_CCMR1   EQU    $5325   ;TIM3 capture/ compare mode register 1 
TIM3_CCMR2   EQU    $5326   ;TIM3 capture/ compare mode register 2
TIM3_CCER1   EQU    $5327   ;TIM3 capture/ compare enable register 1
TIM3_CNTRH   EQU    $5328   ;TIM3 counter high
TIM3_CNTRL   EQU    $5329   ;TIM3 counter low
TIM3_PSCR    EQU    $532A   ;TIM3 prescaler register 
TIM3_ARRH    EQU    $532B   ;TIM3 auto-reload register high
TIM3_ARRL    EQU    $532C   ;TIM3 auto-reload register low
TIM3_CCR1H   EQU    $532D   ;TIM3 capture/ compare register 1 high
TIM3_CCR1L   EQU    $532E   ;TIM3 capture/ compare register 1 low 
TIM3_CCR2H   EQU    $532F   ;TIM3 capture/ compare register 2 high
TIM3_CCR2L   EQU    $5330   ;TIM3 capture/ compare register 2 low
;==========================
TIM4_CR1     EQU    $5340   ; TIM4 control register 1         0x00
TIM4_IER     EQU    $5341   ; TIM4 interrupt enable register  0x00
TIM4_SR      EQU    $5342   ; TIM4 status register            0x00
TIM4_EGR     EQU    $5343   ; TIM4 event generation register  0x00
TIM4_CNTR    EQU    $5344   ; TIM4 counter                    0x00
TIM4_PSCR    EQU    $5345   ; TIM4 prescaler register         0x00
TIM4_ARR     EQU    $5346   ; TIM4 auto-reload register       0xFF

CEN          EQU    0       ; Counter enable
UDIS         EQU    1       ; Update disable
URS          EQU    2       ; Update request source
OPM          EQU    3       ; One pulse mode
ARPE         EQU    7       ; Auto-reload preload enable

UIE          EQU    0       ; Update interrupt enable
TIE          EQU    6       ; Trigger interrupt enable

UIF          EQU    0       ; Update interrupt flag
TIF          EQU    6       ; Trigger interrupt flag TIM4 this bit is reserved

UG           EQU    0       ; Update generation
TG           EQU    6       ; Trigger generation
;==========================
;ADC_DBxR    $53E0-$53F3     ; ADC data buffer registers    0x00
ADC_CSR      EQU    $5400   ; ADC control/status register                0x00
ADC_CR1      EQU    $5401   ; ADC configuration register 1               0x00
ADC_CR2      EQU    $5402   ; ADC configuration register 2               0x00
ADC_CR3      EQU    $5403   ; ADC configuration register 3               0x00
ADC_DRH      EQU    $5404   ; ADC data register high                     0xXX
ADC_DRL      EQU    $5405   ; ADC data register low                      0xXX
ADC_TDRH     EQU    $5406   ; ADC Schmitt trigger disable register high  0x00
ADC_TDRL     EQU    $5407   ; ADC Schmitt trigger disable register low   0x00
ADC_HTRH     EQU    $5408   ; ADC high threshold register high           0x03
ADC_HTRL     EQU    $5409   ; ADC high threshold register low            0xFF
ADC_LTRH     EQU    $540A   ; ADC low threshold register high            0x00
ADC_LTRL     EQU    $540B   ; ADC low threshold register low             0x00
ADC_AWSRH    EQU    $540C   ; ADC analog watchdog status register high   0x00
ADC_AWSRL    EQU    $540D   ; ADC analog watchdog status register low    0x00
ADC_AWCRH    EQU    $540E   ; ADC analog watchdog control register high  0x00
ADC_AWCRL    EQU    $540F   ; ADC analog watchdog control register low   0x00
;==========================
CFG_GCR      EQU    $7F60   ; Global configuration register           0x00
ITC_SPR1     EQU    $7F70   ; Interrupt software priority register 1  0xFF
ITC_SPR2     EQU    $7F71   ; Interrupt software priority register 2  0xFF
ITC_SPR3     EQU    $7F72   ; Interrupt software priority register 3  0xFF
ITC_SPR4     EQU    $7F73   ; Interrupt software priority register 4  0xFF
ITC_SPR5     EQU    $7F74   ; Interrupt software priority register 5  0xFF
ITC_SPR6     EQU    $7F75   ; Interrupt software priority register 6  0xFF
ITC_SPR7     EQU    $7F76   ; Interrupt software priority register 7  0xFF
ITC_SPR8     EQU    $7F77   ; Interrupt software priority register 8  0xFF
SWIM_CSR     EQU    $7F80   ; SWIM control status register            0x00
;==========================
CCR          EQU    $7F0A   ;
X_L          EQU    $7F05
X_H          EQU    $7F04
Y_L          EQU    $7F07
Y_H          EQU    $7F06
ACC          EQU    $7F00
;=======End===========================================================
;=======RAMMemory($0000-$07FF)================
Temp              EQU   $0000
Temp1             EQU		$0001
Temp2             EQU   $0002
Temp3             EQU   $0003
Temp4             EQU   $0004 
Temp5             EQU   $0005
Temp6             EQU   $0006
Temp7             EQU   $0007
LvlLed            EQU   $0008
BEEPSEL           EQU   $0009
BEEPDIV           EQU   $000A
SPIBuffer         EQU   $000B
CounterCycles     EQU   $000C
BufferCycles      EQU   $000D
EnableBEEP        EQU   $000E
Key               EQU   $0011
;****************************
ProgrammFlags     EQU   $0012
OverflowTim1    EQU   0
OverflowTim2    EQU   1
OverflowTim3    EQU   2
OverflowTim4    EQU   3
OKPress         EQU   4
CancelPress     EQU   5
;****************************
WaitTime          EQU   $0013	
Line1             EQU   $0014
Line2             EQU   $0015
Line3             EQU   $0016
Line4             EQU   $0017
OldLine1          EQU   $0018
OldLine2          EQU   $0019
OldLine3          EQU   $001A
OldLine4          EQU   $001B
BufLine1          EQU   $001C
BufLine2          EQU   $001D
BufLine3          EQU   $001E
BufLine4          EQU   $001F
;======================================================================
         SEGMENT 'INTERRUPT'
	DC.L {$82000000+StartSystem}	; $8000    RESET Reset
	DC.L {$82000000+NO_INT}	; $8004    TRAP  Software interrupt
	DC.L {$82000000+NO_INT}	; $8008 0  TLI   External top level interrupt
	DC.L {$82000000+NO_INT}	; $800C 1  AWU   Auto wake up from HALT
	DC.L {$82000000+NO_INT}	; $8010 2  CLK   Clock controller
	DC.L {$82000000+NO_INT}	; $8014 3  EXTI0 Port A external interrupts
	DC.L {$82000000+NO_INT}	; $8018 4  EXTI1 Port B external interrupts
	DC.L {$82000000+NO_INT}	; $801C 5  EXTI2 Port C external interrupts
	DC.L {$82000000+NO_INT}	; $8020 6  EXTI3 Port D external interrupts
	DC.L {$82000000+NO_INT}	; $8024 7  EXTI4 Port E external interrupts
	DC.L {$82000000+NO_INT}	; $8028 8  Reserved
	DC.L {$82000000+NO_INT}	; $802C 9  Reserved
	DC.L {$82000000+NO_INT}	; $8030 10 SPI  End of transfer
	DC.L {$82000000+Timer1}	; $8034 11 TIM1 TIM1 update/ overflow/ underflow/trigger/ break
	DC.L {$82000000+NO_INT}	; $8038 12 TIM1 TIM1 capture/ compare
	DC.L {$82000000+Timer2}	; $803C 13 TIM2 TIM2 update/ overflow
	DC.L {$82000000+NO_INT}	; $8040 14 TIM2 TIM2 capture/ compare
	DC.L {$82000000+Timer3}	; $8044 15 TIM3 TIM3 update/ overflow
	DC.L {$82000000+NO_INT}	; $8048 16 TIM3 TIM3 capture/ compare
	DC.L {$82000000+NO_INT}	; $8058 20 Reserved
	DC.L {$82000000+NO_INT}	; $805C 21 Reserved
	DC.L {$82000000+NO_INT}	; $8054 19 I2C interrupt
	DC.L {$82000000+NO_INT}	; $804C 17 UART1 Tx complete
	DC.L {$82000000+NO_INT}	; $8050 18 UART1 Receive register DATA FULL
	DC.L {$82000000+ADCRead}; $8060 22 ADC1 ADC1 end of conversion/ analog watchdog interrupt
	DC.L {$82000000+Timer4} ; $8064 23 TIM4 TIM4 update/ overflow
	DC.L {$82000000+NO_INT}	; $8068 24 Flash EOP/WR_PG_DIS
	DC.L {$82000000+NO_INT}	; $806C 25 Reserved
	DC.L {$82000000+NO_INT}	; $8070 26 Reserved
	DC.L {$82000000+NO_INT}	; $8074 27 Reserved
	DC.L {$82000000+NO_INT}	; $8078 28 Reserved
	DC.L {$82000000+NO_INT}	; $807C 29 Reserved
;======================================================================
        SEGMENT 'ROM'	
EnableBEEP MACRO BDIV,BSEL;2 BITS,5 BITS(MAX=1E)
	LDW X,BDIV
	LDW Y,BSEL
	call SetParametrsBEEP
	MEND
DisableBEEP MACRO
	MOV BEEP_CSR,#%00000000
	MEND
NO_INT.w:  
	IRET
StartSystem.w:  
;########################################################################################################################################################
;########################################################################################################################################################
;########################################################################################################################################################
;=InitMemory========
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
;########################################################################################################################################################
;########################################################################################################################################################
;########################################################################################################################################################
	call InitSystemClock
	call InitPortsIO
	call InitTimers
	call InitSPI
	call InitADC
	BSET ProgrammFlags,#OverflowTim3
	RIM
;==============================
;Основной цикл.
Main.W:	
	call UpdateKeyboard
	call HandlerButton
	call FormationPWMLed
	JP Main
;==============================
HandlerButton:
	BTJF Line1,#7,Next1
	call HandlerButton1
Next1:
	BTJF Line1,#6,Next2
	call HandlerButton2
Next2:
	BTJF Line1,#5,Next3
	call HandlerButton3
Next3:
	BTJF Line2,#7,Next4
	call HandlerButton4
Next4:
	BTJF Line2,#6,Next5
	call HandlerButton5
Next5:
	BTJF Line2,#5,Next6
	call HandlerButton6
Next6:
	BTJF Line3,#7,Next7
	call HandlerButton7
Next7:
	BTJF Line3,#6,Next8
	call HandlerButton8
Next8:
	BTJF Line3,#5,Next9
	call HandlerButton9
Next9:
	BTJF Line4,#7,Next10
	call HandlerButton10
Next10:
	BTJF Line4,#6,Next11
	call HandlerButton11
Next11:
	BTJF Line4,#5,OutHandler
	call HandlerButton12
OutHandler:
	RET
;==============================
Delay.w:
	MOV CounterCycles,BufferCycles
Label.w
	DEC CounterCycles
	JRNE Label
	RET
;==============================
UpdateKeyboard.w:
	BTJT ProgrammFlags,#OverflowTim4,ClearStatusKeyboard
	;Если флаг переполнения сброшен,
	;то продолжаем работу.
	;В противном случае-выход.
	MOV OldLine1,BufLine1
	MOV OldLine2,BufLine2
	MOV OldLine3,BufLine3
	MOV OldLine4,BufLine4
	call ReadKeyboard
	call CheckLine
	BSET ProgrammFlags,#OverflowTim4
	RET
CheckLine:
	;+++Проверка 1 линии+++
	LD A,OldLine1           ;Сравнимаем состояние клавиатуры
	CP A,BufLine1						;до и после считывания.
	JRNE WriteStatusKeyboard;Если значение не равно,
	;то записываем в Line1 состояние 1 линии.
	;Если равно, то проверяем дальше.
	;+++Проверка 2 линии+++
	LD A,OldLine2
	CP A,BufLine2
	JRNE WriteStatusKeyboard
	;+++Проверка 3 линии+++
	LD A,OldLine3
	CP A,BufLine3
	JRNE WriteStatusKeyboard
	;+++Проверка 4 линии+++
	LD A,OldLine4
	CP A,BufLine4
	JRNE WriteStatusKeyboard
	;Обнуляем состояние клавиатуры,
	;если состояние клавиатуры не изменилось.
ClearStatusKeyboard:
	MOV Line1,#$08
	MOV Line2,#$04
	MOV Line3,#$02
	MOV Line4,#$01
	RET
WriteStatusKeyboard:
	;Записываем текущее состояние клавиатуры,
	;если состояние клавиатуры изменилось.
	MOV Line1,BufLine1
	MOV Line2,BufLine2
	MOV Line3,BufLine3
	MOV Line4,BufLine4
	RET
;==============================
;Обработчики кнопок.
HandlerButton1:
	;//
	MOV LvlLed,#$01
	RET
HandlerButton2:
	;//
	MOV LvlLed,#$02
	RET
HandlerButton3:
	;//
	MOV LvlLed,#$04
	RET
HandlerButton4:
	;//
	MOV LvlLed,#$08
	RET
HandlerButton5:
	;//
	MOV LvlLed,#$10
	RET
HandlerButton6:
	;//
	MOV LvlLed,#$20
	RET
HandlerButton7:
	;//
	MOV LvlLed,#$40
	RET
HandlerButton8:
	;//
	MOV LvlLed,#$80
	RET
HandlerButton9:
	;//	
	MOV LvlLed,#$01
	RET
HandlerButton10:
	;//
	MOV LvlLed,#$FE
	RET
HandlerButton11:
	;//	
	RET
HandlerButton12:
	;//
	RET
;#######
;Прерывание по переполнению таймера 1.
Timer1.w:
	BRES TIM1_SR1,#UIF
	
	IRET
;#######
;Прерывание по переполнению таймера 2.
Timer2.w:
	BRES TIM2_SR1,#UIF
	
	IRET
;#######
;Прерывание по переполнению таймера 3.
Timer3.w:
	BRES TIM3_SR1,#UIF

	IRET
;#######
;Прерывание по переполнению таймера 4.
Timer4.w:   
	BRES TIM4_SR,#UIF
	BTJT ProgrammFlags,#OverflowTim4,IncWaitTime
	IRET
IncWaitTime:
	INC WaitTime
	LD A,WaitTime
	CP A,#$FF
	JREQ ResetFlag
	IRET
ResetFlag:
	CLR WaitTime
	BRES ProgrammFlags,#OverflowTim4
	IRET
;#######
;Прерывание после завершения конвертации ADC.
ADCRead.w:
	MOV Temp3,ADC_DRL
	MOV Temp4,ADC_DRH
	IRET
;#######
;***********************************************************

;**************************
;Инициализация портов    ;*
;ввода-вывода.					 ;*
InitPortsIO.w:           ;*
;=============*6543***    *
	MOV DDRA, #%00000000;   *
	MOV CR1A, #%00000000;   *
	MOV PORTA,#%00000000;   *
;=============76543210    *
	MOV DDRB, #%00001111;   *
	MOV CR1B, #%11101111;   *
	MOV PORTB,#%00001111;   *
;=============7654321*    *
	MOV DDRC, #%11011000;   *
	MOV CR1C, #%11011100;   *
	MOV PORTC,#%00000000;   *
;=============76543210    *
	MOV DDRD, #%00110101;   *
	MOV CR1D, #%00110101;   *
	MOV PORTD,#%00000001;   *
;=============765*3210    *
	MOV DDRE, #%00100000;   *
	MOV CR1E, #%00100000;   *
	MOV PORTE,#%00100000;   *
;=============******10    *
	MOV DDRG, #%00000000;   *
	MOV CR1G, #%00000000;   *
	MOV PORTG,#%00000000;   *
  RET                 ;   *
;**************************

InitTimers.w:
;Инициализация и запуск таймеров.
;**TIMER1******************#
	MOV TIM1_PSCRH,#$00
	MOV TIM1_PSCRL,#$64
	MOV TIM1_ARRH, #$FF
	MOV TIM1_ARRL, #$FF
	MOV TIM1_CR1,  #%10000001
	MOV TIM1_IER,  #%00000001
;**TIMER2******************#
	MOV TIM2_PSCR, #$02
	MOV TIM2_ARRH, #$FF
	MOV TIM2_ARRL, #$FF
	MOV TIM2_CR1,  #%10000001
	MOV TIM2_IER,  #%00000001
;**TIMER3******************#
	MOV TIM3_PSCR, #$0E
	MOV TIM3_ARRH, #$FF
	MOV TIM3_ARRL, #$FF
	MOV TIM3_CR1,  #%10000001
	MOV TIM3_IER,  #%00000001
;**TIMER4******************#
	MOV TIM4_PSCR, #$03
	MOV TIM4_ARR,  #$FF
	MOV TIM4_CR1,  #%10000001
	MOV TIM4_IER,  #%00000001
	RET
;**************************
InitSystemClock.w:
;Иницилазия и запуск системы тактирования.
	MOV CLK_ECKR,#$01          ;Включаем HSE
	MOV CLK_SWCR,#$02          ;Разрешаем переключение источника тактовой частоты
	MOV CLK_PCKENR1,#$FF
Looped:
	BTJF CLK_ECKR,#1,Looped    ;Ждем готовности источника тактирования
  MOV CLK_CKDIVR,#$00        ;Предделитель равен нулю
	MOV CLK_SWR,#$B4           ;Выбираем HSE источником тактовой частоты
Looped2:
	BTJF CLK_SWCR,#3,Looped2   ;Ждем готовности переключения 	
	RET
;**************************
InitSPI.w:
;Иницилазия SPI.
	MOV SPI_CR1,#%01000100
	MOV SPI_CR2,#%00000011
	MOV SPI_DR, #%00000000
	RET
;**************************
InitADC.w:
;Инициализация и запуск ADC.
	MOV ADC_CSR,#%00101000
	MOV ADC_CR1,#%01000010
	MOV ADC_CR2,#%00111000
	MOV ADC_CR3,#%00000000
	BSET ADC_CR1,#0
	RET
;**************************	
;**************************
ReadKeyboard:
  ;Считывания состояния клавиатуры
	MOV PORTB,#%00000111
	MOV BufLine1,PINB
	CPL BufLine1
	NOP
	;++++++++++++++++++++++++++
	MOV PORTB,#%00001011
	MOV BufLine2,PINB
	CPL BufLine2
	NOP
	;++++++++++++++++++++++++++
	MOV PORTB,#%00001101
	MOV BufLine3,PINB
	CPL BufLine3
	NOP
	;++++++++++++++++++++++++++
	MOV PORTB,#%00001110
	MOV BufLine4,PINB
	CPL BufLine4
	NOP
	;++++++++++++++++++++++++++
	RET
;*******************************
FormationPWMLed:
	BRES PORTD,#0
	MOV BufferCycles,LvlLed
	call Delay
	
	BSET PORTD,#0
	CPL BufferCycles
	call Delay
	RET
;**************************
;**************************
;***********************************
	END		
 