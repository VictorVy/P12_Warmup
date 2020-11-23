class Bullet
{
  PVector pos, speed;
  int size, hp;
  color colour;
  
  public Bullet(PVector pos, PVector dir, int size)
  {
    this.pos = pos;
    speed = dir.setMag(4);
    this.size = size;
    hp = 1;
  }
  
  void show()
  {
    pushMatrix();
    
    stroke(255);
    strokeWeight(size);
    
    line(pos.x, pos.y, pos.x, pos.y - size);
    
    popMatrix();
  }
  
  void act()
  {
    pos.add(speed);
    
    if(pos.x > width + size / 2 || pos.x < 0 - size / 2 || pos.y > height + size / 2 || pos.y < 0 - size / 2)
      hp = 0;
  }
}
