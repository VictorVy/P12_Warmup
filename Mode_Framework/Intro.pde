void introDraw()
{
  background(0, 255, 0);
  
  bStart.show();
  bQuit.show();
}

void introKP()
{
  
}

void introMR()
{
  if(bStart.mouseOver())
    mode = GAME;
  if(bQuit.mouseOver())
    exit();
}
