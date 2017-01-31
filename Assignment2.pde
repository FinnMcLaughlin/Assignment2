Level level;
Player player1;
ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();

void setup()
{
  size(500, 650);
  player1 = new Player(225);
}
    
void draw()
{
  background(0);
  player1.Render();
  player1.Update();
  
  stroke(0);
  level = new Level();
  
  int Bullsize = PBullets.size();
  for(int i = Bullsize - 1; i >= 0; i--)
  {
     PlayerBullet PB = PBullets.get(i);
     PB.Update();
     PB.Render();
  }
  
  int Enemysize = Enemies.size();
  for(int i = Enemysize - 1; i >= 0; i--)
  {
    Enemy E = Enemies.get(i);
    E.Render();
    E.Update();
  }
}