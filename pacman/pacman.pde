
int y_checker = 0;
int count1 = 0;
PImage pac1_3;
PImage pac2_3;
PImage pac3_3;
PImage pac1_0;
PImage pac2_0;
PImage pac3_0;
PImage pac1_1;
PImage pac2_1;
PImage pac3_1;
PImage pac1_2;
PImage pac2_2;
PImage pac3_2;
int con1 = 50;
int x = 250;
int y  = 250;
int yRate  = 100;
int xRate = 100;
int move = 0;
void setup()
{
  size(500,500);
  //load all images lmao
  pac1_3 = loadImage("pac1_3.png");
  pac2_3 = loadImage("pac2_3.png");
  pac3_3 = loadImage("pac3_3.png");
  pac1_0 = loadImage("pac1_0.png");
  pac2_0 = loadImage("pac2_0.png");
  pac3_0 = loadImage("pac3_0.png");
  pac1_1 = loadImage("pac1_1.png");
  pac2_1 = loadImage("pac2_1.png");
  pac3_1 = loadImage("pac3_1.png");
  pac1_2 = loadImage("pac1_2.png");
  pac2_2 = loadImage("pac2_2.png");
  pac3_2 = loadImage("pac3_2.png");
  //more stuff lmao
  pac1_3.resize(con1,con1);
  pac2_3.resize(con1,con1);
  pac3_3.resize(con1,con1);
  pac1_0.resize(con1,con1);
  pac2_0.resize(con1,con1);
  pac3_0.resize(con1,con1);
  pac1_1.resize(con1,con1);
  pac2_1.resize(con1,con1);
  pac3_1.resize(con1,con1);
  pac1_2.resize(con1,con1);
  pac2_2.resize(con1,con1);
  pac3_2.resize(con1,con1);
 
}

void draw()
{
  background(0);
  fill(0,0,255);
  stroke(0,0,255);
  Maze maze = new Maze();
  if(maze.mazeCheck(x,y) == 1)
  {
    switch(move)
    {
      case(0):
        y+=6;
        break;
      case(1):
        x-=6;
        break;
      case(2):
        y-=6;
        break;
      case(3):
        x+=6;
        break;
    }
    
  }
  rect(-10,y_checker,10,10);
  check1();
  switch(move)
  {
    case(3):
      switch(count1)
      {
        case(0):
          image(pac1_3, x,y);
          break;
        case(1):
          image(pac2_3, x,y);
          break;
        case(2):
          image(pac3_3, x,y);
          break;
      }
      break;
    case(0):
      switch(count1)
      {
        case(0):
          image(pac1_0, x,y);
          break;
        case(1):
          image(pac2_0, x,y);
          break;
        case(2):
          image(pac3_0, x,y);
          break;
      }
      break;
    case(1):
      switch(count1)
      {
        case(0):
          image(pac1_1, x,y);
          break;
        case(1):
          image(pac2_1, x,y);
          break;
        case(2):
          image(pac3_1, x,y);
          break;
      }
      break;
    case(2):
      switch(count1)
      {
        case(0):
          image(pac1_2, x,y);
          break;
        case(1):
          image(pac2_2, x,y);
          break;
        case(2):
          image(pac3_2, x,y);
          break;
      }
      break;
      
  }
 
   
 
}

void check1()
{
  y_checker += 130;

  if(y_checker > 1000)
  {
    y_checker = 0;
    count1++;
  }
  if(count1 == 3)
    count1 = 0;

  switch(move)
  {
    case(0):
      x-=0;
      y-=5;
      break;
    case(1):
      x+=5;
      y-=0;
      break;
    case(2):
      x+=0;
      y+=5;
      break;
    case(3):
      x-=5;
      y-=0;
      break;
  }
     
}

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == UP)
    {
      move = 0;
    }
    if(keyCode == RIGHT)
    {
      move = 1;
    }
    if(keyCode == DOWN)
    {
      move = 2;
    }
    if(keyCode == LEFT)
    {
      move = 3;
    }
  }
}
