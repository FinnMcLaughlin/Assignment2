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
    if (win == true) //If boss defeated
    {                 //Display Win Game Over screen 
      fill(0, 255, 0);
      textSize(60);
      text("YOU WIN", 60, 200);
      text("Score", 140, 300);
      text(s, 175, 350);

      textSize(35);
      text("Main Menu", 125, 400);
      fill(255);
    } 
    else
    {
      textSize(60);
      text("Score", 140, 250);
      text(s, 175, 300);

      textSize(35);
      text("Main Menu", 125, 350);
      fill(255);
    }
  }
}