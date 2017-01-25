Player player1;

void setup()
{
  size(500, 650);
  player1 = new Player(400);
}
    
void draw()
{
  background(120);
  player1.Render();
  player1.Update();
}