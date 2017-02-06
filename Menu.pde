class Menu
{
  PFont MFont = createFont("Individigital.ttf", 60);
  float starposx, starposy;
  boolean menu;
      
  Menu(boolean menu)
  {
   this.menu = menu;
  }
  
  void MenuStart()
  {
    textFont(MFont);
    text("UMIDIUM", 80, 200);
  }
}