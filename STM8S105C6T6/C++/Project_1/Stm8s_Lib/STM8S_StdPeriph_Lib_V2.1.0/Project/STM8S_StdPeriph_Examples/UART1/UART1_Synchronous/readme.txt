/** @page UART1_Synchronous UART1 Synchronous mode.
  @verbatim
  ******************** (C)COPYRIGHT 2011 STMicroelectronics *******************
  * @file    UART1_Synchronous/readme.txt 
  * @author  MCD Application Team
  * @version V2.1.0
  * @date    18-November-2011
  * @brief   Description of the UART1 Synchronous mode.
  ******************************************************************************
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  ******************************************************************************
   @endverbatim


  @par Example description

  This example provides a short description of how to use UART1 in synchronous mode 
  to ensure  a master/slave full duplex communication with SPI.
  
  The UART1 sends data from TxBuffer1 buffer to SPI using TXE flag.
  Data received using RXNE flag by SPI is stored in RxBuffer2 then compared with
  the sent ones and the result of this comparison is stored in the "TransferStatus1" 
  variable.
 
  In the same Time, the SPI sends data from TxBuffer2 buffer to UART1 using TXE flag.
  Data received using RXNE flag by UART1 is stored in RxBuffer1 then compared with
  the sent ones and the result of this comparison is stored in the "TransferStatus2" 
  variable. 

  @par Directory contents

  - UART1\UART1_Synchronous\main.c           Main file containing the "main" function
  - UART1\UART1_Synchronous\stm8s_conf.h     Library Configuration file
  - UART1\UART1_Synchronous\stm8s_it.c       Interrupt routines source
  - UART1\UART1_Synchronous\stm8s_it.h       Interrupt routines declaration
  

 @par Hardware and Software environment

  - This example runs on STM8S and STM8A High density,Low density devices.
  - For medium density devices, UART1 should be replaced by UART2
  
  - This example has been tested with STMicroelectronics STM8/128-EVAL evaluation 
    board and can be easily tailored to any other development board.

  - STM8/128-EVAL Set-up
      - Connect UART1 and SPI pins as follows:
         - UART1 TX (PA5) to SPI MOSI (PC6)
         - UART1 RX (PA4) to SPI MISO (PC7)
         - UART1 CLK (PA6) to SPI SCK  (PC5)


  @par How to use it ?

  In order to make the program work, you must do the following :

  - Copy all source files from this example folder to the template folder under
    Project\Template
  - Open your preferred toolchain 
  - Rebuild all files and load your image into target memory
  - Run the example

  @note
  - High-Density STM8A devices are the STM8AF52xx STM8AF6269/8x/Ax,
    STM8AF51xx, and STM8AF6169/7x/8x/9x/Ax microcontrollers where the Flash memory
    density ranges between 32 to 128 Kbytes
  - Medium-Density STM8A devices are the STM8AF622x/4x, STM8AF6266/68,
    STM8AF612x/4x, and STM8AF6166/68 microcontrollers where the Flash memory 
    density ranges between 8 to 32 Kbytes
  - High-Density STM8S devices are the STM8S207xx, STM8S007 and STM8S208xx microcontrollers
    where the Flash memory density ranges between 32 to 128 Kbytes.
  - Medium-Density STM8S devices are the STM8S105x and STM8S005 microcontrollers
    where the Flash memory density ranges between 16 to 32-Kbytes.
  - Low-Density STM8S devices are the STM8S103xx, STM8S003 and STM8S903xx microcontrollers
    where the Flash density is 8 Kbytes.
    
 * <h3><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h3>
 */
