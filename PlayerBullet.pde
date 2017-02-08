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

    
    if (y <= 0 || BulLife <= 0)//If Bullet Life is less than 0 or bullet goes off screen
    {                           //Remove Bullet from Playe Bullet array
      PBullets.remove(this);
    }

    int Enemysize = Enemies.size();
    for (int i = Enemysize - 1; i >= 0; i--)
    {
      Enemy EnCheck = Enemies.get(i);
      //Checks distance between enemy and both player bullets
      if ( dist( EnCheck.x, EnCheck.y, RBullet, y) < 50 || dist( EnCheck.x, EnCheck.y, LBullet, y) < 50)
      {
        EnCheck.lives -= 1;      //If distance is less than 50, decrement enemy life
        EnCheck.shot = true;      //Make shot true, so points are added
        BulLife -= 1;              //Decrement Bullet life
      }
    }
  }
}