class Menu
{
  PFont MFont = createFont("Individigital.ttf", 60);
  PShape line;
  float starposx, starposy;
  boolean menu;
      
  Menu(boolean menu)
  {
   this.menu = menu;
   
   CreateLine();
  }
  
  void MenuStart()
  {
    textFont(MFont);
    text("UMIDIUM", 80, 200);
    shape(line, 90, 205);
    
    textSize(35);
    text("Start", 200, 300);
    text("Options", 180, 350);
  }
  
  void CreateLine()
  {
   line = createShape();
   line.beginShape();
   line.vertex(0, 0);
   line.vertex(310, 0);
   line.vertex(320, 10);
   line.vertex(10, 10);
   line.endShape();
  }
}