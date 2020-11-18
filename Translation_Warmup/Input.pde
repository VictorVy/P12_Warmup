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
  
  switch(key)
  {
    case 'Q':
      rLeft = true;
      break;
    case 'E':
      rRight = true;
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
  
  switch(key)
  {
    case 'Q':
      rLeft = false;
      break;
    case 'E':
      rRight = false;
      break;
  }
}
