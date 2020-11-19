void pauseDraw()
{
  background(0);
  
  bResume.show();
  bQuit.show();
}

void pauseKP()
{
  
}

void pauseMR()
{
  if(bResume.mouseOver())
    mode = GAME;
  if(bQuit.mouseOver())
    exit();
}
