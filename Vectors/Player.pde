class Player
{
  PVector pos, speed, dir;
  int size, hp, strokeWeight, maxSpeed;
  color colour;
  float turnSpeed;
  
  boolean moveF, moveB, turnL, turnR, shoot;
  int shootTimer;
  
  public Player()
  {
    init();
    
    maxSpeed = 4;
    size = 30;
    hp = 3;
    colour = 255;
    strokeWeight = 4;
    turnSpeed = radians(4);
    shootTimer = 60;
  }
  
  void init()
  {
    pos = new PVector(width / 2, height / 2);
    speed = new PVector(0, 0);
    dir = new PVector(0, -0.1);
  }
  
  void show()
  {
    noFill();
    stroke(colour);
    strokeWeight(size / 7);
    
    pushMatrix();
    
    translate(pos.x, pos.y);
    rotate(dir.heading());
    
    triangle(size / 2, 0, -(size / 2), -(size / 3), -(size / 2), size / 3);
    line(size / 2, 0, -(size / 2) - size / 4, 0);
    
    popMatrix();
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
    
    pos.add(speed);
    
    //shooting
    shootTimer++;
    if(shoot && shootTimer >= 60)
    {
      bullets.add(new Bullet(pos.copy(), dir.copy(), size / 10));
      shootTimer = 0;
    }
    
    //if(speed.mag() > 0)
    //  speed.sub(speed.div(10));
  }
}
