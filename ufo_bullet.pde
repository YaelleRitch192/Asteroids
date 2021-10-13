class ufobullet extends gameobject {

  int timer;

  ufobullet() {
    timer=40;
    lives=1;
    location=new PVector(myufo.location.x, myufo.location.y);
    velocity = new PVector(myship.location.x - myufo.location.x, myship.location.y - myufo.location.y);
    velocity.setMag(2);
    velocity.add(myship.velocity);
    size=10;
  }

  void show() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer==0) {
      lives=0;
    }
    if (location.x<0 || location.y>width ||location.y<0||location.y>height) lives=0;
  }
}
