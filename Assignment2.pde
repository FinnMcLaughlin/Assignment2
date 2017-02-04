Level level;
Player player1;
ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<EnemyBullet> EBullets = new ArrayList<EnemyBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
boolean laser = false;
float laspos;

void setup()
{
  size(500, 650);
  player1 = new Player(310);
  level = new Level(1);
}

void draw()
{
  background(0);
  player1.Render();
  player1.Update();

  stroke(0);
  level.LevelStart();

  stroke(20, 100, 60);
  line(110, 0, 110, 725);


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
}