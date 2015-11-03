;====================================================================================
	SEGMENT 'ROM'
;====================================================================================
UpdateKeyboard:
	BTJT KeyboardFlag,#0,ClearStatusKeyboard
	;Если флаг переполнения сброшен,
	;то продолжаем работу.
	;В противном случае-выход.
	MOV OldLine1,BufLine1
	MOV OldLine2,BufLine2
	MOV OldLine3,BufLine3
	MOV OldLine4,BufLine4
	call ReadKeyboard
	call CheckLine
	BSET KeyboardFlag,#0
	call HandlerButton
  RET
CheckLine:
	;+++Проверка 1 линии+++
	LD A,OldLine1           ;Сравнимаем состояние клавиатуры
	CP A,BufLine1				;до и после считывания.
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
;====================================================================================
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
;====================================================================================
HandlerButton:
	BTJF Line1,#7,Next1
	;HandlerButton1---
	call OnDownButton1
	;-----------------
Next1:
	BTJF Line1,#6,Next2
	;HandlerButton2---
	call OnDownButton2
	;-----------------
Next2:
	BTJF Line1,#5,Next3
	;HandlerButton3---
	call OnDownButton3
	;-----------------
Next3:
	BTJF Line2,#7,Next4
	;HandlerButton4---
	;call OnDownButton4
	;-----------------
Next4:
	BTJF Line2,#6,Next5
	;HandlerButton5---
	;call OnDownButton5
	;-----------------
Next5:
	BTJF Line2,#5,Next6
	;HandlerButton6---
	;call OnDownButton6
	;-----------------
Next6:
	BTJF Line3,#7,Next7
	;HandlerButton7---
	;call OnDownButton7
	;-----------------
Next7:
	BTJF Line3,#6,Next8
	;HandlerButton8---
	;call OnDownButton8
	;-----------------
Next8:
	BTJF Line3,#5,Next9
	;HandlerButton9---
	;call OnDownButton9
	;-----------------
Next9:
	BTJF Line4,#7,Next10
	;HandlerButton10--
	;call OnDownButton10
	;-----------------
Next10:
	BTJF Line4,#6,Next11
	;HandlerButton11--
	;call OnDownButton11
	;-----------------
Next11:
	BTJF Line4,#5,OutHandler
	;HandlerButton12--
	;call OnDownButton12
	;-----------------	
OutHandler:
  RET
;====================================================================================
UpdateKeyboardFlag:
	BRES KeyboardFlag,#0
  RET
;====================================================================================
	END	 