class Enemy
{
  PShape Hive;
  PShape Guard;
  PShape Patriot;
  PShape Boss;
  int type, p, strtpos;
  float x, y, LBulpos, RBulpos;
  float dir = 2;
  boolean check, dead;

  void CreateHive()                            //Create Hive
  {
    Hive = createShape(GROUP);

    PShape body = createShape();
    body.beginShape();
    body.fill(130, 30, 120);
    body.vertex(0, -15); //-100 -25
    body.vertex(35, -15);
    body.vertex(35, 5);
    body.vertex(5, 25);
    body.vertex(-15, 25);
    body.vertex(-35, 5);
    body.vertex(-35, -15);
    body.endShape(CLOSE);

    PShape leftwing = createShape();
    leftwing.beginShape();
    leftwing.fill(130, 30, 120);
    leftwing.vertex(-25, -25);
    leftwing.vertex(-45, -25);
    leftwing.vertex(-60, 0);
    leftwing.vertex(-35, 35);
    leftwing.vertex(-25, 35);
    leftwing.endShape(CLOSE);

    PShape rightwing = createShape();
    rightwing.beginShape();
    rightwing.fill(130, 30, 120);
    rightwing.vertex(15, -25);
    rightwing.vertex(35, -25);
    rightwing.vertex(50, 0);
    rightwing.vertex(25, 35);
    rightwing.vertex(15, 35);
    rightwing.endShape(CLOSE);

    PShape cockpit = createShape();
    cockpit.beginShape();
    cockpit.vertex(-20, 5);
    cockpit.vertex(10, 5);
    cockpit.vertex(10, 10);
    cockpit.vertex(0, 20);
    cockpit.vertex(-10, 20);
    cockpit.vertex(-20, 10);
    cockpit.endShape(CLOSE);

    Hive.addChild(body);
    Hive.addChild(leftwing);
    Hive.addChild(rightwing);
    Hive.addChild(cockpit);
  }

  void CreatePatriot()                              //Create Patriot
  {
    Patriot = createShape(GROUP);

    PShape body = createShape();
    body.beginShape();
    body.fill(130, 30, 120);
    body.vertex(0, -40); //-100, -40
    body.vertex(-20, -20);
    body.vertex(-20, 20);
    body.vertex(0, 40);
    body.vertex(20, 20);
    body.vertex(20, -20);
    body.endShape(CLOSE);

    PShape leftwing = createShape();
    leftwing.beginShape();
    leftwing.fill(130, 30, 120);
    leftwing.vertex(-20, -10);
    leftwing.vertex(-45, -10);
    leftwing.vertex(-50, -20);
    leftwing.vertex(-50, 15);
    leftwing.vertex(-20, 15);
    leftwing.endShape(CLOSE);

    PShape rightwing = createShape();
    rightwing.beginShape();
    rightwing.fill(130, 30, 120);
    rightwing.vertex(20, -10);
    rightwing.vertex(45, -10);
    rightwing.vertex(50, -20);
    rightwing.vertex(50, 15);
    rightwing.vertex(20, 15);
    rightwing.endShape(CLOSE);

    PShape leftgun = createShape();
    leftgun.beginShape();
    leftgun.fill(100);
    leftgun.vertex(-35, 15);
    leftgun.vertex(-35, 25);
    leftgun.vertex(-42, 25);
    leftgun.vertex(-42, 15);
    leftgun.endShape(CLOSE);

    PShape rightgun = createShape();
    rightgun.beginShape();
    rightgun.fill(100);
    rightgun.vertex(35, 15);
    rightgun.vertex(35, 25);
    rightgun.vertex(43, 25);
    rightgun.vertex(43, 15);
    rightgun.endShape(CLOSE);

    PShape cockpit = createShape(ELLIPSE, 0, 10, 10, 30);

    Patriot.addChild(body);
    Patriot.addChild(leftwing);
    Patriot.addChild(rightwing);
    Patriot.addChild(leftgun);
    Patriot.addChild(rightgun);
    Patriot.addChild(cockpit);
  }

  void CreateGuard()                         //Create Guard
  {
    Guard = createShape(GROUP);
    fill(130, 30, 120);
    PShape body = createShape(ELLIPSE, 0, 0, 60, 60);
    PShape rightweapon = createShape(ARC, 18, 25, 30, 30, 15, 25, HALF_PI);
    PShape leftweapon = createShape(ARC, -18, 25, 30, 30, 15, 25, HALF_PI);
    fill(255);
    PShape cockpit = createShape(ELLIPSE, 0, 15, 25, 20);

    PShape leftengine = createShape();
    leftengine.beginShape();
    leftengine.fill(100);
    leftengine.vertex(-15, -10);
    leftengine.vertex(-25, -10);
    leftengine.vertex(-35, -35);
    leftengine.vertex(-20, -35);
    leftengine.endShape(CLOSE);

    PShape rightengine = createShape();
    rightengine.beginShape();
    rightengine.fill(100);
    rightengine.vertex(15, -10);
    rightengine.vertex(25, -10);
    rightengine.vertex(35, -35);
    rightengine.vertex(20, -35);
    rightengine.endShape(CLOSE);

    PShape leftgun = createShape();
    leftgun.beginShape();
    leftgun.fill(100);
    leftgun.vertex(-25, 20);
    leftgun.vertex(-40, 40);
    leftgun.vertex(-32, 45);
    leftgun.vertex(-17, 26);
    leftgun.endShape();

    PShape rightgun = createShape();
    rightgun.beginShape();
    rightgun.fill(100);
    rightgun.vertex(25, 20);
    rightgun.vertex(40, 40);
    rightgun.vertex(32, 45);
    rightgun.vertex(17, 26);
    rightgun.endShape();

    Guard.addChild(leftengine);
    Guard.addChild(rightengine);
    Guard.addChild(leftgun);
    Guard.addChild(rightgun);
    Guard.addChild(rightweapon);
    Guard.addChild(leftweapon);
    Guard.addChild(body);
    Guard.addChild(cockpit);
  }

  void CreateBoss()
  {
    Boss = createShape(GROUP);
    fill(113, 66, 66);
    PShape body = createShape(ELLIPSE, 0, 0, 150, 150);
    fill(255);
    PShape eye = createShape(ELLIPSE, 0, 20, 90, 70);
    fill(120, 150, 230);
    PShape pupil = createShape(ELLIPSE, 0, 20, 30, 30);

    Boss.addChild(body);
    Boss.addChild(eye);
    Boss.addChild(pupil);
  }


  void Render()
  {    
    if (type == 1 && dead == false)
    {
      shape(Hive, x, y);
    }
    if (type == 2 && dead == false)
    {
      shape(Patriot, x, y);
    }
    if (type == 3 && dead == false)
    {
      shape(Guard, x, y);
    }
    if (type == 4 && dead == false)
    {
      shape(Boss, x, y);
    }
  }

  void Update()
  {
    if (type == 1)
    {
      switch(p)
      {
      case 1: 
        y = TopDown(y);
        break;

      case 2: 
        y = ZigZag(x, y, check);
        break;
      default: 
        break;
      }

      if (y > 820)
      {
        Enemies.remove(this);
      }
    } else if (type == 2 && dead == false)
    {

      switch(p)
      {
      case 1: 
        y = TopDown(y);
        break;
      case 2: 
        y = ZigZag(x, y, check);
        break;
      default: 
        break;
      }

      y = Bullet(x, y, type);

      if ( y > height )
      {
        Enemies.remove(this);
      }
    } else if (type == 3 && dead == false)
    {
      //x = x - 2;
      switch(p)
      {
      case 1: 
        y = TopDown(y);
        break;
      case 2: 
        y = ZigZag(x, y, check);
        break;
      case 3: 
        Guarding(x, strtpos);
      default: 
        break;
      }

      y = Bullet(x, y, type);

      if (x < -100|| x > 750)
      {
        Enemies.remove(this);
      }
    } else if (type == 4)
    {
      Boss(x);
    }
  }




  float TopDown(float ypos)
  {
    ypos = ypos + 2;
    return(ypos);
  }

  float ZigZag(float xpos, float ypos, boolean c)
  { 
    if (x > 700 && c == false)
    {
      dir = -dir;
      c = true;
    }

    if (x > 500 || x < -50)
    {
      dir = -dir;
    }

    x = xpos + dir;
    ypos = ypos + 2;

    return(ypos);
  }

  void Guarding(float xpos, int start)
  {
    if (start == 1)
    {
      dir = -dir;
    }

    x = xpos + dir;
  }

  void Boss(float xpos)
  {
    if (xpos < 70 || xpos > 550 )
    {
      dir = -dir;
    }

    x = xpos + dir;
  }

    float Bullet(float xpos, float ypos, int t)
    {
      float ybulpos;


      if (t == 3)
      {
        LBulpos = xpos - 35;
        RBulpos = xpos + 35;
        ybulpos = ypos + 35;
      } else
      {
        LBulpos = xpos - 38.5;
        RBulpos = xpos + 38.5;
        ybulpos = ypos;
      }

      if ( frameCount % 30 == 0 )
      {
        EnemyBullet EB = new EnemyBullet(LBulpos, RBulpos, ybulpos);
        EBullets.add(EB);
      }

      return(ypos);
    }
  }