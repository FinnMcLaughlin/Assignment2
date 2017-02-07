class EnemyBullet
{
  float RBullet, LBullet, y, t;

  EnemyBullet(float RBullet, float LBullet, float y)
  {
    this.RBullet = RBullet;
    this.LBullet = LBullet;
    this.y = y;
  }

  void Render()
  {
    stroke(255);
    line(RBullet, y+5, RBullet, y); 
    line(LBullet, y+5, LBullet, y);
  }

  void Update()
  {
    y = y + 7;

    if (y > 800)
    {
      EBullets.remove(this);
    }
  }
}