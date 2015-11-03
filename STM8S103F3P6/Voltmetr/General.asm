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
	JPF NoneInterrupt   ; $8018 4  EXTI1 Port B external interrupts
	JPF NoneInterrupt 	; $801C 5  EXTI2 Port C external interrupts
	JPF NoneInterrupt		; $8020 6  EXTI3 Port D external interrupts
	JPF NoneInterrupt		; $8024 7  EXTI4 Port E external interrupts
	JPF NoneInterrupt		; $8028 8  Reserved
	JPF NoneInterrupt		; $802C 9  Reserved
	JPF NoneInterrupt		; $8030 10 SPI  End of transfer
	JPF Timer1					; $8034 11 TIM1 TIM1 update/ overflow/ underflow/trigger/ break
	JPF NoneInterrupt		; $8038 12 TIM1 TIM1 capture/ compare
	JPF Timer2					; $803C 13 TIM2 TIM2 update/ overflow
	JPF NoneInterrupt		; $8040 14 TIM2 TIM2 capture/ compare
	JPF NoneInterrupt		; $8044 15 Reserved
	JPF NoneInterrupt		; $8048 16 Reserved
	JPF NoneInterrupt		; $804C 17 UART1 Tx complete
	JPF NoneInterrupt		; $8050 18 UART1 Receive register DATA FULL
	JPF NoneInterrupt		; $8054 19 I2C interrupt
	JPF NoneInterrupt		; $806C 20 Reserved
	JPF NoneInterrupt		; $8070 21 Reserved
	JPF NoneInterrupt		; $8060 22 ADC1 ADC1 end of conversion/ analog watchdog interrupt
	JPF Timer4					; $8064 23 TIM4 TIM4 update/ overflow
	JPF NoneInterrupt		; $8068 24 Flash EOP/WR_PG_DIS
	JPF NoneInterrupt		; $806C 25 Reserved
	JPF NoneInterrupt		; $8070 26 Reserved
	JPF NoneInterrupt		; $8074 27 Reserved
	JPF NoneInterrupt		; $8078 28 Reserved
	JPF NoneInterrupt		; $807C 29 Reserved
	
;======================================================================	
	SEGMENT 'ROM'
;**************************
InitPortsIO.w:        ;		*
;=============****321*    *
	MOV DDRA, #%00001110;   *
	MOV CR1A, #%00001110;   *
	MOV CR2A, #%00000010;   *
	MOV PORTA,#%00000110;   *
;=============**54****    *
	MOV DDRB, #%00100000;   *
	MOV CR1B, #%00100000;   *
	MOV PORTB,#%00100000;   *
;=============76543***    *
	MOV DDRC, #%10101000;   *
	MOV CR1C, #%10101000;   *
	MOV PORTC,#%10101000;   *
;=============7654321*    *
	MOV DDRD, #%01111000;   *
	MOV CR1D, #%01111000;   *
	MOV PORTD,#%00011000;   *
  RET                 ;   *
;***************************
InitADC:
	BSET CLK_PCKENR2,#3
	
	MOV ADC_CR1,#%01110010
	MOV ADC_CR2,#%00001000
	MOV ADC_TDRL,#%00001000
	BSET ADC_CR1,#0
	RET
;**************************************************************************************
InitTimers.w:
;**TIMER1******************
	;MOV TIM1_PSCRH,#3
	;MOV TIM1_PSCRL,#232
	;MOV TIM1_ARRH, #$1E
	;MOV TIM1_ARRL, #$00
	;MOV TIM1_CR1,  #%10000000
	;MOV TIM1_CR2,	 #%00100000
	;MOV TIM1_IER,  #%00000001
	;MOV ITC_SPR3,  #%11000000
;**TIMER2******************
	;Инициализация таймеров
	MOV TIM2_PSCR, #3
	MOV TIM2_ARRH, #1
	MOV TIM2_ARRL, #255
	MOV TIM2_CR1,  #%10000001
	MOV TIM2_IER,  #%00000001
;**TIMER4******************
	MOV TIM4_PSCR, #7
	MOV TIM4_ARR,  #50
	MOV TIM4_CR1,  #%10000001
	MOV TIM4_IER,  #%00000001
  RET
;**************************************************************************************
Timer1.w:
	BRES TIM1_SR1,#UIF
	
  IRET

;#######
Mul16x16:
	PUSHW X
	SWAPW X
	LD A,Temp4;L
	MUL X, A
	PUSHW X
	LDW X,($3,SP)
	LD A,Temp4;L
	MUL X,A
	ADDW X,($1,SP)
	CLR A
	RLWA X,A
	PUSHW X
	LDW X,($5,SP)
	LD A,Temp5;H
	MUL X,A
	ADDW X,($1,SP)
	ADDW SP,#$06
  RET
	
Timer2.w:
	BRES TIM2_SR1,#UIF	
	MOV ADC_CSR,#%00000011
	BSET ADC_CR1,#0
	;MOV DataL,ADC_DRL
	;MOV DataH,ADC_DRH
	LDW X,{ADC_DRL-1}
	;LDW DataL,X
	;IRET
	
	LDW Temp96,X
	LDW Y,BufferL
	ADDW Y,Temp96
	LDW BufferL,Y
	INC Temp56
	LD A,Temp56
	CP A,#50
	JREQ RoundData
	IRET
RoundData:
	LDW X,BufferL
	LD A,#50
	DIV X,A
	LDW DataL,X
	CLR Temp56
	CLR BufferL
	CLR {BufferL+1}
	IRET
;#######

Timer4.w:   
	BRES TIM4_SR,#UIF
	MOV ADC_CSR,#%00000011
	BSET ADC_CR1,#0
	;MOV DataL,ADC_DRL
	;MOV DataH,ADC_DRH
	;LDW X,{ADC_DRL-1}
	LDW X,DataL

	;---------------Convert Data ADC to Voltage
	LDW Y,#1495;R1
	LD A,#29;R2/10
	DIV Y,A
	
	ADDW Y,#10
	
	EXGW X,Y
	PUSHW Y	
	LDW Y,#505;Vcc/10
	LDW Temp4,Y
	POPW Y
	call Mul16x16
	
	PUSHW Y
	LDW Y,#1024
	DIVW X,Y
	POPW Y
	
	LDW Temp4,Y
	call Mul16x16
	
	LDW Y,X
	PUSHW Y
	LDW Y,#100
	DIVW X,Y
	
	POPW Y
	PUSHW X
	LDW X,#1000
	EXGW X,Y
	DIVW X,Y
	EXGW X,Y
	LDW Y,#100
	DIVW X,Y
	LDW X,#10
	EXGW X,Y
	DIVW X,Y
	EXGW X,Y
	LD A,XL
	CP A,#5
	JRULT SkipRoundVoltage	
	POPW X	
	INCW X
	LDW Voltage,X
	call ShowOnDisplayDigit
	IRET
SkipRoundVoltage:
	POPW X	
	LDW Voltage,X	
	call ShowOnDisplayDigit
	

  IRET 
;**************************************************************************************
;**************************************************************************************
SystemStart:
	call InitTimers
	call InitPortsIO
	call InitADC
	RIM
	
Main.W:	

	JP Main

;==============================	
ShowOnDisplayDigit:
	;Convert int to string
	LDW X,Voltage
	CPW X,#999
	JRSLE SkipOverVal
	LDW X,#999
	LDW Voltage,X
SkipOverVal:
	LD A,#100
	DIV X,A
	SWAPW X
	LDW {Digit1+0},X
	CLRW X
	LD XL,A
	LD A,#10
	DIV X,A
	SWAPW X
	LDW {Digit2+0},X
	LD Digit3,A
	LD A,Digit1
	CP A,#0
	JRNE SkipDelZero
	MOV Digit1,#10
SkipDelZero:	
	;Start show dynamic indication
	INC Temp
	LD A,Temp
	CP A,#$02
	JREQ Show3
	CP A,#$01
	JREQ Show2 	
	
	BRES PORTA,#3
	LD A,Digit3
	call DecoderDigits
	BSET PORTD,#5
	RET
Show2:	
	BRES PORTD,#5
	LD A,Digit2
	call DecoderDigits
	BSET PORTD,#6
	BRES PORTC,#5;Set Point
	RET
Show3:
	BRES PORTD,#6
	LD A,Digit1
	call DecoderDigits
	BSET PORTA,#3
	MOV Temp,#$FF
	RET
;==============================	
DecoderDigits:
	;This function convert digit to state on pins ports I/O
	PUSH $0000
	PUSH $0001
	CLR $0000
	CLRW X
	LD XL,A
	LD A,#$11
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
	MOV PORTC,#%00100000
	MOV PORTD,#%00001000
	MOV PORTB,#%00000000
	RET
	;1
	MOV PORTA,#%00000110
	MOV PORTC,#%00101000
	MOV PORTD,#%00001000
	MOV PORTB,#%00100000
	RET
	;2
	MOV PORTA,#%00000010
	MOV PORTC,#%10100000
	MOV PORTD,#%00000000
	MOV PORTB,#%00000000
	RET
	;3
	MOV PORTA,#%00000010
	MOV PORTC,#%00100000
	MOV PORTD,#%00000000
	MOV PORTB,#%00100000
	RET
	;4
	MOV PORTA,#%00000100
	MOV PORTC,#%00101000
	MOV PORTD,#%00000000
	MOV PORTB,#%00100000
	RET
	;5
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00010000
	MOV PORTB,#%00100000
	RET
	;6
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00010000
	MOV PORTB,#%00000000
	RET
	;7
	MOV PORTA,#%00000010
	MOV PORTC,#%00101000
	MOV PORTD,#%00001000
	MOV PORTB,#%00100000
	RET
	;8
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000000
	MOV PORTB,#%00000000
	RET
	;9
	MOV PORTA,#%00000000
	MOV PORTC,#%00100000
	MOV PORTD,#%00000000
	MOV PORTB,#%00100000
	RET
	;
	MOV PORTA,#%00000110
	MOV PORTC,#%10101000
	MOV PORTD,#%00011000
	MOV PORTB,#%00100000
	RET
;==============================
;**************************************************************************************
	END		 
	