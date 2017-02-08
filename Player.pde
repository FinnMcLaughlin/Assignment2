class Player
{   
  int x, lives;
  float gunlpos = 265;
  float gunrpos = 355;
  boolean regen = false;
  PShape sprite;

  Player(int x, int lives)
  {
    this.x = x;
    this.lives = lives;
    Create();
  }


  void Create()
  {
    sprite = createShape(GROUP);

    PShape body = createShape();
    body.beginShape();
    body.fill(80, 180, 180);
    body.vertex(0, 0);
    body.vertex(-25, 60);
    body.vertex(-10, 60);
    body.vertex(-50, 120);
    body.vertex(-25, 150);
    body.vertex(0, 135);
    body.vertex(25, 150);
    body.vertex(50, 120);
    body.vertex(10, 60);
    body.vertex(25, 60);
    body.vertex(0, 0);
    body.endShape(CLOSE);

    PShape gun = createShape();
    gun.beginShape();
    gun.fill(80);
    gun.vertex(-50, 120);
    gun.vertex(-50, 85);
    gun.vertex(-40, 85);
    gun.vertex(-40, 105);
    gun.endShape(CLOSE);

    PShape gun_r = createShape();
    gun_r.beginShape();
    gun_r.fill(80);
    gun_r.vertex(50, 120);
    gun_r.vertex(50, 85);
    gun_r.vertex(40, 85);
    gun_r.vertex(40, 105);
    gun_r.endShape(CLOSE);

    PShape engine = createShape();
    engine.beginShape();
    engine.fill(150);
    engine.vertex(0, 135);
    engine.vertex(-10, 140);
    engine.vertex(-10, 150);
    engine.vertex(10, 150);
    engine.vertex(10, 140);
    engine.endShape(CLOSE);

    PShape cockpit = createShape();
    cockpit.beginShape();
    cockpit.fill(245, 230, 85);
    cockpit.vertex(0, 30);
    cockpit.vertex(-10, 40);
    cockpit.vertex(0, 50);
    cockpit.vertex(10, 40);
    cockpit.endShape(CLOSE);

    sprite.addChild(body);
    sprite.addChild(gun);
    sprite.addChild(gun_r);
    sprite.addChild(engine);
    sprite.addChild(cockpit);
  }

  void Render()
  {
    scale(.8);
    shape(sprite, x, 650);
  }

  void Update()
  {
    if ( keyPressed )
    {
      //Keep track of the gun position
      if ( key == 'a' && x > 50 )
      {
        x = x - 5;
        gunlpos = gunlpos - 5;
        gunrpos = gunrpos - 5;
      }
      if ( key == 'd' && x < 570 )
      {
        x = x + 5;
        gunlpos = gunlpos + 5;
        gunrpos = gunrpos + 5;
      }
    }

    int EBullsize = EBullets.size();            //Gets Enemy Bullet array size
    for (int i = EBullsize - 1; i >= 0; i--)     //Goes through each element
    {                                            
      EnemyBullet EnBCheck = EBullets.get(i);
      //Checks the distance between the enemy bullets and the player
      if ( (dist(EnBCheck.LBullet, EnBCheck.y, x, 650) < 40 || dist(EnBCheck.RBullet, EnBCheck.y, x, 650) < 40) && regen == false)
      {
        lives -= 1; //If distance between enemy bullets and player less than 40 and regeneration is false, remove a life from player
        regen = true; //Turn regeneration on
      }
    }

    int Enemysize = Enemies.size();          //Get Enemy array size
    for (int i = Enemysize - 1; i >= 0; i--)  //Goes through each element
    {
      Enemy EnCheck = Enemies.get(i);
      //Check the distance between the enemy and the player
      if ( dist(EnCheck.x, EnCheck.y, x, 725) < 50 && regen == false)
      {
        lives -= 1; //If distance is less than 40 and regeneration is false, remove a life from player
        regen = true; //Turn regeneration on
      }
    }

    //Check distance between laser and player, when laser is true
    if ( dist(laspos, 725, x, 725) < 50 && laser == true && regen == false)
    {
      lives -= 1; //If distance is less than 50 and regeneration is false, remove a life from player 
      regen = true; //Turn regeneration on
    }
    
    //Produce a new bullet every 10 frames and add to Player Bullet array
    if ( frameCount % 10 == 0 )
    {
      PlayerBullet PB = new PlayerBullet(gunlpos, gunrpos, 725, 3);
      PBullets.add(PB);
    }

    //If player lives drops to 0
    if (lives <= 0)
    {
      gameOver = true;
    }

    //Regeneration gives player a second before enemy can damage them again
    if (regen == true)
    {
      if (frameCount % 60 == 0)
      {
        regen = false;
      }
    }

    //Keep tracks of player lives to generate health bar
    PLives = lives;
  }
}