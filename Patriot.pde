class Patriot extends Enemy
{
  float LBulpos, RBulpos;
  
  
  Patriot()
  {
    this.x = 0;
    this.y = -100;
  }
  
  Patriot(float x, float y, int type, int p)
  {
    this.x = x;
    this.y = y;
    this.type = type;
    this.p = p;
    
    this.LBulpos = this.x + 62;
    this.RBulpos = this.x + 139;
    
    Bullet();
    CreatePatriot();
  }
  
  void Bullet()
  {
    if( frameCount % 30 == 0 )
    {
       EnemyBullet EB = new EnemyBullet(LBulpos, RBulpos, 280);
       EBullets.add(EB);
    }
  }
}