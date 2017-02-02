class EnemyBullet
{
  float RBullet, LBullet, y;
  
  EnemyBullet(float RBullet, float LBullet, float y)
  {
    this.RBullet = RBullet;
    this.LBullet = LBullet;
    this.y = y;
  }
  
  void Render()
  {
   stroke(250, 240, 20);
   line(RBullet, y+5, RBullet,  y);
   line(LBullet, y+5, LBullet, y);
  }
  
  void Update()
  {
    y = y + 5;
    
    if(y > 650)
    {
      EBullets.remove(this);
    }
  }
}