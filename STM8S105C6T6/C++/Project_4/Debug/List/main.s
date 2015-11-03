///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            05/Jun/2013  17:18:35 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\main.c        /
//    Command line =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\main.c -e     /
//                    -On --no_cse --no_unroll --no_inline --no_code_motion   /
//                    --no_tbaa --no_cross_call --debug --code_model medium   /
//                    --data_model medium -o E:\STM_PROJECT\STM8S105C6T6\C++\ /
//                    Project_4\Debug\Obj\ --dlib_config                      /
//                    "D:\Program_Files\IAR Systems\IAR for                   /
//                    STM8\stm8\LIB\dlstm8mmn.h" -lCN                         /
//                    E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\Debug\List\   /
//                    -lA E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\Debug\Lis /
//                    t\ --vregs 16                                           /
//    List file    =  E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\Debug\List\ma /
//                    in.s                                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__code_model", "medium_or_large"
        RTMODEL "__core", "stm8"
        RTMODEL "__data_model", "medium"
        RTMODEL "__rt_version", "4"
        RTMODEL "__size_limit", "4294966272"

        PUBLIC ADC
        PUBLIC AWU
        PUBLIC ByteToChar
        PUBLIC Delay
        PUBLIC DisableInterrupts
        PUBLIC EXTI0
        PUBLIC EXTI1
        PUBLIC EXTI2
        PUBLIC EXTI3
        PUBLIC EXTI4
        PUBLIC EnableInterrupts
        PUBLIC HandlerTimer4
        PUBLIC InitADC
        PUBLIC InitPortsIO
        PUBLIC InitSPI
        PUBLIC InitSystemClock
        PUBLIC InitTimers
        PUBLIC SPIEndTransfer
        PUBLIC SendSPI
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
        
// E:\STM_PROJECT\STM8S105C6T6\C++\Project_4\main.c
//    1 #include "stm8s105c6.h"

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
        PUSH      CC
        CFI CFA SP+10
        POP       A
        CFI CFA SP+9
        AND       A, #0xbf
        PUSH      A
        CFI CFA SP+10
        POP       CC
        CFI CFA SP+9
        BRES 0x5342,#0
        CALLF     HandlerTimer4
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
//    2 #include "functions.h"

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock14 Using cfiCommon0
        CFI Function Delay
        CODE
// __far_func void Delay(unsigned int)
Delay:
??Delay_0:
        TNZW      X
        JREQ      L:??Delay_1
        DECW      X
        JRA       L:??Delay_0
??Delay_1:
        RETF
        CFI EndBlock cfiBlock14

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock15 Using cfiCommon2
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
        CFI EndBlock cfiBlock15

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock16 Using cfiCommon0
        CFI Function ByteToChar
        CODE
// __far_func char ByteToChar(unsigned int)
ByteToChar:
        ADDW      X, #0x30
        LD        A, XL
        RETF
        CFI EndBlock cfiBlock16
//    3 #include "initperiphery.h"

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock17 Using cfiCommon0
        CFI Function InitPortsIO
        CODE
// __far_func void InitPortsIO()
InitPortsIO:
        MOV       L:0x5002, #0x0
        MOV       L:0x5003, #0x0
        MOV       L:0x5000, #0x0
        MOV       L:0x5007, #0x0
        MOV       L:0x5008, #0x80
        MOV       L:0x5005, #0x0
        MOV       L:0x500c, #0x64
        MOV       L:0x500d, #0x64
        MOV       L:0x500e, #0x64
        MOV       L:0x500a, #0x0
        MOV       L:0x5011, #0x1
        MOV       L:0x5012, #0x1
        MOV       L:0x5013, #0x1
        MOV       L:0x500f, #0x0
        MOV       L:0x5016, #0x20
        MOV       L:0x5017, #0x20
        MOV       L:0x5014, #0x20
        MOV       L:0x5020, #0x0
        MOV       L:0x5021, #0x0
        MOV       L:0x501e, #0x0
        RETF
        CFI EndBlock cfiBlock17

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock18 Using cfiCommon0
        CFI Function InitSystemClock
        CODE
// __far_func void InitSystemClock()
InitSystemClock:
        MOV       L:0x50c1, #0x1
        MOV       L:0x50c5, #0x2
        MOV       L:0x50c7, #0xff
??InitSystemClock_0:
        BTJF      L:0x50c1, #0x1, L:??InitSystemClock_0
        MOV       L:0x50c6, #0x0
        MOV       L:0x50c4, #0xb4
??InitSystemClock_1:
        BTJF      L:0x50c5, #0x3, L:??InitSystemClock_1
        RETF
        CFI EndBlock cfiBlock18

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock19 Using cfiCommon0
        CFI Function InitSPI
        CODE
// __far_func void InitSPI()
InitSPI:
        MOV       L:0x5200, #0x54
        MOV       L:0x5201, #0x3
        RETF
        CFI EndBlock cfiBlock19

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock20 Using cfiCommon0
        CFI Function InitTimers
        CODE
// __far_func void InitTimers()
InitTimers:
        MOV       L:0x5260, #0x0
        MOV       L:0x5261, #0x5
        MOV       L:0x5262, #0x0
        MOV       L:0x5263, #0x1
        MOV       L:0x526d, #0x80
        MOV       L:0x525c, #0x10
        MOV       L:0x5259, #0x30
        MOV       L:0x5250, #0x81
        MOV       L:0x530c, #0x0
        MOV       L:0x530d, #0xff
        MOV       L:0x530e, #0xff
        MOV       L:0x5300, #0x81
        MOV       L:0x5301, #0x1
        MOV       L:0x532a, #0x0
        MOV       L:0x532b, #0xff
        MOV       L:0x532c, #0xff
        MOV       L:0x5320, #0x81
        MOV       L:0x5321, #0x1
        MOV       L:0x5345, #0x7
        MOV       L:0x5346, #0x50
        MOV       L:0x5340, #0x81
        MOV       L:0x5341, #0x1
        RETF
        CFI EndBlock cfiBlock20

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock21 Using cfiCommon0
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
        CFI EndBlock cfiBlock21
//    4 

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock22 Using cfiCommon0
        CFI Function main
        CODE
//    5 void main()
//    6 {
//    7   InitSystemClock();
main:
        CALLF     InitSystemClock
//    8   InitPortsIO();  
        CALLF     InitPortsIO
//    9   InitTimers();
        CALLF     InitTimers
//   10   EnableInterrupts();   
        CALLF     EnableInterrupts
//   11   while (1)
//   12   {
//   13     if ((PINB&0x80)==0x80) 
??main_0:
        BTJF      L:0x5006, #0x7, L:??main_1
//   14     {
//   15       asm("BRES 0x5340,#0");
        BRES 0x5340,#0
//   16       asm("BSET 0x525C,#4"); 
        BSET 0x525C,#4
//   17     };
//   18     if ((PINB&0x80)==0x00) 
??main_1:
        BTJT      L:0x5006, #0x7, L:??main_0
//   19     {
//   20       asm("BSET 0x5340,#0");
        BSET 0x5340,#0
        JRA       L:??main_0
        CFI EndBlock cfiBlock22
//   21     };
//   22     
//   23   }
//   24 }
//   25 

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CFI Block cfiBlock23 Using cfiCommon0
        CFI Function HandlerTimer4
        CODE
//   26 void HandlerTimer4 (void)
//   27 {
//   28   asm("BCPL 0x525C,#4"); //TIM1_CCER1.CC2E=!TIM1_CCER1.CC2E 
HandlerTimer4:
        BCPL 0x525C,#4
//   29 };
        RETF
        CFI EndBlock cfiBlock23

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
//   30 
//   31 
// 
// 342 bytes in section .far_func.text
// 
// 342 bytes of CODE memory
//
//Errors: none
//Warnings: none
