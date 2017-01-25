class Enemy
{
  PShape Hive;
  
  Enemy()
  {
    CreateHive();
  }
  
  void CreateHive()
  {
   Hive = createShape(GROUP);
   
   PShape body = createShape();
   body.beginShape();
   body.fill(130, 30, 120);
   body.vertex(50, 10);
   body.vertex(150, 10);
   body.vertex(150, 30);
   body.vertex(130, 50);
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
   rightwing.vertex(140, 0);
   rightwing.vertex(160, 0);
   rightwing.vertex(180, 25);
   rightwing.vertex(150, 60);
   rightwing.vertex(140, 60);
   rightwing.endShape(CLOSE);
   
   PShape cockpit = createShape();
   cockpit.beginShape();
   cockpit.vertex(80, 30);
   cockpit.vertex(120, 30);
   cockpit.vertex(120, 35);
   cockpit.vertex(105, 45);
   cockpit.vertex(95, 45);
   cockpit.vertex(80, 35);
   cockpit.endShape(CLOSE);
   
   Hive.addChild(body);
   Hive.addChild(leftwing);
   Hive.addChild(rightwing);
   Hive.addChild(cockpit);
  }
  
  void Render()
  {
    shape(Hive, 100, 100); 
  }
}