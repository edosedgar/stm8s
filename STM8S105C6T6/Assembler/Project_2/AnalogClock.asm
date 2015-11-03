;====================================================================================
	SEGMENT 'ROM'
;====================================================================================
InitAnalogClock:
	DrawFillRectangle #2,#2,#128,#128,#0,#0,#0
	MOV Temp20,#240
DrawTablo1:
	ProjectionOnXY #65,#65,#50,Temp20,Temp22,Temp24
	DrawPoint Temp22,Temp24,#0,#255,#0
	LD A,Temp20
	SUB A,#4
	LD Temp20,A
	JRNE DrawTablo1
	MOV Temp20,#240
DrawTablo:
	ProjectionOnXY #65,#65,#50,Temp20,Temp22,Temp24
	DrawPoint Temp22,Temp24,#255,#255,#255
	LD A,Temp20
	SUB A,#20
	LD Temp20,A
	JRNE DrawTablo
	MOV Temp20,#240
DrawTablo2:
	ProjectionOnXY #65,#65,#51,Temp20,Temp22,Temp24
	DrawPoint Temp22,Temp24,#255,#255,#255
	LD A,Temp20
	SUB A,#20
	LD Temp20,A
	JRNE DrawTablo2
	MOV Temp20,#240
DrawTablo3:
	ProjectionOnXY #62,#62,#57,Temp20,Temp22,Temp24
	DrawSymbol Temp22,Temp24,#$09,#1,#1,#255,#255,#255
	LD A,Temp20
	SUB A,#20
	LD Temp20,A
	JRNE DrawTablo3
	CLR Temp22
	CLR Temp24
	MOV Temp22,#66
	MOV Temp24,Temp22
	MOV Temp25,Temp24
	MOV Temp26,Temp25
	MOV Temp20,#176
	MOV Temp27,#180
  RET
;====================================================================================
RenderClock:
	LD A,IsRender
	CP A,#$01
	JREQ DoRender
	RET
DoRender:
	DrawLine #65,#65,Temp22,Temp24,#$00,#$00,#$00
	DrawLine #65,#65,Temp25,Temp26,#$00,#$00,#$00
	DrawText #41,#85,"EdOS",#2,#2,#60,#60,LvlLed
	ProjectionOnXY #65,#65,#40,Temp20,Temp22,Temp24
	ProjectionOnXY #65,#65,#45,Temp27,Temp25,Temp26
	
	DrawLine #65,#65,Temp22,Temp24,#$DC,#$14,#$3C
	DrawLine #65,#65,Temp25,Temp26,#0,#255,#0
	DrawPoint Temp22,Temp24,#255,#255,#255
	DrawPoint Temp25,Temp26,#255,#255,#255
	DrawFillRectangle #63,#63,#5,#5,#255,#0,#0
	CLR IsRender
  RET
;====================================================================================
UpdateRTC:
	LD A,Temp27
	ADD A,#4
	LD Temp27,A
	CP A,#180
	JRNE SkipReset
	LD A,Temp20
	ADD A,#4
	LD Temp20,A
	CP A,#240
	JRNE SkipReset
	CLR Temp20
SkipReset:
	CP A,#240
	JRNE Skipper
	CLR Temp27
Skipper:
  RET
;====================================================================================
UpdateRenderFlag:
	MOV IsRender,#$01
  RET
;====================================================================================
	END