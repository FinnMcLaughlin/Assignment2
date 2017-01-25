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
   body.vertex(50, 10);
   body.vertex(150, 10);
   body.vertex(150, 30);
   body.vertex(130, 50);
   body.vertex(70, 50);
   body.vertex(50, 30);
   body.endShape(CLOSE);
   
   PShape leftwing = createShape();
   leftwing.vertex(60, 0);
   leftwing.vertex(40, 0);
   leftwing.vertex(25, 25);
   leftwing.vertex(50, 60);
   leftwing.vertex(60, 60);
   leftwing.endShape(CLOSE);
   
   PShape rightwing = createShape();
   rightwing.vertex(140, 0);
   rightwing.vertex(170, 0);
   rightwing.vertex(185, 25);
   rightwing.vertex(150, 60);
   rightwing.vertex(160, 60);
   rightwing.endShape(CLOSE);
   
   Hive.addChild(body);
   Hive.addChild(leftwing);
   Hive.addChild(rightwing);
  }
  
  void Render()
  {
    shape(Hive, 100, 100); 
  }
}