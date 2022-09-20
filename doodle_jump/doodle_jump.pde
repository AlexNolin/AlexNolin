void setup()
{
  size(400,600);
}
float x  = 200;
float movement = 200;//loaction
float movement1 = 1;//velocity
float movement2 = 1;//acc
float multi = 4;
void draw()
{
  noStroke();
  background(50,200,255);
  movement += movement1;
  movement1 += movement2;
  fill(0,0,255);
  ellipse(mouseX,movement,50,50);
  if(movement >= 500)
  {
    movement1 = movement1 *-.95;
    movement = 500;
  }
}

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == RIGHT)
    {
      x+=multi;
      multi++;
    }
    if(keyCode == LEFT)
    {
      x-=multi;
      multi++;
    }
  }
}

void keyReleased()
{
  if(key == CODED)
  {
    if(keyCode == RIGHT)
    {
      multi=4;
    }
    if(keyCode == LEFT)
    {
      multi = 4;
    }
    if(keyCode == 49)
    {
      movement1+=20;
    }
    
  }
}
