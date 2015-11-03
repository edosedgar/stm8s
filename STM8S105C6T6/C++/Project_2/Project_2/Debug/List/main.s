///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            18/May/2013  14:03:54 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\mai /
//                    n.c                                                     /
//    Command line =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\mai /
//                    n.c -e -Ol --no_cse --no_unroll --no_inline             /
//                    --no_code_motion --no_tbaa --no_cross_call --debug      /
//                    --code_model medium --data_model medium -o              /
//                    E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\Deb /
//                    ug\Obj\ --dlib_config "D:\Program_Files\IAR             /
//                    Systems\IAR for STM8\stm8\LIB\dlstm8mmn.h" -lC          /
//                    E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\Deb /
//                    ug\List\ -lA E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\ /
//                    Project_2\Debug\List\ --vregs 16                        /
//    List file    =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\Deb /
//                    ug\List\main.s                                          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__code_model", "medium_or_large"
        RTMODEL "__core", "stm8"
        RTMODEL "__data_model", "medium"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__rt_version", "4"
        RTMODEL "__size_limit", "4294966272"

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b15
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b5
        EXTERN ?b7
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?dec32_l0_l0
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?mov_l0_l1
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l1_l3
        EXTERN ?mov_l2_l1
        EXTERN ?mov_l3_l1
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?pop_l2
        EXTERN ?pop_l3
        EXTERN ?pop_w6
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w0
        EXTERN ?push_w1
        EXTERN ?push_w6
        EXTERN ?sdiv16_x_x_y
        EXTERN ?sext32_l0_x
        EXTERN ?sll16_x_x_12
        EXTERN ?sra16_x_x_12
        EXTERN ?srl32_l0_l0_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7

        PUBLIC ADC
        PUBLIC AWU
        PUBLIC Delay
        PUBLIC DigitToChar
        PUBLIC DisableInterrupts
        PUBLIC DrawCircle
        PUBLIC DrawFillRectangle
        PUBLIC DrawLine
        PUBLIC DrawLine2
        PUBLIC DrawPicture
        PUBLIC DrawPoint
        PUBLIC DrawRectangle
        PUBLIC DrawSymbol
        PUBLIC DrawText
        PUBLIC EXTI0
        PUBLIC EXTI1
        PUBLIC EXTI2
        PUBLIC EXTI3
        PUBLIC EXTI4
        PUBLIC EnableInterrupts
        PUBLIC InitADC
        PUBLIC InitLCD
        PUBLIC InitPortsIO
        PUBLIC InitSPI
        PUBLIC InitSystemClock
        PUBLIC InitTimers
        PUBLIC SPIEndTransfer
        PUBLIC SendSPI
        PUBLIC SendToLCD
        PUBLIC Symbol1
        PUBLIC Symbol10
        PUBLIC Symbol11
        PUBLIC Symbol12
        PUBLIC Symbol13
        PUBLIC Symbol14
        PUBLIC Symbol15
        PUBLIC Symbol16
        PUBLIC Symbol17
        PUBLIC Symbol18
        PUBLIC Symbol19
        PUBLIC Symbol2
        PUBLIC Symbol20
        PUBLIC Symbol21
        PUBLIC Symbol22
        PUBLIC Symbol23
        PUBLIC Symbol24
        PUBLIC Symbol25
        PUBLIC Symbol26
        PUBLIC Symbol27
        PUBLIC Symbol28
        PUBLIC Symbol29
        PUBLIC Symbol3
        PUBLIC Symbol30
        PUBLIC Symbol31
        PUBLIC Symbol32
        PUBLIC Symbol33
        PUBLIC Symbol34
        PUBLIC Symbol35
        PUBLIC Symbol36
        PUBLIC Symbol37
        PUBLIC Symbol38
        PUBLIC Symbol39
        PUBLIC Symbol4
        PUBLIC Symbol40
        PUBLIC Symbol41
        PUBLIC Symbol42
        PUBLIC Symbol43
        PUBLIC Symbol44
        PUBLIC Symbol45
        PUBLIC Symbol46
        PUBLIC Symbol47
        PUBLIC Symbol48
        PUBLIC Symbol49
        PUBLIC Symbol5
        PUBLIC Symbol50
        PUBLIC Symbol51
        PUBLIC Symbol52
        PUBLIC Symbol53
        PUBLIC Symbol54
        PUBLIC Symbol55
        PUBLIC Symbol56
        PUBLIC Symbol57
        PUBLIC Symbol58
        PUBLIC Symbol59
        PUBLIC Symbol6
        PUBLIC Symbol60
        PUBLIC Symbol61
        PUBLIC Symbol62
        PUBLIC Symbol63
        PUBLIC Symbol64
        PUBLIC Symbol7
        PUBLIC Symbol8
        PUBLIC Symbol9
        PUBLIC Timer1
        PUBLIC Timer2
        PUBLIC Timer3
        PUBLIC Timer4
        PUBLIC _interrupt_12
        PUBLIC _interrupt_13
        PUBLIC _interrupt_15
        PUBLIC _interrupt_17
        PUBLIC _interrupt_24
        PUBLIC _interrupt_25
        PUBLIC _interrupt_3
        PUBLIC _interrupt_5
        PUBLIC _interrupt_6
        PUBLIC _interrupt_7
        PUBLIC _interrupt_8
        PUBLIC _interrupt_9
        PUBLIC abs
        PUBLIC main
        
        CFI Names cfiNames0
        CFI StackFrame CFA SP DATA
        CFI Resource A:8, XL:8, XH:8, YL:8, YH:8, SP:16, CC:8, PC:24, PCL:8
        CFI Resource PCH:8, PCE:8, ?b0:8, ?b1:8, ?b2:8, ?b3:8, ?b4:8, ?b5:8
        CFI Resource ?b6:8, ?b7:8, ?b8:8, ?b9:8, ?b10:8, ?b11:8, ?b12:8, ?b13:8
        CFI Resource ?b14:8, ?b15:8
        CFI ResourceParts PC PCE, PCH, PCL
        CFI EndNames cfiNames0
        
        CFI Common cfiCommon0 Using cfiNames0
        CFI CodeAlign 1
        CFI DataAlign 1
        CFI ReturnAddress PC CODE
        CFI CFA SP+3
        CFI A Undefined
        CFI XL Undefined
        CFI XH Undefined
        CFI YL Undefined
        CFI YH Undefined
        CFI CC Undefined
        CFI PC Frame(CFA, -2)
        CFI PCL Undefined
        CFI PCH Undefined
        CFI PCE Undefined
        CFI ?b0 Undefined
        CFI ?b1 Undefined
        CFI ?b2 Undefined
        CFI ?b3 Undefined
        CFI ?b4 Undefined
        CFI ?b5 Undefined
        CFI ?b6 Undefined
        CFI ?b7 Undefined
        CFI ?b8 SameValue
        CFI ?b9 SameValue
        CFI ?b10 SameValue
        CFI ?b11 SameValue
        CFI ?b12 SameValue
        CFI ?b13 SameValue
        CFI ?b14 SameValue
        CFI ?b15 SameValue
        CFI EndCommon cfiCommon0
        
        
        CFI Common cfiCommon1 Using cfiNames0
        CFI CodeAlign 1
        CFI DataAlign 1
        CFI ReturnAddress PC CODE
        CFI CFA SP+9
        CFI A Frame(CFA, -7)
        CFI XL Frame(CFA, -5)
        CFI XH Frame(CFA, -6)
        CFI YL Frame(CFA, -3)
        CFI YH Frame(CFA, -4)
        CFI CC Frame(CFA, -8)
        CFI PC Frame(CFA, -2)
        CFI PCL Undefined
        CFI PCH Undefined
        CFI PCE Undefined
        CFI ?b0 SameValue
        CFI ?b1 SameValue
        CFI ?b2 SameValue
        CFI ?b3 SameValue
        CFI ?b4 SameValue
        CFI ?b5 SameValue
        CFI ?b6 SameValue
        CFI ?b7 SameValue
        CFI ?b8 SameValue
        CFI ?b9 SameValue
        CFI ?b10 SameValue
        CFI ?b11 SameValue
        CFI ?b12 SameValue
        CFI ?b13 SameValue
        CFI ?b14 SameValue
        CFI ?b15 SameValue
        CFI EndCommon cfiCommon1
        
        
        CFI Common cfiCommon2 Using cfiNames0
        CFI CodeAlign 1
        CFI DataAlign 1
        CFI ReturnAddress PC CODE
        CFI CFA SP+3
        CFI A Undefined
        CFI XL Undefined
        CFI XH Undefined
        CFI YL Undefined
        CFI YH Undefined
        CFI CC SameValue
        CFI PC Frame(CFA, -2)
        CFI PCL Undefined
        CFI PCH Undefined
        CFI PCE Undefined
        CFI ?b0 Undefined
        CFI ?b1 Undefined
        CFI ?b2 Undefined
        CFI ?b3 Undefined
        CFI ?b4 Undefined
        CFI ?b5 Undefined
        CFI ?b6 Undefined
        CFI ?b7 Undefined
        CFI ?b8 SameValue
        CFI ?b9 SameValue
        CFI ?b10 SameValue
        CFI ?b11 SameValue
        CFI ?b12 SameValue
        CFI ?b13 SameValue
        CFI ?b14 SameValue
        CFI ?b15 SameValue
        CFI EndCommon cfiCommon2
        
// E:\STM_PROJECT\STM8S105C6T6\C++\Project_2\Project_2\main.c
//    1 #include "stm8s105c6.h"   //All registers and interrupts declared in "stm8s105c6.h"

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock0 Using cfiCommon0
        CFI Function EnableInterrupts
        CODE
// __far_func void EnableInterrupts()
EnableInterrupts:
        RIM
        RETF
        CFI EndBlock cfiBlock0

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock1 Using cfiCommon0
        CFI Function DisableInterrupts
        CODE
// __far_func void DisableInterrupts()
DisableInterrupts:
        SIM
        RETF
        CFI EndBlock cfiBlock1

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock2 Using cfiCommon1
        CFI Function Timer1
        CODE
// __far_func __interrupt void Timer1(void)
Timer1:
_interrupt_13:
        BRES 0x5255,#0
        IRET
        CFI EndBlock cfiBlock2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock3 Using cfiCommon1
        CFI Function Timer2
        CODE
// __far_func __interrupt void Timer2(void)
Timer2:
_interrupt_15:
        BRES 0x5302,#0
        IRET
        CFI EndBlock cfiBlock3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock4 Using cfiCommon1
        CFI Function Timer3
        CODE
// __far_func __interrupt void Timer3(void)
Timer3:
_interrupt_17:
        BRES 0x5322,#0
        IRET
        CFI EndBlock cfiBlock4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock5 Using cfiCommon1
        CFI Function Timer4
        CODE
// __far_func __interrupt void Timer4(void)
Timer4:
_interrupt_25:
        BRES 0x5342,#0
        IRET
        CFI EndBlock cfiBlock5

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock6 Using cfiCommon1
        CFI Function ADC
        CODE
// __far_func __interrupt void ADC(void)
ADC:
_interrupt_24:
        IRET
        CFI EndBlock cfiBlock6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock7 Using cfiCommon1
        CFI Function AWU
        CODE
// __far_func __interrupt void AWU(void)
AWU:
_interrupt_3:
        IRET
        CFI EndBlock cfiBlock7

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock8 Using cfiCommon1
        CFI Function EXTI0
        CODE
// __far_func __interrupt void EXTI0(void)
EXTI0:
_interrupt_5:
        IRET
        CFI EndBlock cfiBlock8

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock9 Using cfiCommon1
        CFI Function EXTI1
        CODE
// __far_func __interrupt void EXTI1(void)
EXTI1:
_interrupt_6:
        IRET
        CFI EndBlock cfiBlock9

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock10 Using cfiCommon1
        CFI Function EXTI2
        CODE
// __far_func __interrupt void EXTI2(void)
EXTI2:
_interrupt_7:
        IRET
        CFI EndBlock cfiBlock10

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock11 Using cfiCommon1
        CFI Function EXTI3
        CODE
// __far_func __interrupt void EXTI3(void)
EXTI3:
_interrupt_8:
        IRET
        CFI EndBlock cfiBlock11

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock12 Using cfiCommon1
        CFI Function EXTI4
        CODE
// __far_func __interrupt void EXTI4(void)
EXTI4:
_interrupt_9:
        IRET
        CFI EndBlock cfiBlock12

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock13 Using cfiCommon1
        CFI Function SPIEndTransfer
        CODE
// __far_func __interrupt void SPIEndTransfer(void)
SPIEndTransfer:
_interrupt_12:
        IRET
        CFI EndBlock cfiBlock13
//    2 #include "initperiphery.h"//File with initialization periphery
//    3 #include "functions.h"    //Default functions for normal working
//    4 #include "Nokia1616LCD.c"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol1[35]
Symbol1:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1
        DC8 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol2[35]
Symbol2:
        DC8 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol3[35]
Symbol3:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol4[35]
Symbol4:
        DC8 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0
        DC8 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol5[35]
Symbol5:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol6[35]
Symbol6:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol7[35]
Symbol7:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1
        DC8 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol8[35]
Symbol8:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol9[35]
Symbol9:
        DC8 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol10[35]
Symbol10:
        DC8 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0
        DC8 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol11[35]
Symbol11:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1
        DC8 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol12[35]
Symbol12:
        DC8 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol13[35]
Symbol13:
        DC8 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol14[35]
Symbol14:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0
        DC8 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol15[35]
Symbol15:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol16[35]
Symbol16:
        DC8 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol17[35]
Symbol17:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1
        DC8 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol18[35]
Symbol18:
        DC8 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1
        DC8 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol19[35]
Symbol19:
        DC8 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol20[35]
Symbol20:
        DC8 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol21[35]
Symbol21:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol22[35]
Symbol22:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol23[35]
Symbol23:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1
        DC8 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol24[35]
Symbol24:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0
        DC8 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol25[35]
Symbol25:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol26[35]
Symbol26:
        DC8 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol27[35]
Symbol27:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol28[35]
Symbol28:
        DC8 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC8 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol29[35]
Symbol29:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1
        DC8 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol30[35]
Symbol30:
        DC8 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol31[35]
Symbol31:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol32[35]
Symbol32:
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol33[35]
Symbol33:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1
        DC8 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol34[35]
Symbol34:
        DC8 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0
        DC8 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol35[35]
Symbol35:
        DC8 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1
        DC8 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol36[35]
Symbol36:
        DC8 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol37[35]
Symbol37:
        DC8 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol38[35]
Symbol38:
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0
        DC8 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol39[35]
Symbol39:
        DC8 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0
        DC8 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol40[35]
Symbol40:
        DC8 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol41[35]
Symbol41:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol42[35]
Symbol42:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol43[35]
Symbol43:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol44[35]
Symbol44:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1
        DC8 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol45[35]
Symbol45:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1
        DC8 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol46[35]
Symbol46:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol47[35]
Symbol47:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1
        DC8 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol48[35]
Symbol48:
        DC8 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0
        DC8 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol49[35]
Symbol49:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol50[35]
Symbol50:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol51[35]
Symbol51:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1
        DC8 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol52[35]
Symbol52:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1
        DC8 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol53[35]
Symbol53:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1
        DC8 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol54[35]
Symbol54:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1
        DC8 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol55[35]
Symbol55:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol56[35]
Symbol56:
        DC8 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol57[35]
Symbol57:
        DC8 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0
        DC8 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol58[35]
Symbol58:
        DC8 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol59[35]
Symbol59:
        DC8 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol60[35]
Symbol60:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol61[35]
Symbol61:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol62[35]
Symbol62:
        DC8 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol63[35]
Symbol63:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0
        DC8 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
// char const Symbol64[35]
Symbol64:
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0
        DC8 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock14 Using cfiCommon0
        CFI Function SendToLCD
        CODE
// __far_func void SendToLCD(unsigned long)
SendToLCD:
        BRES      L:0x501e, #0x1
        LDW       X, S:?w1
        SRLW      X
        LD        A, XL
        CALLF     SendSPI
        LD        A, S:?b3
        AND       A, #0x1
        CP        A, #0x0
        JREQ      L:??SendToLCD_0
        MOV       L:0x5204, #0x80
        JRA       L:??SendToLCD_1
??SendToLCD_0:
        MOV       L:0x5204, #0x0
??SendToLCD_1:
        BTJT      L:0x5203, #0x7, L:??SendToLCD_1
        BSET      L:0x501e, #0x1
        RETF
        CFI EndBlock cfiBlock14

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock15 Using cfiCommon0
        CFI Function DrawFillRectangle
        CODE
// __far_func void DrawFillRectangle(char, char, char, char, unsigned long)
DrawFillRectangle:
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -3)
        CFI ?b10 Frame(CFA, -4)
        CFI ?b9 Frame(CFA, -5)
        CFI ?b8 Frame(CFA, -6)
        CFI CFA SP+7
        LD        S:?b10, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b11, S:?b2
        LDW       X, #0x2a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        ADDW      X, #0x100
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b9
        EXG       A, YL
        CLRW      X
        EXG       A, XL
        LD        A, S:?b10
        EXG       A, XL
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        ADDW      X, #0xff
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        LDW       X, #0x2b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        ADDW      X, #0x100
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b11
        EXG       A, YL
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LDW       S:?w0, Y
        ADDW      X, S:?w0
        ADDW      X, #0xff
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        LDW       X, S:?w3
        CLR       A
        RRWA      X, A
        EXG       A, XL
        LD        S:?b8, A
        EXG       A, XL
        CALLF     L:?mov_l0_l1
        LD        A, #0x10
        CALLF     L:?srl32_l0_l0_a
        MOV       S:?b5, S:?b3
        LDW       X, #0x2c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        LD        A, S:?b11
        MUL       X, A
        LDW       S:?w5, X
        CLRW      X
        INCW      X
        LDW       Y, X
        JRA       L:??DrawFillRectangle_0
??DrawFillRectangle_1:
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf
        SRL       A
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b5
        EXG       A, XL
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xf8
        RLWA      X, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        ADDW      X, #0x100
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        SLLW      X
        SLLW      X
        SLLW      X
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xe0
        RLWA      X, A
        LDW       S:?w0, X
        LD        A, S:?b7
        SRL       A
        SRL       A
        SRL       A
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        LDW       X, S:?w0
        RRWA      X, A
        OR        A, S:?b3
        RRWA      X, A
        OR        A, S:?b2
        RRWA      X, A
        ADDW      X, #0x100
        CALLF     L:?sext32_l0_x
        CALLF     SendToLCD
        LDW       X, Y
        INCW      X
        LDW       Y, X
??DrawFillRectangle_0:
        LDW       S:?w0, Y
        LDW       X, S:?w5
        CPW       X, S:?w0
        JRNC      L:??DrawFillRectangle_1
        JPF       L:?epilogue_l2
        CFI EndBlock cfiBlock15

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock16 Using cfiCommon0
        CFI Function InitLCD
        CODE
// __far_func void InitLCD()
InitLCD:
        CLRW      X
        LDW       S:?w0, X
        INCW      X
        LDW       S:?w1, X
        CALLF     SendToLCD
        LDW       X, #0x11
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x13
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x36
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x1c0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x38
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x3a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x105
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     SendToLCD
        LDW       X, #0x29
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        JPF       SendToLCD
        CFI EndBlock cfiBlock16

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock17 Using cfiCommon0
        CFI Function InitSPI
        CODE
// __far_func void InitSPI()
InitSPI:
        MOV       L:0x5200, #0x6
        MOV       L:0x5201, #0x3
        BSET      L:0x5200, #0x6
        RETF
        CFI EndBlock cfiBlock17

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock18 Using cfiCommon0
        CFI Function InitPortsIO
        CODE
// __far_func void InitPortsIO()
InitPortsIO:
        MOV       L:0x5002, #0x0
        MOV       L:0x5003, #0x0
        MOV       L:0x5000, #0x0
        MOV       L:0x5007, #0x0
        MOV       L:0x5008, #0x0
        MOV       L:0x5005, #0x0
        MOV       L:0x500c, #0x70
        MOV       L:0x500d, #0x70
        MOV       L:0x500a, #0x0
        MOV       L:0x5011, #0x1
        MOV       L:0x5012, #0x1
        MOV       L:0x500f, #0x0
        MOV       L:0x5016, #0x20
        MOV       L:0x5017, #0x20
        MOV       L:0x5014, #0x20
        MOV       L:0x5020, #0x3
        MOV       L:0x5021, #0x3
        MOV       L:0x501e, #0x1
        RETF
        CFI EndBlock cfiBlock18

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock19 Using cfiCommon0
        CFI Function InitSystemClock
        CODE
// __far_func void InitSystemClock()
InitSystemClock:
        MOV       L:0x50c1, #0x1
        MOV       L:0x50c5, #0x2
??InitSystemClock_0:
        BTJF      L:0x50c1, #0x1, L:??InitSystemClock_0
        MOV       L:0x50c6, #0x0
        MOV       L:0x50c4, #0xb4
??InitSystemClock_1:
        BTJF      L:0x50c5, #0x3, L:??InitSystemClock_1
        MOV       L:0x50c7, #0xff
        RETF
        CFI EndBlock cfiBlock19

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CFI Block cfiBlock20 Using cfiCommon0
        CFI Function main
        CODE
main:
        PUSH      S:?b8
        CFI ?b8 Frame(CFA, -3)
        CFI CFA SP+4
        CALLF     InitSystemClock
        CALLF     InitPortsIO
        CALLF     InitSPI
        CALLF     InitLCD
        CLRW      X
        LDW       S:?w3, X
        LDW       S:?w2, X
        MOV       S:?b2, #0x82
        MOV       S:?b1, #0x82
        MOV       S:?b0, #0x1
        LD        A, #0x1
        CALLF     DrawFillRectangle
        LD        A, L:0x5010
        MOV       S:?b8, #0x1
        JRA       L:??main_0
??main_1:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        MOV       S:?b2, #0x1
        MOV       S:?b1, #0x82
        LD        A, #0x2
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        LD        A, XL
        LD        S:?b0, A
        LD        A, #0x1
        CALLF     DrawFillRectangle
        LD        A, S:?b8
        ADD       A, #0x2
        LD        S:?b8, A
??main_0:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        CPW       X, #0x100
        JRSLT     L:??main_1
??main_2:
        JRA       L:??main_2
        CFI EndBlock cfiBlock20

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock21 Using cfiCommon0
        CFI Function DrawPoint
        CODE
// __far_func void DrawPoint(char, char, unsigned long)
DrawPoint:
        MOV       S:?b2, #0x1
        MOV       S:?b1, #0x1
        JPF       DrawFillRectangle
        CFI EndBlock cfiBlock21

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock22 Using cfiCommon0
        CFI Function InitTimers
        CODE
// __far_func void InitTimers()
InitTimers:
        MOV       L:0x5260, #0x0
        MOV       L:0x5261, #0x0
        MOV       L:0x5262, #0xff
        MOV       L:0x5263, #0xff
        MOV       L:0x5250, #0x81
        MOV       L:0x5254, #0x1
        MOV       L:0x530c, #0x1
        MOV       L:0x530d, #0xff
        MOV       L:0x530e, #0xff
        MOV       L:0x5300, #0x81
        MOV       L:0x5301, #0x1
        MOV       L:0x532a, #0x7
        MOV       L:0x532b, #0xff
        MOV       L:0x532c, #0xff
        MOV       L:0x5320, #0x81
        MOV       L:0x5321, #0x1
        MOV       L:0x5345, #0x1
        MOV       L:0x5346, #0xff
        MOV       L:0x5340, #0x81
        MOV       L:0x5341, #0x1
        RETF
        CFI EndBlock cfiBlock22

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock23 Using cfiCommon0
        CFI Function InitADC
        CODE
// __far_func void InitADC()
InitADC:
        MOV       L:0x5400, #0x29
        MOV       L:0x5401, #0x42
        MOV       L:0x5402, #0x40
        MOV       L:0x5403, #0x0
        BSET      L:0x5401, #0x0
        RETF
        CFI EndBlock cfiBlock23

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock24 Using cfiCommon0
        CFI Function Delay
        CODE
// __far_func void Delay(unsigned long)
Delay:
        JRA       L:??Delay_0
??Delay_1:
        CALLF     L:?dec32_l0_l0
??Delay_0:
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??Delay_2
        LDW       X, S:?w1
        CPW       X, #0x0
??Delay_2:
        JRNE      L:??Delay_1
        RETF
        CFI EndBlock cfiBlock24

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock25 Using cfiCommon2
        CFI Function SendSPI
        CODE
// __far_func __monitor void SendSPI(char)
SendSPI:
        PUSH      CC
        CFI CC Frame(CFA, -3)
        CFI CFA SP+4
        SIM
        LD        L:0x5204, A
??SendSPI_0:
        BTJT      L:0x5203, #0x7, L:??SendSPI_0
        POP       CC
        CFI CC SameValue
        CFI CFA SP+3
        RETF
        CFI EndBlock cfiBlock25

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock26 Using cfiCommon0
        CFI Function DigitToChar
        CODE
// __far_func char DigitToChar(unsigned int)
DigitToChar:
        ADDW      X, #0x30
        LD        A, XL
        RETF
        CFI EndBlock cfiBlock26

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock27 Using cfiCommon0
        CFI Function DrawRectangle
        CODE
// __far_func void DrawRectangle(char, char, char, char, unsigned long, char)
DrawRectangle:
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -3)
        CFI ?b10 Frame(CFA, -4)
        CFI ?b9 Frame(CFA, -5)
        CFI ?b8 Frame(CFA, -6)
        CFI CFA SP+7
        CALLF     L:?push_l3
        CFI ?b15 Frame(CFA, -7)
        CFI ?b14 Frame(CFA, -8)
        CFI ?b13 Frame(CFA, -9)
        CFI ?b12 Frame(CFA, -10)
        CFI CFA SP+11
        PUSH      S:?b1
        CFI CFA SP+12
        LD        S:?b14, A
        MOV       S:?b13, S:?b0
        MOV       S:?b15, S:?b2
        CALLF     L:?mov_l2_l1
        MOV       S:?b12, S:?b3
        CALLF     L:?mov_l1_l2
        MOV       S:?b2, S:?b12
        LD        A, (0x1,SP)
        LD        S:?b1, A
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     DrawFillRectangle
        CALLF     L:?mov_l1_l2
        MOV       S:?b2, S:?b15
        MOV       S:?b1, S:?b12
        MOV       S:?b0, S:?b13
        LD        A, (0x1,SP)
        ADD       A, S:?b14
        SUB       A, S:?b12
        CALLF     DrawFillRectangle
        CALLF     L:?mov_l1_l2
        MOV       S:?b2, S:?b12
        LD        A, (0x1,SP)
        LD        S:?b1, A
        LD        A, S:?b15
        ADD       A, S:?b13
        SUB       A, S:?b12
        LD        S:?b0, A
        LD        A, S:?b14
        CALLF     DrawFillRectangle
        CALLF     L:?mov_l1_l2
        MOV       S:?b2, S:?b15
        MOV       S:?b1, S:?b12
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     DrawFillRectangle
        ADD       SP, #0x1
        CFI CFA SP+11
        JPF       L:?epilogue_l2_l3
        CFI EndBlock cfiBlock27

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock28 Using cfiCommon0
        CFI Function DrawLine
        CODE
// __far_func void DrawLine(int, int, int, int, unsigned long)
DrawLine:
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -3)
        CFI ?b10 Frame(CFA, -4)
        CFI ?b9 Frame(CFA, -5)
        CFI ?b8 Frame(CFA, -6)
        CFI CFA SP+7
        CALLF     L:?push_l3
        CFI ?b15 Frame(CFA, -7)
        CFI ?b14 Frame(CFA, -8)
        CFI ?b13 Frame(CFA, -9)
        CFI ?b12 Frame(CFA, -10)
        CFI CFA SP+11
        PUSHW     Y
        CFI CFA SP+13
        CALLF     L:?push_w0
        CFI CFA SP+15
        CALLF     L:?push_w1
        CFI CFA SP+17
        SUB       SP, #0x8
        CFI CFA SP+25
        LDW       S:?w5, X
        CALLF     L:?mov_l3_l1
        LDW       X, (0xb,SP)
        SUBW      X, S:?w5
        CALLF     abs
        LDW       (0x3,SP), X
        LDW       X, (0x9,SP)
        SUBW      X, (0xd,SP)
        CALLF     abs
        LDW       (0x1,SP), X
        LDW       X, S:?w5
        CPW       X, (0xb,SP)
        JRSGE     L:??DrawLine_0
        CLRW      X
        INCW      X
        LDW       (0x7,SP), X
        JRA       L:??DrawLine_1
??DrawLine_0:
        CLRW      X
        DECW      X
        LDW       (0x7,SP), X
??DrawLine_1:
        LDW       X, (0xd,SP)
        CPW       X, (0x9,SP)
        JRSGE     L:??DrawLine_2
        CLRW      X
        INCW      X
        LDW       (0x5,SP), X
        JRA       L:??DrawLine_3
??DrawLine_2:
        CLRW      X
        DECW      X
        LDW       (0x5,SP), X
??DrawLine_3:
        LDW       X, (0x3,SP)
        SUBW      X, (0x1,SP)
        LDW       S:?w4, X
        CALLF     L:?mov_l1_l3
        LD        A, (0xa,SP)
        LD        S:?b0, A
        LD        A, (0xc,SP)
        CALLF     DrawPoint
        JRA       L:??DrawLine_4
??DrawLine_5:
        CALLF     L:?mov_l1_l3
        LD        A, (0xe,SP)
        LD        S:?b0, A
        LD        A, S:?b11
        CALLF     DrawPoint
        LDW       X, S:?w4
        SLLW      X
        LDW       S:?w0, X
        LDW       X, (0x1,SP)
        LDW       Y, X
        LDW       X, Y
        NEGW      X
        CPW       X, S:?w0
        JRSGE     L:??DrawLine_6
        LDW       X, S:?w4
        SUBW      X, (0x1,SP)
        LDW       S:?w4, X
        LDW       X, S:?w5
        ADDW      X, (0x7,SP)
        LDW       S:?w5, X
??DrawLine_6:
        LDW       X, S:?w0
        CPW       X, (0x3,SP)
        JRSGE     L:??DrawLine_4
        LDW       X, S:?w4
        ADDW      X, (0x3,SP)
        LDW       S:?w4, X
        LDW       X, (0x5,SP)
        ADDW      X, (0xd,SP)
        LDW       (0xd,SP), X
??DrawLine_4:
        LDW       X, S:?w5
        CPW       X, (0xb,SP)
        JRNE      L:??DrawLine_5
        LDW       X, (0xd,SP)
        CPW       X, (0x9,SP)
        JRNE      L:??DrawLine_5
        ADD       SP, #0xe
        CFI CFA SP+11
        JPF       L:?epilogue_l2_l3
        CFI EndBlock cfiBlock28

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock29 Using cfiCommon0
        CFI Function DrawCircle
        CODE
// __far_func void DrawCircle(int, int, int, unsigned long)
DrawCircle:
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -3)
        CFI ?b10 Frame(CFA, -4)
        CFI ?b9 Frame(CFA, -5)
        CFI ?b8 Frame(CFA, -6)
        CFI CFA SP+7
        CALLF     L:?push_l3
        CFI ?b15 Frame(CFA, -7)
        CFI ?b14 Frame(CFA, -8)
        CFI ?b13 Frame(CFA, -9)
        CFI ?b12 Frame(CFA, -10)
        CFI CFA SP+11
        PUSHW     X
        CFI CFA SP+13
        PUSHW     Y
        CFI CFA SP+15
        SUB       SP, #0x2
        CFI CFA SP+17
        LDW       X, S:?w0
        CALLF     L:?mov_l2_l1
        CLRW      Y
        LDW       (0x1,SP), Y
        LDW       S:?w6, X
        SLLW      X
        LDW       S:?w0, X
        LDW       X, #0x2
        SUBW      X, S:?w0
        LDW       S:?w7, X
        CLRW      Y
        JRA       L:??DrawCircle_0
??DrawCircle_1:
        LDW       X, (0x1,SP)
        INCW      X
        LDW       (0x1,SP), X
        LDW       X, (0x1,SP)
        SLLW      X
        INCW      X
        ADDW      X, S:?w7
        LDW       S:?w7, X
??DrawCircle_0:
        LDW       X, S:?w6
        CPW       X, #0x0
        JRSGE     ??lb_64
        JP        L:??DrawCircle_2
??lb_64:
        CALLF     L:?mov_l1_l2
        LD        A, (0x4,SP)
        ADD       A, S:?b13
        LD        S:?b0, A
        LD        A, (0x2,SP)
        PUSH      A
        CFI CFA SP+18
        LD        A, (0x7,SP)
        LD        S:?b2, A
        POP       A
        CFI CFA SP+17
        ADD       A, S:?b2
        CALLF     DrawPoint
        CALLF     L:?mov_l1_l2
        LD        A, (0x4,SP)
        SUB       A, S:?b13
        LD        S:?b0, A
        LD        A, (0x2,SP)
        PUSH      A
        CFI CFA SP+18
        LD        A, (0x7,SP)
        LD        S:?b2, A
        POP       A
        CFI CFA SP+17
        ADD       A, S:?b2
        CALLF     DrawPoint
        CALLF     L:?mov_l1_l2
        LD        A, (0x4,SP)
        ADD       A, S:?b13
        LD        S:?b0, A
        LD        A, (0x2,SP)
        LD        S:?b1, A
        LD        A, (0x6,SP)
        SUB       A, S:?b1
        CALLF     DrawPoint
        CALLF     L:?mov_l1_l2
        LD        A, (0x4,SP)
        SUB       A, S:?b13
        LD        S:?b0, A
        LD        A, (0x2,SP)
        LD        S:?b1, A
        LD        A, (0x6,SP)
        SUB       A, S:?b1
        CALLF     DrawPoint
        LDW       X, S:?w6
        ADDW      X, S:?w7
        SLLW      X
        DECW      X
        LDW       Y, X
        LDW       X, S:?w7
        CPW       X, #0x0
        JRSGE     L:??DrawCircle_3
        LDW       X, Y
        CPW       X, #0x1
        JRSGE     ??lb_65
        JP        L:??DrawCircle_1
??lb_65:
??DrawCircle_3:
        LDW       X, S:?w7
        SUBW      X, (0x1,SP)
        SLLW      X
        DECW      X
        LDW       Y, X
        LDW       X, S:?w7
        CPW       X, #0x1
        JRSLT     L:??DrawCircle_4
        LDW       X, Y
        CPW       X, #0x1
        JRSLT     L:??DrawCircle_4
        LDW       X, S:?w6
        DECW      X
        LDW       S:?w6, X
        LDW       X, S:?w6
        SLLW      X
        LDW       S:?w0, X
        LDW       X, S:?w7
        INCW      X
        SUBW      X, S:?w0
        LDW       S:?w7, X
        JP        L:??DrawCircle_0
??DrawCircle_4:
        LDW       X, (0x1,SP)
        INCW      X
        LDW       (0x1,SP), X
        LDW       X, (0x1,SP)
        SUBW      X, S:?w6
        SLLW      X
        ADDW      X, S:?w7
        LDW       S:?w7, X
        LDW       X, S:?w6
        DECW      X
        LDW       S:?w6, X
        JP        L:??DrawCircle_0
??DrawCircle_2:
        ADD       SP, #0x6
        CFI CFA SP+11
        JPF       L:?epilogue_l2_l3
        CFI EndBlock cfiBlock29

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock30 Using cfiCommon0
        CFI Function DrawLine2
        CODE
// __far_func void DrawLine2(int, int, int, int, unsigned long)
DrawLine2:
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -3)
        CFI ?b10 Frame(CFA, -4)
        CFI ?b9 Frame(CFA, -5)
        CFI ?b8 Frame(CFA, -6)
        CFI CFA SP+7
        CALLF     L:?push_l3
        CFI ?b15 Frame(CFA, -7)
        CFI ?b14 Frame(CFA, -8)
        CFI ?b13 Frame(CFA, -9)
        CFI ?b12 Frame(CFA, -10)
        CFI CFA SP+11
        PUSHW     Y
        CFI CFA SP+13
        SUB       SP, #0x8
        CFI CFA SP+21
        LDW       S:?w6, X
        CALLF     L:?mov_l2_l1
        LDW       X, S:?w0
        SUBW      X, S:?w6
        CALLF     abs
        LDW       S:?w7, X
        LDW       X, S:?w1
        SUBW      X, (0x9,SP)
        CALLF     abs
        CPW       X, S:?w7
        JRSLT     L:??DrawLine2_0
        LDW       S:?w7, X
??DrawLine2_0:
        LDW       X, S:?w6
        CALLF     L:?sll16_x_x_12
        ADDW      X, #0x800
        LDW       (0x1,SP), X
        LDW       X, (0x9,SP)
        CALLF     L:?sll16_x_x_12
        ADDW      X, #0x800
        LDW       S:?w6, X
        LDW       X, S:?w0
        CALLF     L:?sll16_x_x_12
        ADDW      X, #0x800
        LDW       Y, X
        LDW       X, S:?w1
        CALLF     L:?sll16_x_x_12
        ADDW      X, #0x800
        LDW       S:?w0, X
        LDW       X, S:?w7
        TNZW      X
        JREQ      L:??DrawLine2_1
        LDW       X, Y
        SUBW      X, (0x1,SP)
        LDW       Y, S:?w7
        CALLF     L:?sdiv16_x_x_y
        LDW       (0x7,SP), X
        LDW       X, S:?w0
        SUBW      X, S:?w6
        LDW       Y, S:?w7
        CALLF     L:?sdiv16_x_x_y
        LDW       (0x5,SP), X
        JRA       L:??DrawLine2_2
??DrawLine2_1:
        CLRW      X
        LDW       (0x7,SP), X
        CLRW      X
        LDW       (0x5,SP), X
??DrawLine2_2:
        CLRW      X
        LDW       (0x3,SP), X
        JRA       L:??DrawLine2_3
??DrawLine2_4:
        CALLF     L:?mov_l1_l2
        LDW       X, S:?w6
        CALLF     L:?sra16_x_x_12
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        LDW       X, (0x1,SP)
        CALLF     L:?sra16_x_x_12
        LD        A, XL
        CALLF     DrawPoint
        LDW       X, (0x7,SP)
        ADDW      X, (0x1,SP)
        LDW       (0x1,SP), X
        LDW       X, S:?w6
        ADDW      X, (0x5,SP)
        LDW       S:?w6, X
        LDW       X, (0x3,SP)
        INCW      X
        LDW       (0x3,SP), X
??DrawLine2_3:
        LDW       X, S:?w7
        CPW       X, (0x3,SP)
        JRSGE     L:??DrawLine2_4
        ADD       SP, #0xa
        CFI CFA SP+11
        JPF       L:?epilogue_l2_l3
        CFI EndBlock cfiBlock30

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock31 Using cfiCommon2
        CFI Function DrawPicture
        CODE
// __far_func __monitor void DrawPicture(char, char, char, char, char const *)
DrawPicture:
        PUSH      CC
        CFI CC Frame(CFA, -3)
        CFI CFA SP+4
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -4)
        CFI ?b10 Frame(CFA, -5)
        CFI ?b9 Frame(CFA, -6)
        CFI ?b8 Frame(CFA, -7)
        CFI CFA SP+8
        CALLF     L:?push_w6
        CFI ?b13 Frame(CFA, -8)
        CFI ?b12 Frame(CFA, -9)
        CFI CFA SP+10
        PUSH      S:?b14
        CFI ?b14 Frame(CFA, -10)
        CFI CFA SP+11
        SIM
        PUSHW     X
        CFI CFA SP+13
        LD        S:?b14, A
        MOV       S:?b13, S:?b0
        MOV       S:?b11, S:?b1
        MOV       S:?b12, S:?b2
        CLR       S:?b9
        CLR       S:?b10
        JRA       L:??DrawPicture_0
??DrawPicture_1:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        ADDW      X, (0x1,SP)
        LD        A, (X)
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CLRW      X
        DECW      X
        LDW       S:?w3, X
        LDW       X, #0xff
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l0
        LD        A, S:?b10
        ADD       A, S:?b13
        LD        S:?b0, A
        LD        A, S:?b8
        ADD       A, S:?b14
        CALLF     DrawPoint
        LD        A, S:?b9
        ADD       A, #0x1
        LD        S:?b9, A
        LD        A, S:?b8
        ADD       A, #0x1
        LD        S:?b8, A
??DrawPicture_2:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b11
        EXG       A, XL
        DECW      X
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b8
        EXG       A, YL
        LDW       S:?w0, Y
        CPW       X, S:?w0
        JRSGE     L:??DrawPicture_1
        LD        A, S:?b10
        ADD       A, #0x1
        LD        S:?b10, A
??DrawPicture_0:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        DECW      X
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b10
        EXG       A, YL
        LDW       S:?w0, Y
        CPW       X, S:?w0
        JRSLT     L:??DrawPicture_3
        CLR       S:?b8
        JRA       L:??DrawPicture_2
??DrawPicture_3:
        ADD       SP, #0x2
        CFI CFA SP+11
        POP       S:?b14
        CFI ?b14 SameValue
        CFI CFA SP+10
        CALLF     L:?pop_w6
        CFI ?b12 SameValue
        CFI ?b13 SameValue
        CFI CFA SP+8
        CALLF     L:?pop_l2
        CFI ?b8 SameValue
        CFI ?b9 SameValue
        CFI ?b10 SameValue
        CFI ?b11 SameValue
        CFI CFA SP+4
        POP       CC
        CFI CC SameValue
        CFI CFA SP+3
        RETF
        CFI EndBlock cfiBlock31

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock32 Using cfiCommon2
        CFI Function DrawSymbol
        CODE
// __far_func __monitor void DrawSymbol(char, char, char)
DrawSymbol:
        PUSH      CC
        CFI CC Frame(CFA, -3)
        CFI CFA SP+4
        SIM
        LD        S:?b3, A
        LD        A, S:?b1
        TNZ       A
        JRNE      ??lb_0
        JP        L:??DrawSymbol_0
??lb_0:
        SUB       A, #0x20
        JRNE      ??lb_1
        JP        L:??DrawSymbol_1
??lb_1:
        SUB       A, #0x10
        JRNE      ??lb_2
        JP        L:??DrawSymbol_2
??lb_2:
        DEC       A
        JRNE      ??lb_3
        JP        L:??DrawSymbol_3
??lb_3:
        DEC       A
        JRNE      ??lb_4
        JP        L:??DrawSymbol_4
??lb_4:
        DEC       A
        JRNE      ??lb_5
        JP        L:??DrawSymbol_5
??lb_5:
        DEC       A
        JRNE      ??lb_6
        JP        L:??DrawSymbol_6
??lb_6:
        DEC       A
        JRNE      ??lb_7
        JP        L:??DrawSymbol_7
??lb_7:
        DEC       A
        JRNE      ??lb_8
        JP        L:??DrawSymbol_8
??lb_8:
        DEC       A
        JRNE      ??lb_9
        JP        L:??DrawSymbol_9
??lb_9:
        DEC       A
        JRNE      ??lb_10
        JP        L:??DrawSymbol_10
??lb_10:
        DEC       A
        JRNE      ??lb_11
        JP        L:??DrawSymbol_11
??lb_11:
        SUB       A, #0x8
        JRNE      ??lb_12
        JP        L:??DrawSymbol_12
??lb_12:
        DEC       A
        JRNE      ??lb_13
        JP        L:??DrawSymbol_13
??lb_13:
        DEC       A
        JRNE      ??lb_14
        JP        L:??DrawSymbol_14
??lb_14:
        DEC       A
        JRNE      ??lb_15
        JP        L:??DrawSymbol_15
??lb_15:
        DEC       A
        JRNE      ??lb_16
        JP        L:??DrawSymbol_16
??lb_16:
        DEC       A
        JRNE      ??lb_17
        JP        L:??DrawSymbol_17
??lb_17:
        DEC       A
        JRNE      ??lb_18
        JP        L:??DrawSymbol_18
??lb_18:
        DEC       A
        JRNE      ??lb_19
        JP        L:??DrawSymbol_19
??lb_19:
        DEC       A
        JRNE      ??lb_20
        JP        L:??DrawSymbol_20
??lb_20:
        DEC       A
        JRNE      ??lb_21
        JP        L:??DrawSymbol_21
??lb_21:
        DEC       A
        JRNE      ??lb_22
        JP        L:??DrawSymbol_22
??lb_22:
        DEC       A
        JRNE      ??lb_23
        JP        L:??DrawSymbol_23
??lb_23:
        DEC       A
        JRNE      ??lb_24
        JP        L:??DrawSymbol_24
??lb_24:
        DEC       A
        JRNE      ??lb_25
        JP        L:??DrawSymbol_25
??lb_25:
        DEC       A
        JRNE      ??lb_26
        JP        L:??DrawSymbol_26
??lb_26:
        DEC       A
        JRNE      ??lb_27
        JP        L:??DrawSymbol_27
??lb_27:
        DEC       A
        JRNE      ??lb_28
        JP        L:??DrawSymbol_28
??lb_28:
        DEC       A
        JRNE      ??lb_29
        JP        L:??DrawSymbol_29
??lb_29:
        DEC       A
        JRNE      ??lb_30
        JP        L:??DrawSymbol_30
??lb_30:
        DEC       A
        JRNE      ??lb_31
        JP        L:??DrawSymbol_31
??lb_31:
        DEC       A
        JRNE      ??lb_32
        JP        L:??DrawSymbol_32
??lb_32:
        DEC       A
        JRNE      ??lb_33
        JP        L:??DrawSymbol_33
??lb_33:
        DEC       A
        JRNE      ??lb_34
        JP        L:??DrawSymbol_34
??lb_34:
        DEC       A
        JRNE      ??lb_35
        JP        L:??DrawSymbol_35
??lb_35:
        DEC       A
        JRNE      ??lb_36
        JP        L:??DrawSymbol_36
??lb_36:
        DEC       A
        JRNE      ??lb_37
        JP        L:??DrawSymbol_37
??lb_37:
        SUB       A, #0x7
        JRNE      ??lb_38
        JP        L:??DrawSymbol_38
??lb_38:
        DEC       A
        JRNE      ??lb_39
        JP        L:??DrawSymbol_39
??lb_39:
        DEC       A
        JRNE      ??lb_40
        JP        L:??DrawSymbol_40
??lb_40:
        DEC       A
        JRNE      ??lb_41
        JP        L:??DrawSymbol_41
??lb_41:
        DEC       A
        JRNE      ??lb_42
        JP        L:??DrawSymbol_42
??lb_42:
        DEC       A
        JRNE      ??lb_43
        JP        L:??DrawSymbol_43
??lb_43:
        DEC       A
        JRNE      ??lb_44
        JP        L:??DrawSymbol_44
??lb_44:
        DEC       A
        JRNE      ??lb_45
        JP        L:??DrawSymbol_45
??lb_45:
        DEC       A
        JRNE      ??lb_46
        JP        L:??DrawSymbol_46
??lb_46:
        DEC       A
        JRNE      ??lb_47
        JP        L:??DrawSymbol_47
??lb_47:
        DEC       A
        JRNE      ??lb_48
        JP        L:??DrawSymbol_48
??lb_48:
        DEC       A
        JRNE      ??lb_49
        JP        L:??DrawSymbol_49
??lb_49:
        DEC       A
        JRNE      ??lb_50
        JP        L:??DrawSymbol_50
??lb_50:
        DEC       A
        JRNE      ??lb_51
        JP        L:??DrawSymbol_51
??lb_51:
        DEC       A
        JRNE      ??lb_52
        JP        L:??DrawSymbol_52
??lb_52:
        DEC       A
        JRNE      ??lb_53
        JP        L:??DrawSymbol_53
??lb_53:
        DEC       A
        JRNE      ??lb_54
        JP        L:??DrawSymbol_54
??lb_54:
        DEC       A
        JRNE      ??lb_55
        JP        L:??DrawSymbol_55
??lb_55:
        DEC       A
        JRNE      ??lb_56
        JP        L:??DrawSymbol_56
??lb_56:
        DEC       A
        JRNE      ??lb_57
        JP        L:??DrawSymbol_57
??lb_57:
        DEC       A
        JRNE      ??lb_58
        JP        L:??DrawSymbol_58
??lb_58:
        DEC       A
        JRNE      ??lb_59
        JP        L:??DrawSymbol_59
??lb_59:
        DEC       A
        JRNE      ??lb_60
        JP        L:??DrawSymbol_60
??lb_60:
        DEC       A
        JRNE      ??lb_61
        JP        L:??DrawSymbol_61
??lb_61:
        DEC       A
        JRNE      ??lb_62
        JP        L:??DrawSymbol_62
??lb_62:
        DEC       A
        JRNE      ??lb_63
        JP        L:??DrawSymbol_63
??lb_63:
        JP        L:??DrawSymbol_64
??DrawSymbol_12:
        LDW       X, #Symbol1
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_13:
        LDW       X, #Symbol2
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_14:
        LDW       X, #Symbol3
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_15:
        LDW       X, #Symbol4
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_16:
        LDW       X, #Symbol5
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_17:
        LDW       X, #Symbol6
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_18:
        LDW       X, #Symbol7
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_19:
        LDW       X, #Symbol8
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_20:
        LDW       X, #Symbol9
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_21:
        LDW       X, #Symbol10
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_22:
        LDW       X, #Symbol11
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_23:
        LDW       X, #Symbol12
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_24:
        LDW       X, #Symbol13
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_25:
        LDW       X, #Symbol14
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_26:
        LDW       X, #Symbol15
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_27:
        LDW       X, #Symbol16
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_28:
        LDW       X, #Symbol17
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_29:
        LDW       X, #Symbol18
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_30:
        LDW       X, #Symbol19
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_31:
        LDW       X, #Symbol20
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_32:
        LDW       X, #Symbol21
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_33:
        LDW       X, #Symbol22
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_34:
        LDW       X, #Symbol23
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_35:
        LDW       X, #Symbol24
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_36:
        LDW       X, #Symbol25
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_37:
        LDW       X, #Symbol26
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_1:
        LDW       X, #Symbol27
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_0:
        LDW       X, #Symbol28
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_38:
        LDW       X, #Symbol29
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_39:
        LDW       X, #Symbol30
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_40:
        LDW       X, #Symbol31
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_41:
        LDW       X, #Symbol32
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_42:
        LDW       X, #Symbol33
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_43:
        LDW       X, #Symbol34
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_44:
        LDW       X, #Symbol35
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_45:
        LDW       X, #Symbol36
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_46:
        LDW       X, #Symbol37
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_47:
        LDW       X, #Symbol38
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_48:
        LDW       X, #Symbol39
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_49:
        LDW       X, #Symbol40
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_50:
        LDW       X, #Symbol41
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_51:
        LDW       X, #Symbol42
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_52:
        LDW       X, #Symbol43
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_53:
        LDW       X, #Symbol44
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_54:
        LDW       X, #Symbol45
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_55:
        LDW       X, #Symbol46
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_56:
        LDW       X, #Symbol47
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_57:
        LDW       X, #Symbol48
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_58:
        LDW       X, #Symbol49
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_59:
        LDW       X, #Symbol50
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_60:
        LDW       X, #Symbol51
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_61:
        LDW       X, #Symbol52
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_62:
        LDW       X, #Symbol53
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_63:
        LDW       X, #Symbol54
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_2:
        LDW       X, #Symbol55
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_3:
        LDW       X, #Symbol56
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_4:
        LDW       X, #Symbol57
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JP        L:??DrawSymbol_64
??DrawSymbol_5:
        LDW       X, #Symbol58
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_6:
        LDW       X, #Symbol59
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_7:
        LDW       X, #Symbol60
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_8:
        LDW       X, #Symbol61
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_9:
        LDW       X, #Symbol62
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_10:
        LDW       X, #Symbol63
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
        JRA       L:??DrawSymbol_64
??DrawSymbol_11:
        LDW       X, #Symbol64
        MOV       S:?b2, #0x7
        MOV       S:?b1, #0x5
        LD        A, S:?b3
        CALLF     DrawPicture
??DrawSymbol_64:
        POP       CC
        CFI CC SameValue
        CFI CFA SP+3
        RETF
        CFI EndBlock cfiBlock32

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock33 Using cfiCommon2
        CFI Function DrawText
        CODE
// __far_func __monitor void DrawText(char, char, char *, char)
DrawText:
        PUSH      CC
        CFI CC Frame(CFA, -3)
        CFI CFA SP+4
        CALLF     L:?push_l2
        CFI ?b11 Frame(CFA, -4)
        CFI ?b10 Frame(CFA, -5)
        CFI ?b9 Frame(CFA, -6)
        CFI ?b8 Frame(CFA, -7)
        CFI CFA SP+8
        CALLF     L:?push_l3
        CFI ?b15 Frame(CFA, -8)
        CFI ?b14 Frame(CFA, -9)
        CFI ?b13 Frame(CFA, -10)
        CFI ?b12 Frame(CFA, -11)
        CFI CFA SP+12
        SIM
        MOV       S:?b14, S:?b0
        LDW       S:?w6, X
        MOV       S:?b15, S:?b1
        sim
        CLRW      X
        LD        XL, A
        LDW       S:?w5, X
        CLR       S:?b9
        CLR       S:?b8
        JRA       L:??DrawText_0
??DrawText_1:
        LDW       X, S:?w4
        ADDW      X, S:?w6
        LD        A, (X)
        LD        S:?b1, A
        MOV       S:?b0, S:?b14
        LD        A, S:?b11
        CALLF     DrawSymbol
        CLRW      X
        EXG       A, XL
        LD        A, S:?b15
        EXG       A, XL
        ADDW      X, #0x5
        ADDW      X, S:?w5
        LDW       S:?w5, X
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
??DrawText_0:
        LDW       X, S:?w4
        ADDW      X, S:?w6
        LD        A, (X)
        CP        A, #0x2f
        JRNE      L:??DrawText_1
        LDW       X, S:?w4
        ADDW      X, S:?w6
        INCW      X
        LD        A, (X)
        CP        A, #0x40
        JRNE      L:??DrawText_1
        rim
        CALLF     L:?pop_l3
        CFI ?b12 SameValue
        CFI ?b13 SameValue
        CFI ?b14 SameValue
        CFI ?b15 SameValue
        CFI CFA SP+8
        CALLF     L:?pop_l2
        CFI ?b8 SameValue
        CFI ?b9 SameValue
        CFI ?b10 SameValue
        CFI ?b11 SameValue
        CFI CFA SP+4
        POP       CC
        CFI CC SameValue
        CFI CFA SP+3
        RETF
        CFI EndBlock cfiBlock33
//    5 #include "stdlib.h"

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        SECTION_GROUP abs
        CFI Block cfiBlock34 Using cfiCommon0
        CFI Function abs
        CODE
// __intrinsic __nounwind __far_func int abs(int)
abs:
        CPW       X, #0x0
        JRSGE     L:??abs_0
        LDW       Y, X
        NEGW      Y
        LDW       X, Y
??abs_0:
        RETF
        CFI EndBlock cfiBlock34

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
//    6 //----------------------------
//    7 void main()      
//    8 { 
//    9   char ru;
//   10   InitSystemClock();
//   11   InitPortsIO();   
//   12   InitSPI();
//   13   //InitTimers();
//   14   //EnableInterrupts(); 
//   15   InitLCD();
//   16   DrawFillRectangle(1,1,130,130,0x000000);//Background
//   17   ru=PIND;
//   18   //DrawText(1,1,"Hello /@",1);
//   19   for (char i=1;i<=255;i+=2) {
//   20    DrawFillRectangle(1,i/2,130,1,i);   
//   21   };
//   22   while (1)   
//   23   {   
//   24     
//   25   }   
//   26 } 
// 
// 3 520 bytes in section .far_func.text
// 2 240 bytes in section .near.rodata
// 
// 3 509 bytes of CODE  memory (+ 11 bytes shared)
// 2 240 bytes of CONST memory
//
//Errors: none
//Warnings: 4
