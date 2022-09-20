final int WIDTH = 500;
final int HIGHT = 500;
int y_checker = 0;
Triangle tri1 = new Triangle(WIDTH/2,0, WIDTH, HIGHT, 0,HIGHT);



void setup()
{
  size(510,510);
  
}

void draw()
{

  tri1.drawTri();
  tri1.makeSmaller();
  tri1.check();

  
  




  
  
}
