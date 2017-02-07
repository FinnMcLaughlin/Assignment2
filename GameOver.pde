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
    textSize(60);
    text("Score", 140, 250);
    text(s, 175, 300);
    
    textSize(35);
    text("Main Menu", 125, 350);
  }
}