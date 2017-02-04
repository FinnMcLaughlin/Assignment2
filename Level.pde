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
    //float pos;
    //if young metro dont trust you
    // he gonna shoot you
    /*if(frameCount == 60)
     {
     float rand = random(100, 600);
     ESprite = new Boss(310, 100, 4, 1, false);
     Enemies.add(ESprite);
     //ESprite = new Guard(650, rand, 3, 3, false, 1);
     //Enemies.add(ESprite);
     }*/




    switch(level)
    {
    case 1: 
      level = Level1(level);
      break;

    case 2: 
      Level2(level);
      break;
    default: 
      println("Error");
      break;
    }
  }


  int Level1(int lev)
  {
    if (frameCount == 60)
    {
      ESprite = new Hive(310, -30, 1, 1, false);
      Enemies.add(ESprite);
      ESprite = new Hive(155, -70, 1, 1, false);
      Enemies.add(ESprite);
      ESprite = new Hive(465, -70, 1, 1, false);
      Enemies.add(ESprite);
    }

    if (frameCount == 180)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -30, 1, 1, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 240)
    {
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(15+i, -50, 1, 1, false);
        Enemies.add(ESprite);
      }
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(265+i, -250, 1, 1, false);
        Enemies.add(ESprite);
      }
      for (int i=50; i < 375; i += 125)
      {
        ESprite = new Hive(15+i, -450, 1, 1, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 480)
    {
      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(15+i, -100, 1, 1, false);
        Enemies.add(ESprite);
      }

      for (int i=50; i < 250; i += 125)
      {
        ESprite = new Hive(390+i, -100, 1, 1, false);
        Enemies.add(ESprite);
      }
    }
    
    if(frameCount == 540)
    {
     for(int i=50; i < 850; i += 125)
     {
       ESprite = new Hive(15+i, -50-i, 1, 2, false);
       Enemies.add(ESprite);
     }
    }
    
    if (frameCount == 720)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -200, 1, 1, false);
        Enemies.add(ESprite);
      }
    }

    if (frameCount == 840)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -150, 1, 1, false);
        Enemies.add(ESprite);
      }
    }
    
    if (frameCount == 960)
    {
      for (int i=50; i < 625; i += 125)
      {
        ESprite = new Hive(15+i, -150, 1, 1, false);
        Enemies.add(ESprite);
      }
      
      lev = 2;
    }
    return(lev);
  }

  void Level2(int lev)
  {
    
  }
}