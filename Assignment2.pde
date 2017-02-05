Level level;
Player player1;
ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<EnemyBullet> EBullets = new ArrayList<EnemyBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
boolean laser = false, gameOver = false;
float laspos, pos;
int PLives, BLife, L;

void setup()
{
  size(500, 650);
  player1 = new Player(310, 10);
  level = new Level(1);
}

void draw()
{
  background(0);
  player1.Render();
  player1.Update();

  stroke(0);
  level.LevelStart();

  //stroke(20, 100, 60);
  line(0, 300, 510, 300);


  int Bullsize = PBullets.size();
  for (int i = Bullsize - 1; i >= 0; i--)
  {
    PlayerBullet PB = PBullets.get(i);
    PB.Update();
    PB.Render();
  }

  int EBullsize = EBullets.size();
  for (int i = EBullsize - 1; i >= 0; i--)
  {
    EnemyBullet EB = EBullets.get(i);
    EB.Update();
    EB.Render();
  }

  int Enemysize = Enemies.size();
  for (int i = Enemysize - 1; i >= 0; i--)
  {
    Enemy E = Enemies.get(i);
    E.Update();
    E.Render();
  }

  if (laser == true)
  {
    stroke(255, 0, 0);
    rect(laspos, 120, 20, 700);
  }
  
  if(gameOver == true)
  {
    println("GAME OVER");
    //delay(1000);
  }
  
  HUD();
}

void HUD()
{
  int shipHealth;
  
  shipHealth = PLives * 10;
  
  fill(255);
  rect(20, 750, 200, 20);
  fill(0, 255, 0);
  rect(20, 750, shipHealth*2, 20); 
  
  if(L == 3)
  {
    if(frameCount > 3000)
    {
      fill(255);
      rect(50, 20, 500, 20);
      fill(150, 0, 0);
      rect(50, 20, BLife, 20);
    }
  }    
}