Player player1;
ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();

void setup()
{
  size(500, 650);
  player1 = new Player(225);
}
    
void draw()
{
  background(120);
  player1.Render();
  player1.Update();
  
  for(PlayerBullet b:PBullets)
  {
    b.Update();
    b.Render();
  }
}