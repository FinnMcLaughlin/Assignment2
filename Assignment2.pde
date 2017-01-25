Player player1;

void setup()
{
  size(700, 600);
  player1 = new Player(300);
}
    
void draw()
{
  background(120);
  player1.Render();  
}