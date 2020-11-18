int bX, bY, bSize, bSpeed;
int pX, pY, pSize, pSpeed;
boolean up, down, left, right;

void setup()
{
  size(800, 600);
  
  bX = width / 2;
  bY = height;
  bSize = 120;
  bSpeed = 4;
  
  pX = width / 2;
  pY = height / 2;
  pSize = 150;
  pSpeed = 6;
  
  up = down = left = right = false;
}

void draw()
{
  background(255);
  
  noStroke();
  
  fill(126);
  circle(bX, bY, bSize);
  bX += bSpeed;
  
  if(bX > width + bSize / 2)
    bX = 0 - bSize / 2;
  
  fill(196);
  circle(pX, pY, pSize);
  
  if(up)
      pY -= pSpeed;
  if(down)
      pY += pSpeed;
  if(left)
      pX -= pSpeed;
  if(right)
      pX += pSpeed;
}
