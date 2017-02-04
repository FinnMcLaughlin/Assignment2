class PlayerBullet
{
  float RBullet, LBullet, y, rad;
  
  PlayerBullet(float RBullet, float LBullet, float y)
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
    y = y - 5;
    
    if(y <= 0)
    {
      PBullets.remove(this);
    }
    
    int Enemysize = Enemies.size();
    for(int i = Enemysize - 1; i >= 0; i--)
    {
      Enemy EnCheck = Enemies.get(i);
      
      if(EnCheck.type == 4)
      {
        rad = 50;
      }
      else
      {
        rad = 50;
      }
        if( dist( EnCheck.x,EnCheck.y, RBullet, y) < rad || dist( EnCheck.x, EnCheck.y, LBullet, y) < rad)
        {
          EnCheck.lives -= 1;
        }
    }
  }
 
}