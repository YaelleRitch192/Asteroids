class ship extends gameobject {
  //instance variables
  PVector direction;
  int shottimer,threshold;
  //constructor
  ship() {
    lives=3;
    location=new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector (0, -0.1);
    shottimer=0;
    threshold=60;
  }
  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    noFill();
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }

  void act() {
   super.act();
   shottimer++;
    if (wkey) velocity.add(direction);
    if (skey) velocity.sub(direction);
    if (dkey) direction.rotate(radians(5));
    if (akey) direction.rotate( -radians(5) );
    if (spacekey && shottimer>threshold){
      myobjects.add(new bullet());
      shottimer=0;
    }
  }
}
