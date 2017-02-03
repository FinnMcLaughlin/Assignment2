class Enemy
{
  PShape Hive;
  PShape Guard;
  PShape Patriot;
  PShape Boss;
  int type, p;
  float x, y, LBulpos, RBulpos;
  float dir = 2;
  boolean check, dead;
  
  void CreateHive()                            //Create Hive
  {
   Hive = createShape(GROUP);
   
   PShape body = createShape();
   body.beginShape();
   body.fill(130, 30, 120);
   body.vertex(100, 10);
   body.vertex(135, 10);
   body.vertex(135, 30);
   body.vertex(105, 50);
   body.vertex(85, 50);
   body.vertex(65, 30);
   body.vertex(65, 10);
   body.endShape(CLOSE);
   
   PShape leftwing = createShape();
   leftwing.beginShape();
   leftwing.fill(130, 30, 120);
   leftwing.vertex(75, 0);
   leftwing.vertex(55, 0);
   leftwing.vertex(40, 25);
   leftwing.vertex(65, 60);
   leftwing.vertex(75, 60);
   leftwing.endShape(CLOSE);
   
   PShape rightwing = createShape();
   rightwing.beginShape();
   rightwing.fill(130, 30, 120);
   rightwing.vertex(115, 0);
   rightwing.vertex(135, 0);
   rightwing.vertex(150, 25);
   rightwing.vertex(125, 60);
   rightwing.vertex(115, 60);
   rightwing.endShape(CLOSE);
   
   PShape cockpit = createShape();
   cockpit.beginShape();
   cockpit.vertex(80, 30);
   cockpit.vertex(110, 30);
   cockpit.vertex(110, 35);
   cockpit.vertex(100, 45);
   cockpit.vertex(90, 45);
   cockpit.vertex(80, 35);
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
    body.vertex(100, 0);
    body.vertex(80, 20);
    body.vertex(80, 60);
    body.vertex(100, 80);
    body.vertex(120, 60);
    body.vertex(120, 20);
    body.endShape(CLOSE);
    
    PShape leftwing = createShape();
    leftwing.beginShape();
    leftwing.fill(130, 30, 120);
    leftwing.vertex(80, 30);
    leftwing.vertex(55, 30);
    leftwing.vertex(50, 20);
    leftwing.vertex(50, 55);
    leftwing.vertex(80, 55);
    leftwing.endShape(CLOSE);
    
    PShape rightwing = createShape();
    rightwing.beginShape();
    rightwing.fill(130, 30, 120);
    rightwing.vertex(120, 30);
    rightwing.vertex(145, 30);
    rightwing.vertex(150, 20);
    rightwing.vertex(150, 55);
    rightwing.vertex(120, 55);
    rightwing.endShape(CLOSE);
    
    PShape leftgun = createShape();
    leftgun.beginShape();
    leftgun.fill(100);
    leftgun.vertex(65, 55);
    leftgun.vertex(65, 65);
    leftgun.vertex(58, 65);
    leftgun.vertex(58, 55);
    leftgun.endShape(CLOSE);
    
    PShape rightgun = createShape();
    rightgun.beginShape();
    rightgun.fill(100);
    rightgun.vertex(135, 55);
    rightgun.vertex(135, 65);
    rightgun.vertex(143, 65);
    rightgun.vertex(143, 55);
    rightgun.endShape(CLOSE);
    
    PShape cockpit = createShape(ELLIPSE, 100, 50, 10, 30);
    
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
   PShape body = createShape(ELLIPSE, 100, 0, 60, 60);
   PShape rightweapon = createShape(ARC, 118, 25, 30, 30, 15, 25, HALF_PI);
   PShape leftweapon = createShape(ARC, 82, 25, 30, 30, 15, 25, HALF_PI);
   fill(255);
   PShape cockpit = createShape(ELLIPSE, 100, 15, 25, 20);
   
   PShape leftengine = createShape();
   leftengine.beginShape();
   leftengine.fill(100);
   leftengine.vertex(85, -10);
   leftengine.vertex(75, -10);
   leftengine.vertex(65, -35);
   leftengine.vertex(80, -35);
   leftengine.endShape(CLOSE);
   
   PShape rightengine = createShape();
   rightengine.beginShape();
   rightengine.fill(100);
   rightengine.vertex(115, -10);
   rightengine.vertex(125, -10);
   rightengine.vertex(135, -35);
   rightengine.vertex(120, -35);
   rightengine.endShape(CLOSE);
   
   PShape leftgun = createShape();
   leftgun.beginShape();
   leftgun.fill(100);
   leftgun.vertex(75, 20);
   leftgun.vertex(60, 40);
   leftgun.vertex(68, 45);
   leftgun.vertex(83, 26);
   leftgun.endShape();

   PShape rightgun = createShape();
   rightgun.beginShape();
   rightgun.fill(100);
   rightgun.vertex(125, 20);
   rightgun.vertex(140, 40);
   rightgun.vertex(132, 45);
   rightgun.vertex(117, 26);
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
    PShape body = createShape(ELLIPSE, 100, 0, 150, 150);
    fill(255);
    PShape eye = createShape(ELLIPSE, 100, 20, 90, 70);
    fill(120, 150, 230);
    PShape pupil = createShape(ELLIPSE, 100, 20, 30, 30);
    
    Boss.addChild(body);
    Boss.addChild(eye);
    Boss.addChild(pupil);
  }
  
  
  void Render()
  {    
    if(type == 1)
    {
      shape(Hive, x, y);
    }
    if(type == 2)
    {
      shape(Patriot, x, y);
    }
    if(type == 3)
    {
      shape(Guard, x, y);
    }
    if(type == 4 && dead == false)
    {
      shape(Boss, x, y);
    }
  }
  
  void Update()
  {
      if(type == 1)
      {
        switch(p)
        {
          case 1: y = TopDown(y);
                  break;
          
          case 2: y = ZigZag(x, y, check);
                  break;
          default: break;
        }
        
        if(y > height)
        {
          Enemies.remove(this);
        }
      }
      
      else if(type == 2)
      {

        switch(p)
        {
          case 1: y = TopDown(y);
                  break;
          case 2: y = ZigZag(x, y, check);
                  break;
          default: break;
        }
          
          y = Bullet(x, y, type);
    
          if( y > height )
          {
            Enemies.remove(this);
          }
        
      }
      
      else if(type == 3)
      {
        //x = x - 2;
        switch(p)
        {
          case 1: y = TopDown(y);
                  break;
          case 2: y = ZigZag(x, y, check);
                  break;
          default: break;
        }
        
        y = Bullet(x, y, type);
        
        if(x < 0)
        {
          Enemies.remove(this);
        }
      }
      else if(type == 4)
      {
        ZigZag(x, y, check);
      }
      
  }
  
  
  
  
  float TopDown(float ypos)
  {
    ypos = ypos + 2;
    return(ypos);
  }
  
  float ZigZag(float xpos, float ypos, boolean c)
  { 
    if(x > 700 && c == false)
    {
     dir = -dir;
     c = true;
    }
    
    if(x > 500 || x < -50)
    {
      dir = -dir;
    }
    
    x = xpos + dir;
    ypos = ypos + 2;
    
    return(ypos);
  }
  
  float Bullet(float xpos, float ypos, int t)
  {
    
    if(t == 2)
    {
      LBulpos = xpos + 62;
      RBulpos = xpos + 139;
    }
    else
    {
      LBulpos = xpos + 62;
      RBulpos = xpos + 139;
    }
    
    if( frameCount % 30 == 0 )
    {
      EnemyBullet EB = new EnemyBullet(LBulpos, RBulpos, ypos + 60);
      EBullets.add(EB);
    }
          
     return(ypos);
  }
}