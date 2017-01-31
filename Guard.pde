class Guard extends Enemy
{
 Guard()
 {
   this.x = 0;
   this.y = -100;
 }
 
 Guard(float x, float y, int type)
 {
   this.x = x;
   this.y = y;
   this.type = type;
   
   CreateGuard();
 }
  
  
}