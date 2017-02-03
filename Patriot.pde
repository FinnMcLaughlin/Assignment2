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
    

    CreatePatriot();
  }
}