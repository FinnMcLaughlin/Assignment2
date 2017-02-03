class PlayerBullet
{
  float RBullet, LBullet, y;
  
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
    
    if(y < 0)
    {
      PBullets.remove(this);
    }
    
    int Enemysize = Enemies.size();
    for(int i = Enemysize - 1; i >= 0; i--)
    {
      Enemy E = Enemies.get(i);
      if( dist( E.x,E.y, RBullet, y) < 50)
      {
        Enemies.remove(this);
        E.dead = true;
      }
    }
  }
 
}