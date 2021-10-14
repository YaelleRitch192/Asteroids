class ufobullet extends gameobject {

  int timer;
  int healthtimer;
  int threshold; 
  ufobullet() {
    timer=300;
    lives=1;
    location=new PVector(myufo.location.x, myufo.location.y);
    velocity = new PVector(myship.location.x - myufo.location.x, myship.location.y - myufo.location.y);
    velocity.setMag(2);
    size=10;
    healthtimer=0;
    threshold= 50;
  }


  void show() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    location.add(velocity);
    timer--;
    if (timer==0) {
      lives=0;
    }
    if (location.x<0 || location.y>width ||location.y<0||location.y>height) lives=0;

    //while (healthtimer>threshold) {
    if ( dist(location.x, location.y, myship.location.x, myship.location.y)<= size/2) {
     health=health-2;
    //    healthtimer=0;
    //  } else { 
    //    healthtimer++;
      }
  }
}
