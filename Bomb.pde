class Bomb
{
  float x;
  float y;
  int radius;
  float baseY;


  Bomb(float x, float y, float baseY, int radius)
  {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.baseY = baseY;
  }

  void display()
  {
  fill(#0b4311);
    star(x, y, (radius-5), radius, 15);
  }
  
  void explode(Bomb bomb)
  {
    
      
    fill(random(0,255),random(0,255),random(0,255));
      
    bombs.remove(bomb);
  }

  void star(float x, float y, float radius1, float radius2, int npoints) 
  {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();

    for (float a = 0; a < TWO_PI; a += angle)
    {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }

    endShape(CLOSE);
  }
  
  void setY(float y)
  {
   this.y = y; 
  }
  
  float getY()
  {
    return y;
  }
  
  float getBaseY()
  {
   return baseY; 
  }
}