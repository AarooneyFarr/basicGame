 //<>//
ArrayList<Bomb> bombs;
Player player;
int score;
int bombRadius;
float bombY;
boolean collided;
Bomb bombIndex;

void setup()
{
  size(500, 500);
  bombRadius = 30;
  bombY = 0;
  bombs = new ArrayList<Bomb>();

  score = 0;
}

void draw()
{
  player = new Player(mouseX, mouseY, 10);
  

  background(175); 

  fill(#13BC0B);

  player.display();

  fill(#0b4311);

  for (Bomb currentBomb : bombs)
  {
    
    
    if (bombY +currentBomb.getBaseY() <510)
    {
      currentBomb.display();
      currentBomb.setY(bombY + currentBomb.getBaseY());
      bombY = bombY + 0.5;
    } else
    {
      bombY = 0;
      currentBomb.setY(random(0,250));
      currentBomb.display();
      score ++;
      player.radius += 5;
    }
  }

 

  for ( Bomb currentBomb : bombs)
  {
    if (collided(player, currentBomb))
    {
      score -= 1;
      collided = true;
      bombIndex = currentBomb;
    }
  }

  if (collided)
  {
    bombs.remove(bombIndex);
  }

  while (bombs.size()<5)
  {
    bombs.add(new Bomb(random(0, width), random(0, height), random(0,250), bombRadius)); //<>//
  }
  
   text("Score is: " + score, 10, 10);
}

boolean collided(Player player, Bomb bomb)
{
  boolean collided = false;


  if (dist(bomb.x, bomb.y, player.x, player.y) < bomb.radius+player.radius) {
    collided = true;
  }


  return collided;
}