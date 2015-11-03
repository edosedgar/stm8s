/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include "iostm8a.h" // register defines
void InitIO(void)
 {
	PD_ODR|=0x01; // ������� ������ ����� D
	PD_DDR|=0x01; // ������� ����������� ����� D
	PD_CR1|=0x01; // ������� ���������� 1 ����� D
 }
 void Delay(int delay)
 {
	unsigned int n;
	for (n=0;n<delay;n++);
 }
 
int main()
{
	InitIO();
	while (1) 
	{
		PD_ODR^=0x01; // �������� ������, � �������� ��������� ���������
		Delay(100000);
	}
}
