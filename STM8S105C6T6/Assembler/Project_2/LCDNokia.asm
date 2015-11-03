;====================================================================================
	#include "Font6x8.asm"
	#include "BasicMath.asm"
;====================================================================================
CS   	  EQU 1
LCDPort EQU PORTG
;====================================================================================
	SEGMENT 'ROM'
;====================================================================================
DelayUs MACRO Cycle
	MOV DelayCycle,Cycle
	call Loop
	MEND
Loop:
	DEC DelayCycle
	JRNE Loop
  RET
;====================================================================================
SendToLCD MACRO Data
	LDW X,Data
	call lSendToLCD
	MEND
lSendToLCD:
	SIM
	BRES LCDPort,#CS
	;***Transmission 9-bit*** 
	LDW Y,X 
	SRLW Y 
	LD A,YL
	LD SPI_DR,A
Wait1:
	BTJT SPI_SR,#7,Wait1
	LD A,XL	
	AND A,#$01
	RCF
	RRC A
	RRC A
	LD SPI_DR,A
Wait2:
	BTJT SPI_SR,#7,Wait2
	BSET LCDPort,#CS
	RIM
  RET
;====================================================================================
DrawFillRectangle MACRO XRect,YRect,WRect,HRect,Red,Green,Blue
	MOV Temp1,XRect
	MOV Temp,YRect
	MOV Temp3,WRect
	MOV Temp2,HRect
	MOV Temp4,Red
	MOV Temp5,Green
	MOV Temp6,Blue
	call lDrawFillRect
	MEND
lDrawFillRect:
	SendToLCD #$002A	
		SendToLCD #$0100
	LDW X,#$0100
	LD A,Temp
	LD XL,A
	 call lSendToLCD
		SendToLCD #$0100
	LDW X,#$0100
	LD A,Temp
	ADD A,Temp2
	SUB A,#$01
	LD XL,A
	 call lSendToLCD
	SendToLCD #$002B
		SendToLCD #$0100
	LDW X,#$0100
	LD A,Temp1
	LD XL,A
	 call lSendToLCD
		SendToLCD #$0100
	LDW X,#$0100
	LD A,Temp1
	ADD A,Temp3
	SUB A,#$01
	LD XL,A
	 call lSendToLCD 
	SendToLCD #$002C
	LD A,Temp2
	LD XL,A
	LD A,Temp3
	MUL X,A
	PUSHW X
	;Convert color mode
	CLRW Y
	CLRW X
	LD A,Temp4
	AND A,#%11111000
	LD YH,A
	LD A,Temp5
	AND A,#%11111100
	LD XL,A
	LD A,#$04
	MUL X,A
	SLLW X
	LD A,Temp6
	SRL A
	SRL A
	SRL A
	LD Temp6,A
	LD A,XL
	ADD A,Temp6
	LD XL,A
	LD A,YH
	LD Temp4,A
	LD A,XH
	ADD A,Temp4
	LD Temp4,A
	LD A,XL
	LD Temp5,A
	;------------------
	POPW X	
	CPW X,#$0000
	JRNE SendData
	RET
SendData:
	PUSHW X
	LDW X,#$0100
	LD A,Temp4
	LD XL,A
	call lSendToLCD
	LDW X,#$0100
	LD A,Temp5
	LD XL,A
	call lSendToLCD
	POPW X
	DECW X
	JRNE SendData
  RET
;====================================================================================
DrawPoint MACRO X1,Y1,Red,Green,Blue
	MOV Temp,X1
	MOV Temp1,Y1
	MOV Temp4,Red
	MOV Temp5,Green
	MOV Temp6,Blue
	call lDrawPoint
	MEND
lDrawPoint:
	;SIM
	SendToLCD #$002A	
	LDW X,#$0100
	LD A,Temp1
	LD XL,A
	 call lSendToLCD
	 call lSendToLCD
	SendToLCD #$002B
	LDW X,#$0100
	LD A,Temp
	LD XL,A
	 call lSendToLCD
	 call lSendToLCD 
	SendToLCD #$002C
	;Convert color mode
	CLRW Y
	CLRW X
	LD A,Temp4
	AND A,#%11111000
	LD YH,A
	LD A,Temp5
	AND A,#%11111100
	LD XL,A
	LD A,#$04
	MUL X,A
	SLLW X
	LD A,Temp6
	SRL A
	SRL A
	SRL A
	LD Temp6,A
	LD A,XL
	ADD A,Temp6
	LD XL,A
	LD A,YH
	LD Temp4,A
	LD A,XH
	ADD A,Temp4
	LD Temp4,A
	LD A,XL
	LD Temp5,A
	;------------------
	LDW X,#$0100
	LD A,Temp4
	LD XL,A
	call lSendToLCD
	LDW X,#$0100
	LD A,Temp5
	LD XL,A
	call lSendToLCD
  RET
;====================================================================================
DrawRectangle MACRO XRect,YRect,WRect,HRect,Red,Green,Blue
	MOV Temp7,XRect
	MOV Temp8,YRect
	MOV Temp9,WRect
	MOV Temp10,HRect
	MOV Temp14,Red
	MOV Temp15,Green
	MOV Temp16,Blue
	call DrawRect
	MEND
DrawRect:
	;SIM
	DrawFillRectangle Temp7,Temp8,Temp9,#1,Temp14,Temp15,Temp16
	DrawFillRectangle Temp7,Temp8,#1,Temp10,Temp14,Temp15,Temp16
	LD A,Temp7
	ADD A,Temp9
	SUB A,#1
	LD Temp3,A
	DrawFillRectangle Temp3,Temp8,#1,Temp10,Temp14,Temp15,Temp16
	LD A,Temp8
	ADD A,Temp10
	SUB A,#1
	LD Temp3,A
	DrawFillRectangle Temp7,Temp3,Temp9,#1,Temp14,Temp15,Temp16
  RET
;====================================================================================
DrawProgressBar MACRO XProgress,YProgress,Percent
	MOV Temp11,XProgress
	MOV Temp12,YProgress
	MOV Temp13,Percent	
	call DrawProgress
	MEND
DrawProgress:
	INC Temp11
	INC Temp11
	INC Temp12
	INC Temp12
	MOV Temp14,Temp13
	LD A,#255
	SUB A,Temp13
	LD Temp15,A
	LD A,Temp13
	CLRW X
	LD XL,A
	LD A,#3
	DIV X,A
	LD A,XL
	LD Temp13,A
	DrawFillRectangle Temp11,Temp12,Temp13,#15,Temp15,Temp14,#$00	
	LD A,Temp11
	SUB A,#1
	LD Temp11,A
	LD A,Temp12
	SUB A,#1
	LD Temp12,A
	DrawRectangle Temp11,Temp12,#87,#17,#$11,#$22,#$33
	LD A,Temp11
	SUB A,#1
	LD Temp11,A
	LD A,Temp12
	SUB A,#1
	LD Temp12,A
	DrawRectangle Temp11,Temp12,#89,#19,#$AA,#$AA,#$AA
	LD A,Temp11
	ADD A,#2
	ADD A,Temp13
	LD Temp11,A
	LD A,Temp12
	ADD A,#2
	LD Temp12,A	
	CLR A
	ADD A,#85
	SUB A,Temp13
	LD Temp13,A
	DrawFillRectangle Temp11,Temp12,Temp13,#15,#$10,#$10,#$10	
  RET
;====================================================================================
DrawLine MACRO X1,Y1,X2,Y2,Red,Green,Blue
	MOV XStart,X1
	MOV YStart,Y1
	MOV XEnd,X2
	MOV YEnd,Y2
	MOV Temp14,Red
	MOV Temp15,Green
	MOV Temp16,Blue
	call lDrawLine
	MEND
Label1:
	MOV IncX,#$01
	LD A,XEnd
	SUB A,XStart
	LD dX,A
	JP Label1and2Return
Label2:
	MOV IncX,#$00
	MOV dX,#$00
	JP Label1and2Return
Label3:
	MOV IncY,#$01
	LD A,YEnd
	SUB A,YStart
	LD dY,A
	JP Label3and4Return
Label4:
	MOV IncY,#$00
	MOV dY,#$00
	JP Label3and4Return
Label5:
	MOV pdX,IncX
	MOV pdY,#$00
	MOV ES,dY
	MOV EL,dX
	JP Label5Return
;----------------------
lDrawLine:
	;SIM
	LD A,XEnd
	CP A,XStart
	JRUGT Label1
	LD A,XEnd
	CP A,XStart
	JREQ Label2 	
	MOV IncX,#$02
	LD A,XStart
	SUB A,XEnd
	LD dX,A
Label1and2Return:
	;---
	LD A,YEnd
	CP A,YStart
	JRUGT Label3
	LD A,YEnd
	CP A,YStart
	JREQ Label4 	
	MOV IncY,#$02
	LD A,YStart
	SUB A,YEnd
	LD dY,A
Label3and4Return:
	;---
	LD A,dX
	CP A,dY
	JRUGT Label5
	MOV pdX,#$00
	MOV pdY,IncY
	MOV ES,dX
	MOV EL,dY
Label5Return:
	;---
	LD A,EL
	SRL A
	LD Err,A
	DrawPoint XStart,YStart,Temp14,Temp15,Temp16
	MOV CounterI,EL
CycleDrawLine:
	;---+_+_+_+_+_+_
	LD A,Err
	SUB A,ES
	LD Err,A
	;---
	CP A,#128
	JRUGT Label6
	BTJT pdX,#1,Label7
	LD A,XStart
	ADD A,pdX
	LD XStart,A
Label7Return:
	BTJT pdY,#1,Label8
	LD A,YStart
	ADD A,pdY
	LD YStart,A
Label6Return:
	;---+_+_+_+_+_+_
	DrawPoint XStart,YStart,Temp14,Temp15,Temp16
	DEC CounterI
	JRNE CycleDrawLine	
  RET
;----------------------
Label6:
	LD A,Err
	ADD A,EL
	LD Err,A
	BTJT IncX,#1,Label9
	LD A,XStart
	ADD A,IncX
	LD XStart,A
Label9Return:
	BTJT IncY,#1,Label10
	LD A,YStart
	ADD A,IncY
	LD YStart,A
	JP Label6Return
Label7:
	LD A,XStart
	SUB A,#1
	LD XStart,A
	JP Label7Return
Label8:
	LD A,YStart
	SUB A,#1
	LD YStart,A
	JP Label6Return
Label9:
	LD A,XStart
	SUB A,#1
	LD XStart,A
	JP Label9Return
Label10:
	LD A,YStart
	SUB A,#1
	LD YStart,A
	JP Label6Return
;====================================================================================
DrawSymbol MACRO X1,Y1,S1,SCLX,SCLY,Red,Green,Blue
	MOV XStart,X1
	MOV YStart,Y1
	MOV Symbol,S1
	MOV ScaleX,SCLX
	MOV ScaleY,SCLY
	MOV Temp4,Red
	MOV Temp5,Green
	MOV Temp6,Blue
	call lDrawSymbol
	MEND
lDrawSymbol:
	CLRW X
	LD A,(Font6x8,X)
	PUSH A
	LD A,ScaleX
	LD XL,A
	POP A
	MUL X,A
	LD A,XL
	DEC A
	LD WidthS,A
	
	LDW X,#1
	LD A,(Font6x8,X)
	PUSH A
	LD A,ScaleY
	LD XL,A
	POP A
	MUL X,A
	LD A,XL
	DEC A
	LD HeightS,A
	
	SendToLCD #$002A	
	LDW X,#$0100
	LD A,YStart
	LD XL,A
	 call lSendToLCD
	LDW X,#$0100
	LD A,YStart	
	ADD A,HeightS
	LD XL,A
	 call lSendToLCD
	SendToLCD #$002B
	LDW X,#$0100
	LD A,XStart
	LD XL,A
	 call lSendToLCD
	LDW X,#$0100
	LD A,XStart
	ADD A,WidthS
	LD XL,A
	 call lSendToLCD 
	;Convert color mode
	CLRW Y
	CLRW X
	LD A,Temp4
	AND A,#%11111000
	LD YH,A
	LD A,Temp5
	AND A,#%11111100
	LD XL,A
	LD A,#$04
	MUL X,A
	SLLW X
	LD A,Temp6
	SRL A
	SRL A
	SRL A
	LD Temp6,A
	LD A,XL
	ADD A,Temp6
	LD XL,A
	LD A,YH
	LD Temp4,A
	LD A,XH
	ADD A,Temp4
	LD Temp4,A
	LD A,XL
	LD Temp5,A
	SendToLCD #$002C
	MOV CycleI,#255
CyclingI:
	INC CycleI
	MOV CycleJ,#255
CyclingJ:
		INC CycleJ
		;-------------
		CLRW X
		LD A,CycleJ
		LD XL,A
		LD A,ScaleY
		DIV X,A
		LD A,XL
		LD Position,A
		LDW X,#$0
		LD A,(Font6x8,X)
		LD XL,A
		LD A,Symbol
		MUL X,A
		ADDW X,#$02
		CLR Temp15
		LD A,CycleI
		LD YL,A
		LD A,ScaleX
		DIV Y,A
		LD A,YL
		LD Temp16,A		
		ADDW X,{Temp16-1}
		LD A,(Font6x8,X)
		LD Column,A
		SetBit Temp17,Position
		LD A,Temp17
		AND A,Column
		CP A,#0
		JREQ DrawBackground
		LDW X,#$0100
		LD A,Temp4
		LD XL,A
		call lSendToLCD
		LDW X,#$0100
		LD A,Temp5
		LD XL,A
		call lSendToLCD
ReturnDrawBackground:
		;-------------
		LD A,CycleJ
		CP A,HeightS
		JRNE CyclingJ
	;-------------
	LD A,CycleI
	CP A,WidthS
	JRNE CyclingI
  RET
DrawBackground:
	LDW X,#$0100
	call lSendToLCD
	LDW X,#$0100
	call lSendToLCD
	JP ReturnDrawBackground
;====================================================================================
DrawText	MACRO X1,Y1,Text,SX,SY,Red,Green,Blue
	LOCAL Skip
	LOCAL TextArray
	JP Skip
TextArray:
	STRING Text,$01
Skip:
	MOV XT,X1
	MOV YT,Y1
	MOV ScaleX,SX
	MOV ScaleY,SY
	MOV RT,Red
	MOV GT,Green
	MOV BT,Blue
	LDW Y,#TextArray
	call lDrawText	
	MEND
lDrawText:
	CLRW X
	LD A,(Font6x8,X)
	PUSH A
	LD A,ScaleX
	LD XL,A
	POP A
	MUL X,A
	LD A,XL
	LD Var3,A
	MOV Var5,#$FF
	CLR Shift
CycleS:
	INC Var5
	PUSHW Y
	ADDW Y,{Var5-1}
	ADDW Y,{Shift-1}
	LD A,(Y)
	CP A,#$01
	JRNE DrawingSymbol
	POPW Y
	RET
	;------------
DrawingSymbol:
	CP A,#'/'
	JRNE DrawingSymbol2
	PUSH A
	LDW X,Y
	ADDW X,#$0001
	LD A,(X)
	CP A,#'c'
	JRNE NextCheck
	POP A
	INC Shift
	LD A,#','
	JP DrawingSymbol2
NextCheck:
	CP A,#'s'
	JRNE PreDrawingSymbol2
	POP A
	INC Shift
	LD A,#$20
	JP DrawingSymbol2
PreDrawingSymbol2:
	POP A
	;------------
DrawingSymbol2:
	PUSH A
	LD A,Var3
	LDW X,{Var5-1}
	MUL X,A
	LD A,XL
	ADD A,XT
	LD Var4,A
	POP A
	LD {Var5-1},A
	PUSH A
	DrawSymbol Var4,YT,{Var5-1},ScaleX,ScaleY,RT,GT,BT
	CLR {Var5-1}
	POP A
	;------------
	POPW Y
	JP CycleS
  RET
;====================================================================================
InitLCD:
	;SIM
	;Hardware reset
	SendToLCD #$0001
	DelayUs #$FF
	;Booster voltage on
	;SendToLCD #$0003
	;Sleep out
	SendToLCD #$0011
	;Normal mode on
	SendToLCD #$0013
	;Display inversion off
	SendToLCD #$0020
	;Set Contrast
	;SendToLCD #$0025
	;	SendToLCD #%100111111
	;SendToLCD #$002A	
	;	SendToLCD #$0100
	;	SendToLCD #$0183
	;SendToLCD #$002B	
	;	SendToLCD #$0100
	;	SendToLCD #$0183
	;Interface pixel format
	SendToLCD #$003A 
     ;SendToLCD #$0105	
	  SendToLCD #$0175	
	;Memory data access control
	SendToLCD #$0036
     SendToLCD #%100100000
	  ;SendToLCD #$01C0
	;Tearing line on
	;SendToLCD #$0035	
	;Display on
	SendToLCD #$0029		
	;Clear display
	DrawFillRectangle #1,#1,#128,#160,#$00,#$00,#$00
  RET
;====================================================================================  
END