class Player
{   
    int x;
    PShape sprite;
    
    Player(int x)
    {
      this.x = x;
      
      Create();
    }
    
    void Create()
    {
      sprite = createShape(GROUP);
      
      PShape body = createShape();
      body.beginShape();
      body.fill(80, 180, 180);
      body.vertex(100, 0);
      body.vertex(75, 60);
      body.vertex(90, 60);
      body.vertex(50, 120);
      body.vertex(75, 150);
      body.vertex(100, 135);
      body.vertex(125, 150);
      body.vertex(150, 120);
      body.vertex(110, 60);
      body.vertex(125, 60);
      body.vertex(100, 0);
      body.endShape(CLOSE);
      
      PShape gun = createShape();
      gun.beginShape();
      gun.fill(80);
      gun.vertex(50, 120);
      gun.vertex(50, 85);
      gun.vertex(60, 85);
      gun.vertex(60, 105);
      gun.endShape(CLOSE);
      
      PShape gun_r = createShape();
      gun_r.beginShape();
      gun_r.fill(80);
      gun_r.vertex(150, 120);
      gun_r.vertex(150, 85);
      gun_r.vertex(140, 85);
      gun_r.vertex(140, 105);
      gun_r.endShape(CLOSE);
      
      PShape engine = createShape();
      engine.beginShape();
      engine.fill(150);
      engine.vertex(100, 135);
      engine.vertex(90, 140);
      engine.vertex(90, 150);
      engine.vertex(110, 150);
      engine.vertex(110, 140);
      engine.endShape(CLOSE);
      
      PShape cockpit = createShape();
      cockpit.beginShape();
      cockpit.fill(245, 230, 85);
      cockpit.vertex(100, 30);
      cockpit.vertex(90, 40);
      cockpit.vertex(100, 50);
      cockpit.vertex(110, 40);
      cockpit.endShape(CLOSE);
      
      sprite.addChild(body);
      sprite.addChild(gun);
      sprite.addChild(gun_r);
      sprite.addChild(engine);
      sprite.addChild(cockpit);
      
    }
    
   void Render()
   {
     shape(sprite, x, 400);
   }
}