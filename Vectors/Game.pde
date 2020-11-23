boolean up, down, left, right;
ArrayList<Bullet> bullets = new ArrayList();

void gameSetup()
{
  player.init();
}

void gameDraw()
{
  background(0);
  
  bGameover.show();
  bPause.show();
  
  player.show();
  player.act();
  
  for(int i = 0; i < bullets.size(); i++)
  {
    Bullet bullet = bullets.get(i);
    
    if(bullet.hp > 0)
    {
      bullet.show();
      bullet.act();
    }
    else
    {
      bullets.remove(bullet);
      i--;
    }
  }
  
  //bounds
  if(player.pos.x > width + player.size / 2)
    player.pos.x = 0 - player.size / 2;
  else if(player.pos.x < 0 - player.size / 2)
    player.pos.x = width + player.size / 2;
  if(player.pos.y > height + player.size / 2)
    player.pos.y = 0 - player.size / 2;
  else if(player.pos.y < 0 - player.size / 2)
    player.pos.y = height + player.size / 2;
}

void gameKP()
{
  switch(keyCode)
  {
    case UP:
      player.moveF = true;
      break;
    case DOWN:
      player.moveB = true;
      break;
    case LEFT:
      player.turnL = true;
      break;
    case RIGHT:
      player.turnR = true;
      break;
  }
  
  switch(key)
  {
    case ' ':
      player.shoot = true;
      break;
  }
}

void gameKR()
{
  switch(keyCode)
  {
    case UP:
      player.moveF = false;
      break;
    case DOWN:
      player.moveB = false;
      break;
    case LEFT:
      player.turnL = false;
      break;
    case RIGHT:
      player.turnR = false;
      break;
  }
  
  switch(key)
  {
    case ' ':
      player.shoot = false;;
      break;
  }
}

void gameMR()
{
  if(bGameover.mouseOver())
    mode = GAMEOVER;
  if(bPause.mouseOver())
    mode = PAUSE;
}
