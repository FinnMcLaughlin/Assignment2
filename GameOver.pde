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
    text(s, 200, 300);
  }
}