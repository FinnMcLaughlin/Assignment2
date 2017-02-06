Enemy ESprite;

class Level
{
  int level;
  //Enemy ESprite;

  Level(int level)
  {
    this.level = level;
  }

  void LevelStart()
  {
    switch(level)
    {
    case 1: 
      level = Level1(level);
      break;

    case 2: 
      level = Level2(level);
      break;
    case 3:
      level = Final(level);
    default: 
      break;
    }
    
    L = level;
  }


  int Level1(int lev)
  {
    if (frameCount == 60)
    {
      ESprite = new Hive(310, -30, 1, 1, 50, false, false);
      Enemies.add(ESprite);
      ESprite = new Hive(155, -70, 1, 1, 50, false, false);
      Enemies.add(ESprite);
      ESprite = new Hive(465, -70, 1, 1, 50, false, false);
      Enemies.add(ESprite);
    }

    if (frameCount == 180)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -30, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 240)
    {
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(15+i, -50, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(265+i, -250, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(15+i, -450, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 480)
    {
      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(15+i, -100, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(390+i, -100, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 540)
    {
      for (int i=50; i < 850; i += 125)
      {
        ESprite = new Hive(15+i, -50-i, 1, 2, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 720)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -200, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 840)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -150, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 960)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -150, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      lev = 2;
    }
    return(lev);
  }

  int Level2(int lev)
  {
    if (frameCount == 1400)
    {
      println("LEVEL 2");
    }

    if (frameCount == 1460)
    {
      ESprite = new Patriot(310, -50, 2, 1, 30, false, false);
      Enemies.add(ESprite);
    }

    if (frameCount == 1580)
    {
      for (int i=50; i < 850; i += 400)
      {
        ESprite = new Patriot(60+i, -50, 2, 1, 30, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 1640)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -200, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 1760)
    {
      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(15+i, -100, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(390+i, -100, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 1000; i += 250)
      {
        ESprite = new Patriot(15+i, -250-i, 2, 2, 30, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 2120)
    {

      for (int i=50; i < 600; i += 215)
      {
        ESprite = new Hive(50+i, -50, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 200; i += 100)
      {
        ESprite = new Patriot(-100-i, -150-i, 2, 4, 30, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 200; i += 100)
      {
        ESprite = new Patriot(720+i, -150-i, 2, 4, 30, false, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 2300)
    {
      for (int i=50; i < 600; i += 420)
      {
        ESprite = new Hive(60+i, -50, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      ESprite = new Patriot(315, -50, 2, 1, 30, false, false);
      Enemies.add(ESprite);

      for (int i=50; i < 600; i += 420)
      {
        ESprite = new Patriot(50+i, -150, 2, 1, 30, false, false);
        Enemies.add(ESprite);
      }

      ESprite = new Hive(320, -150, 1, 1, 150, false, false);
      Enemies.add(ESprite);

      for (int i=50; i < 600; i += 420)
      {
        ESprite = new Hive(60+i, -250, 1, 1, 50, false, false);
        Enemies.add(ESprite);
      }

      ESprite = new Patriot(315, -250, 2, 1, 30, false, false);
      Enemies.add(ESprite);
    }

    if (frameCount % 2400 == 0)
    {
      for (int i=50; i < 400; i += 100)
      {
        ESprite = new Hive(-100-i, -150-i, 1, 4, 50, false, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 400; i += 100)
      {
        ESprite = new Hive(720+i, -150-i, 1, 4, 50, false, false);
        Enemies.add(ESprite);
      }

      ESprite = new Patriot(310, -550, 2, 1, 30, false, false);
      Enemies.add(ESprite);
      ESprite = new Patriot(155, -600, 2, 1, 30, false, false);
      Enemies.add(ESprite);
      ESprite = new Patriot(465, -600, 2, 1, 30, false, false);
      Enemies.add(ESprite);

      lev = 3;
    }

    return(lev);
  }
  
  
  int Final(int lev)
  {
    float pos;
    
    if(frameCount > 2750 && frameCount < 2999)
    {
      stroke(255);
      textSize(40);
      text("Final Level", 275,  310);
    }
    if(frameCount == 3000)
    {
      ESprite = new Boss(310, 125, 4, 1, 500, false);
      Enemies.add(ESprite);
    }
    
    if(frameCount % 300 == 0 && frameCount > 3000)
    {
      pos = random(225, 600);
      
      for(int i=50; i < 300; i += 75)
      {
        ESprite = new Guard(-50-i, pos, 3, 3, 15, false, false, -50);
        Enemies.add(ESprite);
      }
      
      pos = random(225, 600);
      
      for(int i=50; i < 300; i += 75)
      {
        ESprite = new Guard(650+i, pos, 3, 3, 15, false, false, 650);
        Enemies.add(ESprite);
      }
    }
    
    return(lev);
  }
}