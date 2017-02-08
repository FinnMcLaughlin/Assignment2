import processing.sound.*;

Level level;
Player player1;
Menu start;
GameOver over;
SoundFile Menu, Main;

ArrayList<PlayerBullet> PBullets = new ArrayList<PlayerBullet>();
ArrayList<EnemyBullet> EBullets = new ArrayList<EnemyBullet>();
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
boolean laser = false, gameOver = false, win = false, menuMusic = true, mainMusic = false;
float laspos, pos;
int PLives, BLife, L, score = 0;

void setup()
{
  size(500, 650);
  player1 = new Player(310, 10);
  start = new Menu(true);
  level = new Level(4);

  Menu = new SoundFile(this, "Menu.mp3");
  Main = new SoundFile(this, "Main.mp3");
}

void draw()
{
  if (start.menu == true)//Main Menu
  {
    background(0);
    start.MenuStart();
  } 
  else if (gameOver == false)//Game Start
  {
    background(0);
    player1.Render();//Player Render and Update
    player1.Update();

    stroke(0);
    level.LevelStart();//Level Start

    //stroke(20, 100, 60);
    //line(0, 300, 510, 300);


    int Bullsize = PBullets.size();          //Gets size of Player Bullet array
    for (int i = Bullsize - 1; i >= 0; i--)   //Goes through each element in array
    {                                          //Gets each element, updates and renders
      PlayerBullet PB = PBullets.get(i);
      PB.Update();
      PB.Render();
    }

    int EBullsize = EBullets.size();        //Gets size of Enemy Bullet array
    for (int i = EBullsize - 1; i >= 0; i--) //Goes through each element in array
    {                                         //Gets each element, updates and renders
      EnemyBullet EB = EBullets.get(i);
      EB.Update();
      EB.Render();
    }

    int Enemysize = Enemies.size();        //Gets size of Enemy array
    for (int i = Enemysize - 1; i >= 0; i--)//Goes through each element in array
    {                                        //Gets each element, updates and renders
      Enemy E = Enemies.get(i);
      E.Update();
      E.Render();
    }

    if (laser == true)//draws laser
    {
      stroke(255, 0, 0);
      rect(laspos, 145, 20, 700);
    }



    HUD();//Heads Up Display
  } 
  else if (gameOver == true)//GameOver screen
  {
    over = new GameOver(score);
  }

  if (menuMusic == true)
  {
    Main.stop();//stop game music
    Menu.loop();//starts menu music
    menuMusic = false;//stops menu music being started again every frame
  } 
  else if (mainMusic == true)
  {
    Menu.stop();//stops menu music
    Main.cue(37);//starts game music 37 seconds in
    Main.loop();//starts game music
    mainMusic = false;//stops game music being started again every frame
  }
}

void HUD()
{
  int shipHealth;

  shipHealth = PLives * 10; //Generate length of health bar based on Player's lives

  //Score
  fill(0, 255, 0);
  textSize(20);
  text("Score:", 450, 765);
  text(score, 530, 765);

  //Health bar
  stroke(0);
  fill(255);
  rect(20, 750, 150, 20);
  fill(0, 255, 0);
  rect(20, 750, shipHealth*1.5, 20); 

  //Boss Health bar
  if (L == 3)
  {
    if (frameCount > 3000)
    {
      stroke(0);
      fill(255);
      rect(50, 20, 500, 20);
      fill(150, 0, 0);
      rect(50, 20, BLife, 20);
    }
  }
}

void mouseClicked()
{
  //Menu clicking
  if ( (mouseX > 200 && mouseX < 300) && (mouseY > 275 && mouseY < 300) && start.menu == true )
  {
    start.menu = false;//Starts game
    menuMusic = false;//Turns off menu music
    mainMusic = true;//starts game music
  }

  if ( (mouseX > 210 && mouseX < 290) && (mouseY > 325 && mouseY < 350) && start.menu == true )
  {
    exit();//Exit game
  }

  //GameOver clicking
  if ( (mouseX > 125 && mouseX < 365) && (mouseY > 320 && mouseY < 350) && gameOver == true && win == false)
  {
    start.menu = true;//Returns to menu
    gameOver = false;//Re-initialize gameOver
    mainMusic = false;//stop game music
    menuMusic = true;//start menu music
    win = false;//Re-initialize win
  } 
  else if ( (mouseX > 125 && mouseX < 365) && (mouseY > 370 && mouseY < 410) && gameOver == true && win == true)
  {
    start.menu = true;//Returns to menu
    gameOver = false;//Re-initialize gameOver
    mainMusic = false;//stop game music
    menuMusic = true;//start menu music
    win = false;//Re-initialize win
  }
}