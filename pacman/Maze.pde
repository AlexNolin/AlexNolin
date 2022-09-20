class Maze
{
  int lengthMaze = 10;
  int maze[][] = {{1,1,1,1,1,1,1,1,1,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,1,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,0,0,0,0,0,0,0,0,1},
                  {1,1,1,1,1,1,1,1,1,1}};
                
  Maze()
  {
    setupMaze();
  }
  //eaaaach  block is 200,200... HOW DO WE DO THIS
  
  void setupMaze()
  {
    for(int i1 = 0; i1 < lengthMaze;i1++)
    {
      for(int i2 = 0; i2< lengthMaze;i2++)
      {
        if(maze[i1][i2] == 1)
        {
          rect(i1*50,i2*50,50,50);
        }
      }
    }
  }
  
  int mazeCheck(int x, int y)
  {
    x = x/50;
    y = y/50;
    if(maze[x][y] == 1)
     {
       return 1;
     }
     return 0;
  }
  
}
