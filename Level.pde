class Level
{
 Level()
 {
   if( frameCount % 120 == 0 )
   {
       Enemy E = new Enemy(20, -50);
       Enemy E2 = new Enemy(width-20, -50);
       Enemy E3 = new Enemy(100, -75);
       Enemy E4 = new Enemy(width-100, -75);
       Enemy E5 = new Enemy(width/2, -65);
       Enemies.add(E);
       Enemies.add(E2);
       Enemies.add(E3);
       Enemies.add(E4);
       Enemies.add(E5);
   } 
 }
  
  
  
  
  
  
}