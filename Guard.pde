class Guard extends Enemy
{
  Guard()
  {
    this.x = 0;
    this.y = -100;
  }

  Guard(float x, float y, int type, int p, int lives, boolean dead, boolean shot, int strtpos)
  {
    this.x = x;
    this.y = y;
    this.type = type;
    this.p = p;
    this.lives = lives;
    this.dead = dead;
    this.shot = shot;
    this.strtpos = strtpos;

    CreateGuard();
  }
}