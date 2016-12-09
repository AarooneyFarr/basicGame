class Player
{
  
  int x;
  int y;
  int radius;



  Player(int x, int y, int radius)
  {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  void display()
  {
   ellipse(x,y,radius*2,radius*2); 
  }
  
}