Enemy ESprite;
boolean levcheck = false;

class Level
{
 int level = 1;
 //Enemy ESprite;
 
 Level()
 {
   //float pos;
  //if young metro dont trust you
   // he gonna shoot you
   /*if(frameCount == 60)
   {
     ESprite = new Patriot(320, 250, 2, 0);
     Enemies.add(ESprite);
     ESprite = new Patriot(120, 250, 2, 0);
     Enemies.add(ESprite);
   }*/
   
   switch(level)
   {
      case 1: level = Level1(level);
              break;
      
      case 2: Level2(level);
              break;
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

int Level1(int lev)
{
  if(frameCount == 60)
           {
             ESprite = new Hive(225, -30, 1, 1);
             Enemies.add(ESprite);
             ESprite = new Hive(50, -70, 1, 1);
             Enemies.add(ESprite);
             ESprite = new Hive(400, -70, 1, 1);
             Enemies.add(ESprite);
           }
         
           if(frameCount == 120)
           {
             for(int i=-25; i < 520; i += 125)
             {
               ESprite = new Hive(0+i, -30, 1, 1);
               Enemies.add(ESprite);
             }
           }
           
           if(frameCount == 180)
           {
             for(int i=-25; i < 250; i += 125)
             {
               ESprite = new Hive(0+i, -30, 1, 1);
               Enemies.add(ESprite);
             }
             for(int i=-25; i < 250; i += 125)
             {
               ESprite = new Hive(250+i, -100, 1, 1);
               Enemies.add(ESprite);
             }
             for(int i=-25; i < 250; i += 125)
             {
               ESprite = new Hive(0+i, -170, 1, 1);
               Enemies.add(ESprite);
             }
           }
         
         if(frameCount == 300)
         {
           for(int i=0; i < 250; i += 125)
           {
             ESprite = new Hive(-30+i, -30, 1, 1);
             Enemies.add(ESprite);
           }
           
           for(int i=0; i < 250; i += 125)
           {
             ESprite = new Hive(350+i, -30, 1, 1);
             Enemies.add(ESprite);
           }
         }
         
         /*if(frameCount == 400)
         {
           for(int i=0; i < 2; i += 1)
           {
             for(int j=0; j < 140; j += 70)
             {
               ESprite = new Hive(40-i-j, -30-j, 1, 2);
               Enemies.add(ESprite);
             }
           }
         }*/
         
         println(lev);
         lev = 2;
         return(lev);
}

void Level2(int lev)
{
             if(frameCount > 500)
           {
             float pos = random(20, 500);
             if(frameCount % 180 == 0)
             {
               for(int i=0; i < 200; i += 50)
               {
                  ESprite = new Guard(600+(i), pos, 3);
                  Enemies.add(ESprite);
               }
             }
           }
}