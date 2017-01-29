class Enemy
{
  PShape Hive;
  PShape Guard;
  PShape Patriot;
  PShape Hunter;
  
  Enemy()
  {
    CreateHive(); 
    CreatePatriot();
    CreateGuard();
  }
  
  void CreateHive()                            //Create Hive
  {
   Hive = createShape(GROUP);
   
   PShape body = createShape();
   body.beginShape();
   body.fill(130, 30, 120);
   body.vertex(50, 10);
   body.vertex(110, 10);
   body.vertex(110, 30);
   body.vertex(90, 50);
   body.vertex(70, 50);
   body.vertex(50, 30);
   body.endShape(CLOSE);
   
   PShape leftwing = createShape();
   leftwing.beginShape();
   leftwing.fill(130, 30, 120);
   leftwing.vertex(60, 0);
   leftwing.vertex(40, 0);
   leftwing.vertex(25, 25);
   leftwing.vertex(50, 60);
   leftwing.vertex(60, 60);
   leftwing.endShape(CLOSE);
   
   PShape rightwing = createShape();
   rightwing.beginShape();
   rightwing.fill(130, 30, 120);
   rightwing.vertex(100, 0);
   rightwing.vertex(120, 0);
   rightwing.vertex(135, 25);
   rightwing.vertex(110, 60);
   rightwing.vertex(100, 60);
   rightwing.endShape(CLOSE);
   
   PShape cockpit = createShape();
   cockpit.beginShape();
   cockpit.vertex(65, 30);
   cockpit.vertex(95, 30);
   cockpit.vertex(95, 35);
   cockpit.vertex(85, 45);
   cockpit.vertex(75, 45);
   cockpit.vertex(65, 35);
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
  
  
  void Render()
  {
    shape(Hive, 100, 100);
    shape(Patriot, 100, 300);
    shape(Guard, 400, 100);
  }
}