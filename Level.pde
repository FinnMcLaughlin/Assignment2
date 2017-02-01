class Level
{
 Level()
 {
   float pos;
   Enemy ESprite;
   
   if(frameCount == 60)
   {
     ESprite = new Hive(225, -30, 1);
     Enemies.add(ESprite);
     ESprite = new Hive(50, -70, 1);
     Enemies.add(ESprite);
     ESprite = new Hive(400, -70, 1);
     Enemies.add(ESprite);
   }
   
     if(frameCount == 120)
     {
       for(int i=-25; i < 520; i += 125)
       {
         ESprite = new Hive(0+i, -30, 1);
         Enemies.add(ESprite);
       }
     }
     
     if(frameCount == 180)
     {
       for(int i=-25; i < 250; i += 125)
       {
         ESprite = new Hive(0+i, -30, 1);
         Enemies.add(ESprite);
       }
       for(int i=-25; i < 250; i += 125)
       {
         ESprite = new Hive(250+i, -100, 1);
         Enemies.add(ESprite);
       }
       for(int i=-25; i < 250; i += 125)
       {
         ESprite = new Hive(0+i, -170, 1);
         Enemies.add(ESprite);
       }
     }
   
   if(frameCount == 300)
   {
     for(int i=0; i < 250; i += 125)
     {
       ESprite = new Hive(-30+i, -30, 1);
       Enemies.add(ESprite);
     }
     
     for(int i=0; i < 250; i += 125)
     {
       ESprite = new Hive(350+i, -30, 1);
       Enemies.add(ESprite);
     }
   }   
   
   
   
   
   
   /*pos = random(20, 500);
   if(frameCount % 180 == 0)
   {
     for(int i=0; i < 200; i += 50)
     {
        ESprite = new Guard(600+(i), pos, 3);
        Enemies.add(ESprite);
     }
   }*/
   
    
 }  
}