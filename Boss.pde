class Boss extends Enemy
{
  Boss()
  {
    this.x = 0;
    this.y = -100;
  }
  
  Boss(float x, float y, int type, int p, int lives, boolean dead)
  {
    this.x = x;
    this.y = y;
    this.type = type;
    this.p = p;
    this.lives = lives;
    this.dead = dead;
    
    CreateBoss();
  }
}
  
  
  
  
  
  
  
  
  
  
  