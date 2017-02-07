Level level;
Player player1;
Menu start;
GameOver over;

ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<EnemyBullet> EBullets = new ArrayList<EnemyBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
boolean laser = false, gameOver = false;
float laspos, pos;
int PLives, BLife, L, score = 0;

void setup()
{
  size(500, 650);
  player1 = new Player(310, 10);
  start = new Menu(true);
  level = new Level(4);
}

void draw()
{
  if(start.menu == true)
  {
     background(0);
     start.MenuStart();
  }
  else
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
      rect(laspos, 145, 20, 700);
    }
    
    if(gameOver == true)
    {
      over = new GameOver(score);
    }
    
    HUD();
  }
}

void HUD()
{
  int shipHealth;
  
  shipHealth = PLives * 10;
  
  stroke(0, 255, 0);
  textSize(20);
  text("Score:", 450, 765);
  text(score, 530, 765);
  
  stroke(0);
  fill(255);
  rect(20, 750, 150, 20);
  fill(0, 255, 0);
  rect(20, 750, shipHealth*1.5, 20); 
  
  if(L == 3)
  {
    if(frameCount > 3000)
    {
      stroke(0);
      fill(255);
      rect(50, 20, 500, 20);
      fill(150, 0, 0);
      rect(50, 20, BLife, 20);
    }
  }    
}

  void mouseClicked()
  {
    if( (mouseX > 200 && mouseX < 300) && (mouseY > 275 && mouseY < 300) && start.menu == true )
    {
      start.menu = false;
    }
  }