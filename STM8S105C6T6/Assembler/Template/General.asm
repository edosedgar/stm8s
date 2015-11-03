STM8/	

	#include "STM8S105C6.asm"
	#include "RAMVars.asm"
	
;======================================================================
	SEGMENT 'INTERRUPT'
	JPF InitMemory			; $8000    RESET Reset
	JPF NoneInterrupt	   ; $8004    TRAP  Software interrupt
	JPF NoneInterrupt		; $8008 0  TLI   External top level interrupt
	JPF NoneInterrupt		; $800C 1  AWU   Auto wake up from HALT
	JPF NoneInterrupt		; $8010 2  CLK   Clock controller
	JPF NoneInterrupt		; $8014 3  EXTI0 Port A external interrupts
	JPF NoneInterrupt		; $8018 4  EXTI1 Port B external interrupts
	JPF NoneInterrupt 	; $801C 5  EXTI2 Port C external interrupts
	JPF NoneInterrupt		; $8020 6  EXTI3 Port D external interrupts
	JPF NoneInterrupt		; $8024 7  EXTI4 Port E external interrupts
	JPF NoneInterrupt		; $8028 8  Reserved
	JPF NoneInterrupt		; $802C 9  Reserved
	JPF NoneInterrupt		; $8030 10 SPI  End of transfer
	JPF Timer1				; $8034 11 TIM1 TIM1 update/ overflow/ underflow/trigger/ break
	JPF NoneInterrupt		; $8038 12 TIM1 TIM1 capture/ compare
	JPF Timer2				; $803C 13 TIM2 TIM2 update/ overflow
	JPF NoneInterrupt		; $8040 14 TIM2 TIM2 capture/ compare
	JPF Timer3				; $8044 15 TIM3 TIM3 update/ overflow
	JPF NoneInterrupt		; $8048 16 TIM3 TIM3 capture/ compare
	JPF NoneInterrupt		; $8058 20 Reserved
	JPF NoneInterrupt		; $805C 21 Reserved
	JPF NoneInterrupt		; $8054 19 I2C interrupt
	JPF NoneInterrupt		; $804C 17 UART1 Tx complete
	JPF NoneInterrupt		; $8050 18 UART1 Receive register DATA FULL
	JPF NoneInterrupt		; $8060 22 ADC1 ADC1 end of conversion/ analog watchdog interrupt
	JPF Timer4				; $8064 23 TIM4 TIM4 update/ overflow
	JPF NoneInterrupt		; $8068 24 Flash EOP/WR_PG_DIS
	JPF NoneInterrupt		; $806C 25 Reserved
	JPF NoneInterrupt		; $8070 26 Reserved
	JPF NoneInterrupt		; $8074 27 Reserved
	JPF NoneInterrupt		; $8078 28 Reserved
	JPF NoneInterrupt		; $807C 29 Reserved
;======================================================================	
	SEGMENT 'ROM'
;***************************
InitPortsIO.w:            ;*
;==============*6543***    *
	MOV DDRA, #%00000000;   *
	MOV CR1A, #%00000000;   *
	MOV PORTA,#%00000000;   *
;==============76543210    *
	MOV DDRB, #%00001111;   *
	MOV CR1B, #%11101111;   *
	MOV PORTB,#%00000000;   *
;==============7654321*    *
	MOV DDRC, #%01110000;   *
	MOV CR1C, #%01110000;   *
	MOV PORTC,#%00000000;   *
;==============765432*0    *
	MOV DDRD, #%00000001;   *
	MOV CR1D, #%00000001;   *
	MOV PORTD,#%00000000;   *
;==============765*3210    *
	MOV DDRE, #%00100000;   *
	MOV CR1E, #%00100001;   *
	MOV PORTE,#%00100000;   *
;==============******10    *
	MOV DDRG, #%00000011;   *
	MOV CR1G, #%00000011;   *
	MOV PORTG,#%00000000;   *
  RET                  ;   *
;***************************
;**************************************************************************************
InitTimers.w:
;**TIMER1******************
	MOV TIM1_PSCRH,#3
	MOV TIM1_PSCRL,#232
	MOV TIM1_ARRH, #$4E
	MOV TIM1_ARRL, #$20
	MOV TIM1_CR1,  #%10000001
	MOV TIM1_IER,  #%00000001
;**TIMER2******************
	MOV TIM2_PSCR, #1
	MOV TIM2_ARRH, #255
	MOV TIM2_ARRL, #255
	MOV TIM2_CR1,  #%10000001
	MOV TIM2_IER,  #%00000001
;**TIMER3******************
	MOV TIM3_PSCR, #5
	MOV TIM3_ARRH, #255
	MOV TIM3_ARRL, #255
	MOV TIM3_CR1,  #%10000001
	MOV TIM3_IER,  #%00000001
;**TIMER4******************
	MOV TIM4_PSCR, #7
	MOV TIM4_ARR,  #255
	MOV TIM4_CR1,  #%10000001
	MOV TIM4_IER,  #%00000001
  RET
;**************************************************************************************
InitSystemClock.w:
	MOV CLK_ECKR,#$01 
	MOV CLK_SWCR,#$02 
	MOV CLK_PCKENR1,#$FF
Looped:
	BTJF CLK_ECKR,#1,Looped 
   MOV CLK_CKDIVR,#$00 
	MOV CLK_SWR,#$B4
Looped2:
	BTJF CLK_SWCR,#3,Looped2    	
	RET
;**************************************************************************************
InitSPI.w:
	MOV SPI_CR1,#%01000111
	MOV SPI_CR2,#%00000011
	MOV SPI_DR, #%00000000
  RET
;**************************************************************************************
Timer1.w:
	BRES TIM1_SR1,#UIF
	
  IRET
;#######
Timer2.w:
	BRES TIM2_SR1,#UIF	
	LD A,LvlLed
	LD A,Temp7
	CP A,#1
	JREQ IncLight
	CP A,#0
	JREQ DecLight	
	IRET
IncLight.w:
	INC LvlLed
	LD A,LvlLed
	CP A,#255
	JREQ ClrTemp7
	IRET
ClrTemp7.w:
	CLR Temp7
	IRET
SetTemp7.w:
	INC Temp7
	IRET
DecLight.w:
	DEC LvlLed
	LD A,LvlLed
	CP A,#1
	JREQ SetTemp7
  IRET 

;#######
Timer3.w:
	BRES TIM3_SR1,#UIF

  IRET
;#######
Timer4.w:   
	BRES TIM4_SR,#UIF
	
  IRET
;**************************************************************************************
;**************************************************************************************
SystemStart:
	call InitSystemClock
	call InitPortsIO
	;call InitSPI
	;call InitTimers
	;RIM
Main.W:	
   MOV PORTB,PINE
	;BRES PORTD,#0
	;mov Temp,LvlLed
	;call Delay
	
	;BSET PORTD,#0
	;CPL Temp
	;call Delay
	JP Main
;==============================
Delay.w:
	mov Temp2,Temp
Label.w
	DEC Temp2
	LD A,Temp2
	CP A,#0
	JRNE Label
	RET
;**************************************************************************************
	END		 
	