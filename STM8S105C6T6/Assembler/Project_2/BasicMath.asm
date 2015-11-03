;====================================================================================
	SEGMENT 'ROM'
;====================================================================================
Mul16x16:
	PUSHW X
	SWAPW X
	LD A,Arg2L
	MUL X, A
	PUSHW X
	LDW X,($3,SP)
	LD A,Arg2L
	MUL X,A
	ADDW X,($1,SP)
	CLR A
	RLWA X,A
	PUSHW X
	LDW X,($5,SP)
	LD A,Arg2H
	MUL X,A
	ADDW X,($1,SP)
	ADDW SP,#$06
  RET
;====================================================================================
Sin MACRO Alpha1,LengthVector1,Result1,Sign1; 1.5 Degrees=1 Alpha
	MOV Alpha,Alpha1
	MOV Length,LengthVector1
	call lSin
	MOV Result1,Result
	MOV Sign1,Sign
	MEND
lSin:
	LD A,Alpha
	CP A,#59
	JRULE Vector0_59
	CP A,#119
	JRULE Vector60_119
	CP A,#179
	JRULE Vector120_179
	CP A,#239
	JRULE Vector180_239
	call Vector0
  RET
Vector0_59:
	CP A,#0
	JREQ Vector0
	;----
	MOV Sign,#$01
	;----
	call CalcSin
	;----
  RET
Vector60_119:
	CP A,#60
	JREQ Vector1
	;----
	MOV Sign,#$01
	LD A,Alpha
	SUB A,#60
	LD Alpha,A
	LD A,#60
	SUB A,Alpha
	LD Alpha,A	
	;----
	call CalcSin
	;----
  RET
Vector120_179:
	CP A,#120
	JREQ Vector0
	;----
	MOV Sign,#$02
	LD A,Alpha
	SUB A,#120
	LD Alpha,A
	;----
	call CalcSin
	;----
  RET
Vector180_239:
	CP A,#180
	JREQ Vector_1
	;----
	MOV Sign,#$02
	LD A,Alpha
	SUB A,#180
	LD Alpha,A
	LD A,#60
	SUB A,Alpha
	LD Alpha,A
	;----
	call CalcSin
	;----
  RET
CalcSin:
	;(Sin(Alpha)*Length)/10000=Result
	LD A,Alpha
	LD XL,A
	LD A,#$02
	MUL X,A
	LDW X,(Sinus,X)
	LD A,Length
	LDW Arg2L,X 
	CLRW X
	LD XL,A
	call Mul16x16
	LDW Y,#1000
	DIVW X,Y
	LD A,XL
	CPW Y,#500
	JRUGE INCResult
	LD Result,A
  RET
INCResult:
	INC A
	LD Result,A
  RET
;====================================================================================
Vector0:
	MOV Result,#$00
	MOV Sign,#$00
  RET
Vector1:
	MOV Result,Length
	MOV Sign,#$01
  RET
Vector_1:
	MOV Result,Length
	MOV Sign,#$02
  RET 
;====================================================================================	
Cos MACRO Alpha1,LengthVector1,Result1,Sign1; 1.5 Degrees=1 Alpha
	MOV Alpha,Alpha1
	MOV Length,LengthVector1
	call lCos
	MOV Result1,Result
	MOV Sign1,Sign
	MEND
lCos:
	LD A,Alpha
	CP A,#59
	JRULE Vector0_592
	CP A,#119
	JRULE Vector60_1192
	CP A,#179
	JRULE Vector120_1792
	CP A,#239
	JRULE Vector180_2392
	call Vector1
  RET
Vector0_592:
	CP A,#0
	JREQ Vector1
	;----
	MOV Sign,#$01
	LD A,#60
	SUB A,Alpha
	LD Alpha,A	
	;----
	call CalcSin
	;----
  RET
Vector60_1192:
	CP A,#60
	JREQ Vector0
	;----
	MOV Sign,#$02
	LD A,Alpha
	SUB A,#60
	LD Alpha,A
	;----
	call CalcSin
	;----
  RET
Vector120_1792:
	CP A,#120
	JREQ Vector_1
	;----
	MOV Sign,#$02
	LD A,Alpha
	SUB A,#120
	LD Alpha,A
	LD A,#60
	SUB A,Alpha
	LD Alpha,A		
	;----
	call CalcSin
	;----
  RET
Vector180_2392:
	CP A,#180
	JREQ Vector0
	;----
	MOV Sign,#$01
	LD A,Alpha
	SUB A,#180
	LD Alpha,A
	;----
	call CalcSin
	;----
  RET	
;====================================================================================	
Sinus:	
	DC.W  0,  26, 52, 79, 105,131,157,182,208,234,259,284,309,334,358
	DC.W  383,407,431,454,477,500,523,545,567,588,609,629,650,669,688
	DC.W  707,725,743,761,777,793,809,824,839,853,866,879,891,903,914
	DC.W  924,934,943,951,959,966,972,978,983,988,992,995,997,998,999
;====================================================================================
ProjectionOnXY MACRO X1,Y1,LengthVector,Alpha,X2,Y2
	MOV XS,X1
	MOV YS,Y1
	MOV LengthLine,LengthVector
	MOV Angle,Alpha
	call lProjectionXY
	MOV X2,XE
	MOV Y2,YE
	MEND
lProjectionXY:
	Sin Angle,LengthLine,YE,Var1
	Cos Angle,LengthLine,XE,Var2
	LD A,Var1
	CP A,#$01
	JRUGT MinusSin
	LD A,YS
	ADD A,YE
	LD YE,A
MinusSinReturn:
	LD A,Var2
	CP A,#$01
	JRUGT MinusCos
	LD A,XS
	ADD A,XE
	LD XE,A
  RET
MinusSin:
	LD A,YS
	SUB A,YE
	LD YE,A
	JP MinusSinReturn
MinusCos:
	LD A,XS
	SUB A,XE
	LD XE,A
  RET
;====================================================================================  
SetBit MACRO Reg,Position
	LD A,Position
	call lSetBit
	MOV Reg,Posit
	MEND
lSetBit:
	MOV Posit,#$1
	CP A,#0
	JRNE lSetBit2
  RET
lSetBit2:
	DEC A
	SLL Posit
	CP A,#0
	JRNE lSetBit2
  RET
;====================================================================================
	END