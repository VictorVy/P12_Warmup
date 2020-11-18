void keyPressed()
{
  switch(keyCode)
  {
    case UP:
      up = true;
      break;
    case DOWN:
      down = true;;
      break;
    case LEFT:
      left = true;
      break;
    case RIGHT:
      right = true;
      break;
  }
}

void keyReleased()
{
  switch(keyCode)
  {
    case UP:
      up = false;
      break;
    case DOWN:
      down = false;;
      break;
    case LEFT:
      left = false;
      break;
    case RIGHT:
      right = false;
      break;
  }
}
