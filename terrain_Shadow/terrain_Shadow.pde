int col, row;
int scale  = 35;
int w = 5000;
int h = 5000;
float[][] z;
ArrayList<Integer> colors = new ArrayList<Integer>(144); // program goes fucking crazy
//worry about later
//int[] colors = new int[144];

float flying  = 0;
int r = 255;
int g = 255;
int b = 255;
int y_checker = 0;
int counter  = 0;

void setup()
{
  fullScreen(P3D);


  col = w/scale;
  row = h/scale;

  z = new float[col+1][row+1];
}

void draw()
{
  flying -= .02;
  float yOff = flying;
  for (int y = 0; y <= row; y++)
  {
    counter = int(random(3));
      //switch(counter)
      {
        if(y <=48)
          colors.add(color(5.31*y));
        if(y >  48 && y <= 96)
          colors.add(color(5.31*y));
        if(y > 96)
          colors.add(color(5.31*y));
        
        
        
        
        
        /*
        case(0):
          colors.add(color(255,0,0));
          break;
        case(1):
          colors.add(color(0,255,0));
          break;
        case(2):
          colors.add(color(0,0,255));
          break;
          */
      }
      if(counter  == 3)
        counter  = 0;
    float xOff = 0;
    for (int x = 0; x <= col; x++)
    {
      z[x][y] = map(noise(xOff, yOff), 0, 1, -175, 175);
      xOff += 0.1;
    }
    yOff += 0.1;
  }
  background(100);
  fill(0);


  translate(width/2, height/2+100);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for (int y = 0; y <= row-1; y++)
  {
    stroke(colors.get(y));
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x <= col; x++)
    {
      
      strokeWeight(2.5);
      vertex(x*scale, y*scale, z[x][y]);
      vertex(x*scale, (y+1)*scale, z[x][y+1]);
    }
    endShape();
  }
}
