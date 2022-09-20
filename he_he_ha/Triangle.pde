int x12,y12,x22,y22,x32,y32;
class Triangle
{
  Triangle(int x11, int y11, int x21, int y21, int x31, int y31)
  {
    x12 = x11;
    y12 = y11;
    x22 = x21;
    y22 = y21;
    x32 = x31;
    y32 = y31;
  }
  
  void drawTri()
  {
    line(x12,y12,x22,y22);
    line(x22,y22,x32,y32);
    line(x12,y12,x32,y32);
  }
  
  void makeSmaller()
  {
    y12 += 5;
    x22 -= 5;
    y22 -= 5;
    x32 += 5;
    y32 -= 5;

  }
  
  void check()
  {
    if(y12 == 250)
    {
      x12 = 250;
      y12 = 0;
      x22 = 500;
      y22 = 500;
      x32 = 0;
      y32 = 500;
    }
  }
  
}
