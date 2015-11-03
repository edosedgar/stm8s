#include "math.h"
#include "Font_8_8(1).h"
#define CS 1

//---------------------------------
void SendToLCD(unsigned long Packet);
void InitLCD();
void DrawFillRectangle(char YRect,char XRect,char WidthRect,char HeightRect,unsigned long ColorRect);
void DrawRectangle(char XRect2,char YRect2,char WidthRect2,char HeightRect2,unsigned long ColorRect2,char WidthLine);
void DrawPoint(char XPoint,char YPoint,unsigned long ColorPoint);
//---------------------------------

void SendToLCD(unsigned long Packet)
{
  ClrBit(PORTG,CS);
  //Transmission 9-bit--------------  
  SendSPI(Packet>>1); 
  if (BitIsSet(Packet,0)) SPI_DR=0x80; else SPI_DR=0x00;
  while (BitIsSet(SPI_SR,7));  

  //-------------------------------- 
  SetBit(PORTG,CS);
  //Delay(3);
}

void InitLCD()
{
  // Software reset
  SendToLCD(0x0001); 
  // Sleep out
  SendToLCD(0x0011);
  // Partial off
  SendToLCD(0x0013);
  // Display inversion off
  // Memory data access control
  SendToLCD(0x0036);
    SendToLCD(0x01C0);
  // Scroll start address of RAM
  //SendToLCD(0x0037);
  //  SendToLCD(0x0100);
  //  SendToLCD(0x0100);
  // Idle mode off
  SendToLCD(0x0038);
  // Interface pixel format
  SendToLCD(0x003A); 
    SendToLCD(0x0105);
  // Display on
  SendToLCD(0x0029);  
  
}

void DrawFillRectangle(char XRect,char YRect,char WidthRect,char HeightRect,unsigned long ColorRect)
{
  // Column address set
  SendToLCD(0x2A);
    SendToLCD(0x100+XRect); 
    SendToLCD(0x100+XRect+WidthRect-1); 
  // Row address set
  SendToLCD(0x2B);
    SendToLCD(0x100+YRect);
    SendToLCD(0x100+YRect+HeightRect-1); 
  // Memory write
  //Convert 24-bit color to 16-bit color
  char b = ColorRect;
  char g = ColorRect>>8;
  char r = ColorRect>>16;
  unsigned int i,CountPixels;
  SendToLCD(0x2C);
  CountPixels=(HeightRect)*(WidthRect);
  for (i=1;i<=CountPixels;i++){
        SendToLCD(0x0100+((r&0xF8)|(g>>5)));
        SendToLCD(0x0100+(((g<<3)&0xE0)|(b>>3))); 
  }
}

void DrawRectangle(char XRect2,char YRect2,char WidthRect2,char HeightRect2,unsigned long ColorRect2,char WidthLine)
{
  DrawFillRectangle(XRect2,YRect2,WidthRect2,WidthLine,ColorRect2);
  DrawFillRectangle(XRect2+WidthRect2-WidthLine,YRect2,WidthLine,HeightRect2,ColorRect2);
  DrawFillRectangle(XRect2,YRect2+HeightRect2-WidthLine,WidthRect2,WidthLine,ColorRect2);
  DrawFillRectangle(XRect2,YRect2,WidthLine,HeightRect2,ColorRect2);
}

void DrawPoint(char XPoint,char YPoint,unsigned long ColorPoint)
{
  DrawFillRectangle(XPoint,YPoint,1,1,ColorPoint);  
}

void DrawLine(int x1, int y1, int x2, int y2,unsigned long ColorLine ) {
    const int deltaX = abs(x2 - x1);
    const int deltaY = abs(y2 - y1);
    const int signX = x1 < x2 ? 1 : -1;
    const int signY = y1 < y2 ? 1 : -1;
    //
    int error = deltaX - deltaY;
    //
    DrawPoint(x2, y2,ColorLine);
    while(x1 != x2 || y1 != y2) {
        DrawPoint(x1, y1,ColorLine);
        const int error2 = error * 2;
        //
        if(error2 > -deltaY) {
            error -= deltaY;
            x1 += signX;
        }
        if(error2 < deltaX) {
            error += deltaX;
            y1 += signY;
        }
    }
 
}

void DrawCircle(int x0, int y0, int radius,unsigned long ColorCircle) {
        int x = 0;
        int y = radius;
        int delta = 2 - 2 * radius;
        int error = 0;
        while(y >= 0) {
                DrawPoint(x0 + x, y0 + y,ColorCircle);
                DrawPoint(x0 + x, y0 - y,ColorCircle);
                DrawPoint(x0 - x, y0 + y,ColorCircle);
                DrawPoint(x0 - x, y0 - y,ColorCircle);
                error = 2 * (delta + y) - 1;
                if(delta < 0 && error <= 0) {
                        ++x;
                        delta += 2 * x + 1;
                        continue;
                }
                error = 2 * (delta - x) - 1;
                if(delta > 0 && error > 0) {
                        --y;
                        delta += 1 - 2 * y;
                        continue;
                }
                ++x;
                delta += 2 * (x - y);
                --y;
        }
}

void DrawLine2(int sx, int sy, int tx, int ty,unsigned long ColorLine ) {
  int l, dx, dy;
  int xr = abs(tx-sx);
  int yr = abs(ty-sy);
  if(xr > yr) {l=xr;} else {l=yr;}
  int px = (sx<<12)+(1<<11);     //  1<<11 аналогично 0.5 у float
  int py = (sy<<12)+(1<<11);
  int ex = (tx<<12)+(1<<11);
  int ey = (ty<<12)+(1<<11);
  if(l != 0) {
      dx = (ex-px) / l;
      dy = (ey-py) / l;
  } else {
      dx = 0;
      dy = 0;
  }
  for(int i=0; i<=l; i++) {
      DrawPoint(px>>12, py>>12,ColorLine);
      px += dx;
      py += dy;
  }
}
__monitor void DrawPicture(char x,char y,char width,char height,const char* bmp)
{
  char i,j,count;
  count=0;
  for (i=0;i<=height-1;i++)
  {
    for (j=0;j<=width-1;j++)
    {
      DrawPoint(x+j,y+i,bmp[count]*0xFFFFFF); 
      count++;
    }      
  }
}

__monitor void DrawSymbol(char x,char y,char symbol)
{
  switch (symbol)
  {
    case 'A' :{DrawPicture(x,y,5,7,Symbol1);   break;}
    case 'B' :{DrawPicture(x,y,5,7,Symbol2);   break;}
    case 'C' :{DrawPicture(x,y,5,7,Symbol3);   break;}
    case 'D' :{DrawPicture(x,y,5,7,Symbol4);   break;}
    case 'E' :{DrawPicture(x,y,5,7,Symbol5);   break;}
    case 'F' :{DrawPicture(x,y,5,7,Symbol6);   break;}
    case 'G' :{DrawPicture(x,y,5,7,Symbol7);   break;}
    case 'H' :{DrawPicture(x,y,5,7,Symbol8);   break;}
    case 'I' :{DrawPicture(x,y,5,7,Symbol9);   break;}
    case 'J' :{DrawPicture(x,y,5,7,Symbol10);  break;}
    case 'K' :{DrawPicture(x,y,5,7,Symbol11);  break;}
    case 'L' :{DrawPicture(x,y,5,7,Symbol12);  break;}
    case 'M' :{DrawPicture(x,y,5,7,Symbol13);  break;}
    case 'N' :{DrawPicture(x,y,5,7,Symbol14);  break;}
    case 'O' :{DrawPicture(x,y,5,7,Symbol15);  break;}
    case 'P' :{DrawPicture(x,y,5,7,Symbol16);  break;}
    case 'Q' :{DrawPicture(x,y,5,7,Symbol17);  break;}
    case 'R' :{DrawPicture(x,y,5,7,Symbol18);  break;}
    case 'S' :{DrawPicture(x,y,5,7,Symbol19);  break;}
    case 'T' :{DrawPicture(x,y,5,7,Symbol20);  break;}
    case 'U' :{DrawPicture(x,y,5,7,Symbol21);  break;}
    case 'V' :{DrawPicture(x,y,5,7,Symbol22);  break;}
    case 'W' :{DrawPicture(x,y,5,7,Symbol23);  break;}
    case 'X' :{DrawPicture(x,y,5,7,Symbol24);  break;}
    case 'Y' :{DrawPicture(x,y,5,7,Symbol25);  break;}
    case 'Z' :{DrawPicture(x,y,5,7,Symbol26);  break;}
    case ' ' :{DrawPicture(x,y,5,7,Symbol27);  break;}
    case 0x00:{DrawPicture(x,y,5,7,Symbol28);  break;}
    case 'a' :{DrawPicture(x,y,5,7,Symbol29);  break;}
    case 'b' :{DrawPicture(x,y,5,7,Symbol30);  break;}
    case 'c' :{DrawPicture(x,y,5,7,Symbol31);  break;}
    case 'd' :{DrawPicture(x,y,5,7,Symbol32);  break;}
    case 'e' :{DrawPicture(x,y,5,7,Symbol33);  break;}
    case 'f' :{DrawPicture(x,y,5,7,Symbol34);  break;}
    case 'g' :{DrawPicture(x,y,5,7,Symbol35);  break;}
    case 'h' :{DrawPicture(x,y,5,7,Symbol36);  break;}
    case 'i' :{DrawPicture(x,y,5,7,Symbol37);  break;}
    case 'j' :{DrawPicture(x,y,5,7,Symbol38);  break;}
    case 'k' :{DrawPicture(x,y,5,7,Symbol39);  break;}
    case 'l' :{DrawPicture(x,y,5,7,Symbol40);  break;}
    case 'm' :{DrawPicture(x,y,5,7,Symbol41);  break;}
    case 'n' :{DrawPicture(x,y,5,7,Symbol42);  break;}
    case 'o' :{DrawPicture(x,y,5,7,Symbol43);  break;}
    case 'p' :{DrawPicture(x,y,5,7,Symbol44);  break;}
    case 'q' :{DrawPicture(x,y,5,7,Symbol45);  break;}
    case 'r' :{DrawPicture(x,y,5,7,Symbol46);  break;}
    case 's' :{DrawPicture(x,y,5,7,Symbol47);  break;}
    case 't' :{DrawPicture(x,y,5,7,Symbol48);  break;}
    case 'u' :{DrawPicture(x,y,5,7,Symbol49);  break;}
    case 'v' :{DrawPicture(x,y,5,7,Symbol50);  break;}
    case 'w' :{DrawPicture(x,y,5,7,Symbol51);  break;}
    case 'x' :{DrawPicture(x,y,5,7,Symbol52);  break;}
    case 'y' :{DrawPicture(x,y,5,7,Symbol53);  break;}
    case 'z' :{DrawPicture(x,y,5,7,Symbol54);  break;}  
    case '0' :{DrawPicture(x,y,5,7,Symbol55);  break;}
    case '1' :{DrawPicture(x,y,5,7,Symbol56);  break;}
    case '2' :{DrawPicture(x,y,5,7,Symbol57);  break;}
    case '3' :{DrawPicture(x,y,5,7,Symbol58);  break;}
    case '4' :{DrawPicture(x,y,5,7,Symbol59);  break;}
    case '5' :{DrawPicture(x,y,5,7,Symbol60);  break;}
    case '6' :{DrawPicture(x,y,5,7,Symbol61);  break;}
    case '7' :{DrawPicture(x,y,5,7,Symbol62);  break;}
    case '8' :{DrawPicture(x,y,5,7,Symbol63);  break;}
    case '9' :{DrawPicture(x,y,5,7,Symbol64);  break;}
  }
}
__monitor void DrawText(char x,char y,char* text,char interval)
{
  asm("sim");
  unsigned int i,pos;
  pos=x;
  i=0;
  while (1) 
  {
    if (text[i]=='/') {if (text[i+1]=='@'){goto EndDrawText;}};
    DrawSymbol(pos,y,text[i]);
    pos=pos+5+interval;
    i++;
  }  
  EndDrawText:
  asm("rim");
}