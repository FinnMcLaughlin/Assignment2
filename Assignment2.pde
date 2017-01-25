Player player1;
Enemy enemy1;
ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();

void setup()
{
  size(500, 650);
  player1 = new Player(225);
  enemy1 = new Enemy();
}
    
void draw()
{
  background(0);
  player1.Render();
  player1.Update();
  
  enemy1.Render();
  
  for(PlayerBullet PB:PBullets)
  {
    PB.Render();
    PB.Update();
  }
}