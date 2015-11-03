STM8/	

	#include "STM8S103F3.asm"
	#include "RAMVars.asm"
	
;======================================================================
	SEGMENT 'INTERRUPT'
	JPF InitMemory			; $8000    RESET Reset
	JPF NoneInterrupt	   ; $8004    TRAP  Software interrupt
	JPF NoneInterrupt		; $8008 0  TLI   External top level interrupt
	JPF NoneInterrupt		; $800C 1  AWU   Auto wake up from HALT
	JPF NoneInterrupt		; $8010 2  CLK   Clock controller
	JPF NoneInterrupt		; $8014 3  EXTI0 Port A external interrupts
	JPF EXTI1				; $8018 4  EXTI1 Port B external interrupts
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
	JPF NoneInterrupt		; $8044 15 Reserved
	JPF NoneInterrupt		; $8048 16 Reserved
	JPF NoneInterrupt		; $804C 17 UART1 Tx complete
	JPF NoneInterrupt		; $8050 18 UART1 Receive register DATA FULL
	JPF NoneInterrupt		; $8054 19 I2C interrupt
	JPF NoneInterrupt		; $806C 20 Reserved
	JPF NoneInterrupt		; $8070 21 Reserved
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
;==============****321*    *
	MOV DDRA, #%00001000;   *
	MOV CR1A, #%00001000;   *
	MOV PORTA,#%00001000;   *
;==============**54****    *
	MOV DDRB, #%00100000;   *
	MOV CR1B, #%00110000;   *
	MOV CR2B, #%00010000;   *
	MOV PORTB,#%00110000;   *
;==============76543***    *
	MOV DDRC, #%11111000;   *
	MOV CR1C, #%11111000;   *
	MOV PORTC,#%01111000;   *
;==============7654321*    *
	MOV DDRD, #%01111110;   *
	MOV CR1D, #%01111110;   *
	MOV PORTD,#%01100100;   *
  RET                  ;   *
;***************************
;**************************************************************************************
InitTimers.w:
;**TIMER1******************
	;MOV TIM1_PSCRH,#3
	;MOV TIM1_PSCRL,#232
	;MOV TIM1_ARRH, #$1E
	;MOV TIM1_ARRL, #$00
	;MOV TIM1_CR1,  #%10000000
	;MOV TIM1_IER,  #%00000001
	;MOV ITC_SPR3,  #%11000000
;**TIMER2******************
	;Инициализация таймеров
	MOV TIM2_PSCR, #2
	MOV TIM2_ARRH, #1
	MOV TIM2_ARRL, #100
	MOV TIM2_CR1,  #%10000000
	MOV TIM2_IER,  #%00000001
;**TIMER4******************
	MOV TIM4_PSCR, #7
	MOV TIM4_ARR,  #250
	MOV TIM4_CR1,  #%10000001
	MOV TIM4_IER,  #%00000001
  RET
;**************************************************************************************
InitSystemClock.w:
	;Turn on HSE
	;MOV CLK_ECKR,#$01 
	;MOV CLK_SWCR,#$02 
	;MOV CLK_PCKENR1,#$FF
;Looped:
	;BTJF CLK_ECKR,#1,Looped 
   ;MOV CLK_CKDIVR,#$00 
	;MOV CLK_SWR,#$B4
;Looped2:
	;BTJF CLK_SWCR,#3,Looped2 
	;=============================	
	;Инициализация внеутренней RC цепочки на 128 КГц
	MOV CLK_SWCR,#$02		
	MOV CLK_ICKR,#%00001000
	MOV CLK_PCKENR1,#$30
	MOV CLK_PCKENR2,#$00
Looped:
	BTJF CLK_ICKR,#4,Looped	
	MOV CLK_CKDIVR,#$00 
	MOV CLK_SWR,#$D2
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
Show:
	MOV Digit1,Null
	MOV Digit2,Null
	MOV Digit3,Hours10
	MOV Temp6,#0
	MOV Temp7,#0
	MOV Temp8,#0
	IRET
	;=================
	MOV Digit1,Null
	MOV Digit2,Hours10
	MOV Digit3,Hours1
	MOV Temp6,#0
	MOV Temp7,#0
	MOV Temp8,#1
	IRET
	;=================
	MOV Digit1,Hours10
	MOV Digit2,Hours1
	MOV Digit3,Min10
	MOV Temp6,#0
	MOV Temp7,#1
	MOV Temp8,#0
	IRET
	;=================
	MOV Digit1,Hours1
	MOV Digit2,Min10
	MOV Digit3,Min1
	MOV Temp6,#1
	MOV Temp7,#0
	MOV Temp8,#1
	IRET
	;=================
	MOV Digit1,Min10
	MOV Digit2,Min1
	MOV Digit3,Sec10
	MOV Temp6,#0
	MOV Temp7,#1
	MOV Temp8,#0
	IRET
	;=================
	MOV Digit1,Min1
	MOV Digit2,Sec10
	MOV Digit3,Sec1
	MOV Temp6,#1
	MOV Temp7,#0
	MOV Temp8,#0
	IRET
	;=================
	MOV Digit1,Sec10
	MOV Digit2,Sec1
	MOV Digit3,Null
	MOV Temp6,#0
	MOV Temp7,#0
	MOV Temp8,#0
	IRET
	;=================
	MOV Digit1,Sec1
	MOV Digit2,Null
	MOV Digit3,Null
	MOV Temp6,#0
	MOV Temp7,#0
	MOV Temp8,#0
	;=================
  IRET

Timer2.w:
	BRES TIM2_SR1,#UIF	
	call ShowOnDisplayDigit
	INC Temp5
	JREQ StopShowTime
	LD A,Temp5
	CLRW X
	LD XL,A
	LD A,#31
	DIV X,A
	LD A,#$16
	MUL X,A
	LD A,XL
	LD $0001,A
	LDW X,#Show
	ADDW X,$0000
	JP (X)
  IRET 

;#######
Timer4.w:   
	BRES TIM4_SR,#UIF
	BSET Flags,#isClock250mS
  IRET
;#######
EXTI1:
	BTJF TIM2_CR1,#CEN,StartShowTime 	
  IRET	
;**************************************************************************************
;**************************************************************************************
SystemStart:
	MOV Hours10,#1
	MOV Hours1 ,#9
	MOV Min10  ,#4
	MOV Min1   ,#7
	MOV Null	  ,#10
	call InitSystemClock	
	call InitTimers
	call InitPortsIO
	MOV EXTI_CR1,#%00000100
	BSET CLK_PCKENR1,#5 ; On CLK Timer2
	RIM
Main.W:	
	BTJT Flags,#isClock250mS,RenderClock 	
	WFI
	JP Main
RenderClock:
	call lRenderClock
	BRES Flags,#isClock250mS
	JP {Main+5}
StartShowTime:
	MOV Digit1,Null
	MOV Digit2,Null
	MOV Digit3,Null
	BSET CLK_PCKENR1,#5 ; On CLK Timer2
	BSET TIM2_CR1,#CEN  ; On Timer2
	IRET
StopShowTime:
	BRES TIM2_CR1,#CEN  ; Off Timer2
	BRES CLK_PCKENR1,#5 ; Off CLK Timer2
	MOV PORTA,#%00001000
	MOV PORTC,#%01111000
	MOV PORTD,#%01100100
	IRET
;==============================	
ShowOnDisplayDigit:
	INC Temp4
	LD A,Temp4
	CP A,#$02
	JREQ Show3
	CP A,#$01
	JREQ Show2 	
	
	BRES PORTD,#4
	LD A,Digit3
	call DecoderDigits
	BSET PORTD,#3
	LD A, Temp8
	CP A,#$01
	JREQ SetPoint
	RET
Show2:	
	BRES PORTD,#3
	LD A,Digit2
	call DecoderDigits
	BSET PORTC,#7
	LD A, Temp7
	CP A,#$01
	JREQ SetPoint
	RET
Show3:
	BRES PORTC,#7	
	LD A,Digit1
	call DecoderDigits
	BSET PORTD,#4
	MOV Temp4,#$FF
	LD A, Temp6
	CP A,#$01
	JREQ SetPoint
	RET
SetPoint:
	BRES PORTC,#5
	RET
;==============================	
DecoderDigits:
	PUSH $0000
	PUSH $0001
	CLR $0000
	CLRW X
	LD XL,A
	LD A,#$0D
	MUL X,A
	LD A,XL
	LD $0001,A
	LDW X,#OutPortDigit
	ADDW X,$0000
	POP $0001
	POP $0000
	JP (X)
OutPortDigit:
	;==================
	;0
	MOV PORTA,#%00000000 
	MOV PORTC,#%00101000
	MOV PORTD,#%00000000
	RET
	;1
	MOV PORTA,#%00001000
	MOV PORTC,#%01101000	
	MOV PORTD,#%01100000
	RET
	;2
	MOV PORTA,#%00000000
	MOV PORTC,#%00110000
	MOV PORTD,#%01000000
	RET
	;3
	MOV PORTA,#%00001000
	MOV PORTC,#%00100000
	MOV PORTD,#%01000000
	RET
	;4
	MOV PORTA,#%00001000
	MOV PORTC,#%01100000
	MOV PORTD,#%00100000
	RET
	;5
	MOV PORTA,#%00001000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000100
	RET
	;6
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000100
	RET
	;7
	MOV PORTA,#%00001000
	MOV PORTC,#%01101000
	MOV PORTD,#%01000000
	RET
	;8
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000000
	RET
	;9
	MOV PORTA,#%00001000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000000
	RET
	;
	MOV PORTA,#%00001000
	MOV PORTC,#%01111000
	MOV PORTD,#%01100100
	RET
;==============================
lRenderClock:
	INC Ms250
	LD A,Ms250
	CP A,#4
	JRNE SkipInc	
	CLR Ms250
	INC Sec1
	LD A,Sec1
	CP A,#10
	JRNE SkipInc
	CLR Sec1
	INC Sec10
	LD A,Sec10
	CP A,#6
	JRNE SkipInc
	CLR Sec10	
	INC Min1
	LD A,Min1
	CP A,#10
	JRNE SkipInc
	CLR Min1
	INC Min10
	LD A,Min10
	CP A,#6
	JRNE SkipInc
	CLR Min10
	INC Hours1
	LD A,Hours1
	CP A,#10
	JRNE SkipInc
	CLR Hours1
	INC Hours10
SkipInc:
	LD A,Hours10
	CP A,#2
	JRNE SkipNewDay
	LD A,Hours1
	CP A,#4
	JRNE SkipNewDay
	LD A,CorrectTime
	CP A,#$00
	JRNE SkipCorrection
	MOV Hours10,#2
	MOV Hours1,#3
	MOV Min10,#5
	MOV Min1,#9
	MOV Sec10,#4
	MOV Sec1,#1
	CPL CorrectTime
	JP SkipNewDay
SkipCorrection:
	CLR Hours10
	CLR Hours1	
	CPL CorrectTime
SkipNewDay:
	BRES TIM4_CR1,#CEN  
	LDW X,#334
CorrectRC:
	DECW X
	JRNE CorrectRC
	NOP
	BSET TIM4_CR1,#CEN  
	RET
;**************************************************************************************
	END		 
	