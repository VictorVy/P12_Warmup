int x, y, size, speed;
boolean up, down, left, right, rLeft, rRight;

void setup()
{
  size(800, 600);
  translate(width / 2, height / 2);
  
  x = y = 0;
  size = 120;
  speed = 4;
  
  up = down = left = right = false;
}

void draw()
{
  background(255);
  
  if(up)
      translate(0, -speed);
  if(down)
      translate(0, speed);
  if(left)
      translate(-speed, 0);
  if(right)
      translate(0, speed);
  if(rLeft)
    rotate(radians(-speed));
  if(rLeft)
    rotate(radians(-speed));
  
  face();
      
  //if(x > width + size / 2)
  //  x = 0 - size / 2;
}

void face()
{
  noStroke();
  
  fill(126);
  circle(x, y, size + size / 2);
  
  fill(196);
  circle(x - size / 4, y - size / 4, size / 3);
  circle(x + size / 4, y - size / 4, size / 3); 
}
