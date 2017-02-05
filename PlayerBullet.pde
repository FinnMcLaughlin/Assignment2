class PlayerBullet
{
  float RBullet, LBullet, y, BulLife;

  PlayerBullet(float RBullet, float LBullet, float y, float BulLife)
  {
    this.RBullet = RBullet;
    this.LBullet = LBullet;
    this.y = y;
    this.BulLife = BulLife;
  }

  void Render()
  {
    stroke(250, 240, 20);
    line(RBullet, y+5, RBullet, y);
    line(LBullet, y+5, LBullet, y);
  }

  void Update()
  {
    y = y - 5;

    if (y <= 0 || BulLife <= 0)
    {
      PBullets.remove(this);
    }

    int Enemysize = Enemies.size();
    for (int i = Enemysize - 1; i >= 0; i--)
    {
      Enemy EnCheck = Enemies.get(i);

      if ( dist( EnCheck.x, EnCheck.y, RBullet, y) < 50 || dist( EnCheck.x, EnCheck.y, LBullet, y) < 50)
      {
        EnCheck.lives -= 1;
        EnCheck.shot = true;
        BulLife -= 1;
      }
    }
  }
}