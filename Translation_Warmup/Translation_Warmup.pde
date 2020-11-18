int x, y, size, speed;
float rotation, rSpeed;
boolean up, down, left, right, rLeft, rRight;

void setup()
{
  size(800, 600);
  translate(width / 2, height / 2);
  
  x = width / 4;
  y = height / 4;
  size = 120;
  speed = 4;
  rSpeed = 10;
  
  up = down = left = right = false;
}

void draw()
{
  background(255);
  
  if(up)
    y -= speed;
  if(down)
    y += speed;
  if(left)
    x -= speed;
  if(right)
    x += speed;
  if(rLeft)
    rotation = radians(rSpeed);
  if(rLeft)
    rotation = radians(-rSpeed);
  
  face();
      
  if(x > width / 2 + size / 2)
    x = 0 - size / 2;
  else if(x < 0 - size / 2)
    x = width / 2 + size / 2;
  if(y > height / 2 + size / 2)
    y = 0 - size / 2;
  else if(y < 0 - size / 2)
    y = height / 2 + size / 2;
}

void face()
{
  translate(x, y);
  rotate(rotation);
  
  noStroke();
  
  fill(126);
  circle(x, y, size + size / 2);
  
  fill(196);
  circle(x - size / 4, y - size / 4, size / 3);
  circle(x + size / 4, y - size / 4, size / 3); 
}
