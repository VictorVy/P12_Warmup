class Player
{
  PVector pos, speed, dir;
  int size, hp, strokeWeight, maxSpeed;
  color colour;
  float turnSpeed;
  
  boolean moveF, moveB, turnL, turnR;
  
  public Player()
  {
    pos = new PVector(width / 2, height / 2);
    speed = new PVector(0, 0);
    maxSpeed = 4;
    dir = new PVector(0.1, 0);
    size = 30;
    hp = 3;
    colour = 255;
    strokeWeight = 4;
    turnSpeed = radians(4);
  }
  
  void show()
  {
    noFill();
    stroke(colour);
    strokeWeight(strokeWeight);
    
    translate(pos.x, pos.y);
    rotate(dir.heading());
    
    triangle(size / 2, 0, -(size / 2), -(size / 3), -(size / 2), size / 3);
    line(size / 2, 0, -(size / 2) - size / 4, 0);
  }
  
  void act()
  {
    //movement
    if(moveF)
      speed.add(dir);
    if(moveB)
      speed.sub(dir);
    if(turnL)
      dir.rotate(-turnSpeed);
    if(turnR)
      dir.rotate(turnSpeed);
    
    if(speed.mag() < maxSpeed)
      pos.add(speed);
    //if(speed.mag() > 0)
    //  pos.sub(speed.div(100));
  }
}
