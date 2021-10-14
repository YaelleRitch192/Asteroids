class ship extends gameobject {
  //instance variables
  PVector direction;
  int shottimer, threshold;
  int healthtimer;
  int healththreshold;
  //constructor
  ship() {
    lives=3;
    location=new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector (0, -0.1);
    shottimer=0;
    threshold=50;
    healthtimer = 0;
    healththreshold=40;
  }
  //behaviour functions
  void show() {
    pushMatrix();
    noFill();
    translate(location.x, location.y);
    rotate(direction.heading());
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
    //        while (healthtimer>threshold) {
    //  if ( dist(location.x, location.y, myufobullet.location.x, myufobullet.location.y)<= size/2) {
    //    healthtimer=0;
    //    fill(0,255,0,255);
    //  } else {
    //    noFill();
    //    healthtimer++;
    //  }
    //}
  }

  void act() {
    super.act();
    if (velocity.mag()>20) velocity.setMag(20);

    shottimer++;
    if (wkey) velocity.add(direction);
    if (skey) velocity.sub(direction);
    if (dkey) direction.rotate(radians(5));
    if (akey) direction.rotate( -radians(5) );
    if (spacekey && shottimer>threshold) {
      myobjects.add(new bullet());
      shottimer=0;
    }
  }
}
