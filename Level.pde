class Level
{
 Level()
 {
   Enemy BSprite, BSprite2;
   
   if(frameCount % 60 == 0)
   {
     BSprite = new Hive(width/2, -30, 1);
     Enemies.add(BSprite);
   }
   
   if(frameCount % 120 == 0)
   {
     BSprite2 = new Patriot(width-200, -30, 2);
     Enemies.add(BSprite2);
   }
   
   /*if( frameCount % 120 == 0 )
   {
       Enemy E = new Enemy(20, -50);
       Enemy E2 = new Enemy(width-20, -50);
       Enemy E3 = new Enemy(125, -75);
       Enemy E4 = new Enemy(width-125, -75);
       Enemy E5 = new Enemy(width/2, -65);
       
       Enemies.add(E);
       Enemies.add(E2);
       Enemies.add(E3);
       Enemies.add(E4);
       Enemies.add(E5);
   }*/ 
 }
  
  
  
  
  
  
}