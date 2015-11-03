;=======RAMMemory($0000-$07FF)================
Temp              EQU	$0000
Temp1					EQU   $0001
Temp2					EQU	$0002
Temp3					EQU	$0003
Temp4					EQU   $0004
Temp5					EQU   $0005
Temp6             EQU   $0006
Temp7             EQU   $0007
Temp8             EQU   $0008
Temp9             EQU   $0009
Temp10            EQU   $000A
Temp11            EQU   $000B
Temp12            EQU   $000C
Posit		         EQU   $000D
DelayCycle        EQU   $000E
Temp13            EQU   $000F
Temp14            EQU   $0010
Temp15				EQU   $0011
Temp16				EQU	$0012
Temp17				EQU   $0013
Temp18				EQU   $0014
Temp19            EQU   $0015
Temp20            EQU   $0016
Temp21            EQU   $0017
Temp22            EQU   $0018
Temp23            EQU   $0019
Temp24            EQU   $001A
;Use for algoritm draw line
XStart				EQU   $001B
YStart				EQU   $001C
XEnd					EQU	$001D
YEnd					EQU	$001E
dX						EQU	$001F
dY						EQU	$0020
IncX					EQU	$0021
IncY					EQU	$0022
pdX					EQU	$0023
pdY					EQU	$0024
ES						EQU	$0025
EL						EQU	$0026
Err					EQU	$0027
CounterI				EQU	$0028
;Use for Hyberbolic functions
Alpha					EQU	$0029	
Length				EQU	$002A
Sign					EQU	$002B
Result            EQU   $002C
;--------------------------
Arg2L					EQU	$002D
Arg2H					EQU	$002E
;--------------------------
;Use by ProjectionXY(X1,Y1,LengthVector,,Alpha,X2,Y2)
XS						EQU	$002F
YS						EQU	$0030
LengthLine			EQU	$0031
Angle					EQU	$0032
XE						EQU	$0033
YE						EQU	$0034
Var1					EQU	$0035	
Var2					EQu	$0036
;-------------------------------------
Temp25				EQU	$0037
Temp26				EQU	$0038
Temp27				EQU	$0039
;-------------------------------------
;Use by DrawSymbol
Symbol				EQU	$003A
ScaleX				EQU	$003B
ScaleY				EQU	$003C
WidthS				EQU	$003D
HeightS				EQU	$003E
Position				EQU   $003F
Column				EQU	$0040
CycleI				EQU	$0041
CycleJ				EQu	$0042
;Use by DrawText
XT						EQU	$0043
YT						EQU	$0044
Var3					EQU	$0045
Var4					EQU	$0046
RT						EQU	$0047
GT						EQU	$0048
BT						EQU	$0049
Var5					EQU   $004B
Shift					EQU   $004D
;--------------------------
Temp71				EQU   $004E
LvlLed				EQU   $004F
IsRender				EQU   $0050
LvlLed2           EQU   $0051
;--------------------------
;Use for MatrixKeyboard
;****************************
KeyboardFlag      EQU   $0052
;****************************
Line1             EQU   $0053
Line2             EQU   $0054
Line3             EQU   $0055
Line4             EQU   $0056
OldLine1          EQU   $0057
OldLine2          EQU   $0058
OldLine3          EQU   $0059
OldLine4          EQU   $005A
BufLine1          EQU   $005B
BufLine2          EQU   $005C
BufLine3          EQU   $005D
BufLine4          EQU   $005E
UpdateRTCFlag
;====================================================================================


END