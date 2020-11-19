void gameDraw()
{
  background(0, 0, 255);
  
  bGameover.show();
  bPause.show();
}

void gameKP()
{
  
}

void gameMR()
{
  if(bGameover.mouseOver())
    mode = GAMEOVER;
  if(bPause.mouseOver())
    mode = PAUSE;
}
  
