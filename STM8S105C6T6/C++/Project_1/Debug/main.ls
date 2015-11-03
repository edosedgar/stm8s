   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
2795                     ; 6 void InitIO(void)
2795                     ; 7  {
2797                     	switch	.text
2798  0000               _InitIO:
2802                     ; 8 	PD_ODR|=0x01; // Регистр вывода порта D
2804  0000 7210500f      	bset	_PD_ODR,#0
2805                     ; 9 	PD_DDR|=0x01; // Регистр направления порта D
2807  0004 72105011      	bset	_PD_DDR,#0
2808                     ; 10 	PD_CR1|=0x01; // Регистр управления 1 порта D
2810  0008 72105012      	bset	_PD_CR1,#0
2811                     ; 11  }
2814  000c 81            	ret
2857                     ; 12  void Delay(int delay)
2857                     ; 13  {
2858                     	switch	.text
2859  000d               _Delay:
2861  000d 89            	pushw	x
2862  000e 89            	pushw	x
2863       00000002      OFST:	set	2
2866                     ; 15 	for (n=0;n<delay;n++);
2868  000f 5f            	clrw	x
2869  0010 1f01          	ldw	(OFST-1,sp),x
2871  0012 2007          	jra	L3202
2872  0014               L7102:
2876  0014 1e01          	ldw	x,(OFST-1,sp)
2877  0016 1c0001        	addw	x,#1
2878  0019 1f01          	ldw	(OFST-1,sp),x
2879  001b               L3202:
2882  001b 1e01          	ldw	x,(OFST-1,sp)
2883  001d 1303          	cpw	x,(OFST+1,sp)
2884  001f 25f3          	jrult	L7102
2885                     ; 16  }
2888  0021 5b04          	addw	sp,#4
2889  0023 81            	ret
2915                     ; 18 int main()
2915                     ; 19 {
2916                     	switch	.text
2917  0024               _main:
2921                     ; 20 	InitIO();
2923  0024 adda          	call	_InitIO
2925  0026               L7302:
2926                     ; 23 		PD_ODR^=0x01; // Инверсия выхода, к которому подключен светодиод
2928  0026 c6500f        	ld	a,_PD_ODR
2929  0029 a801          	xor	a,	#1
2930  002b c7500f        	ld	_PD_ODR,a
2931                     ; 24 		Delay(100000);
2933  002e ae86a0        	ldw	x,#34464
2934  0031 adda          	call	_Delay
2937  0033 20f1          	jra	L7302
2950                     	xdef	_main
2951                     	xdef	_Delay
2952                     	xdef	_InitIO
2971                     	end
