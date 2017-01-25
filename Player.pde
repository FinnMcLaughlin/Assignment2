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
      
      
    }
    
   void Render()
   {
     shape(sprite, x, 400);
   }
}