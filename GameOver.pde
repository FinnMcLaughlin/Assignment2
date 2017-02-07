class GameOver
{
  int score;
  
  GameOver(int score)
  {
    this.score = score;
    
    GameOverScreen(score);
    
  }
  
  void GameOverScreen(int s)
  {
    stroke(255);
    textSize(60);
    text("Score", 125, 250);
    text(s, 150, 300);
  }
}