class Hive extends Enemy
{  
  Hive()
  {
    this.x = 0;
    this.y = -100;
  }
  
  Hive(float x, float y, int type, int p, boolean dead)
  {
    this.x = x;
    this.y = y;
    this.type = type;
    this.p = p;
    this.dead = dead;
    
    CreateHive();
  }
}