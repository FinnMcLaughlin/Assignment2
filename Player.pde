class Player
{   
  int x;
  float gunlpos = 265;
  float gunrpos = 355;
  PShape sprite;

  Player(int x)
  {
    this.x = x;
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

    int EBullsize = EBullets.size();
    for (int i = EBullsize - 1; i >= 0; i--)
    {
      EnemyBullet EnBCheck = EBullets.get(i);
      if (dist(EnBCheck.LBullet, EnBCheck.y, x, 650) < 30 || dist(EnBCheck.RBullet, EnBCheck.y, x, 650) < 30)
      {
        println("Hit");
      } else
      {
        //println(x);
      }
    }

    int Enemysize = Enemies.size();
    for (int i = Enemysize - 1; i >= 0; i--)
    {
      Enemy EnCheck = Enemies.get(i);

      if ( dist(EnCheck.x, EnCheck.y, x, 725) < 50 )
      {
        println("Hit");
      } else
      {
        //println("Not Hit");
      }
    }

    if ( dist(laspos, 725, x, 725) < 50 && laser == true)
    {
      println("Hit");
    } else
    {
    }

    /*if ( frameCount % 30 == 0 )
    {
      PlayerBullet PB = new PlayerBullet(gunlpos, gunrpos, 725);
      PBullets.add(PB);
    }*/
  }
}