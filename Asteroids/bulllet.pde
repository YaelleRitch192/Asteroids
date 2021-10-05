class bullet extends gameobject {

  int timer;

  bullet() {
    timer=60;
    lives=1;
    location=new PVector(myship.location.x, myship.location.y);
    velocity = new PVector(myship.direction.x, myship.direction.y);
    velocity.setMag(10);
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
  }
}
