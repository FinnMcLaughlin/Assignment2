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
    //CreateHunter();
    CreateGuard();
  }
  
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
  
  /*void CreateHunter()
  {
   Hunter  = createShape(GROUP);
   
   PShape body = createShape(RECT, 70, 0, 60, 40);
   PShape leftwing = createShape();
   leftwing.beginShape();
   leftwing.
   leftwing.endShape(CLOSE);
   
   Hunter.addChild(body);
   Hunter.addChild(leftwing);
    
    
  }*/
  
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
  
  
  void Render()
  {
    shape(Hive, 100, 100);
    shape(Patriot, 100, 300);
    //shape(Hunter, 400, 300);
    shape(Guard, 100, 500);
  }
}