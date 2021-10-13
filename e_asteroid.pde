class asteroid extends gameobject {


  asteroid() {
    lives=1;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size=100;
  }

  asteroid(int s, float x, float y) {
    lives=1;
    location=new PVector(x, y);
    velocity=new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    noFill();
    stroke(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    //immunity timer is similar to shot timer
    if (dist(location.x, location.y, myship.location.x, myship.location.y)<= size/2){
    health=health-1;
    }
    int i=0;
    while (i<myobjects.size()) {
      gameobject myobj = myobjects.get(i);
      if (myobj instanceof bullet) {
        if (dist(location.x, location.y, myobj.location.x, myobj.location.y)<=size/2+myobj.size) {
          myobj.lives =0;
          lives=0;
          if (size>49){
          myobjects.add(new asteroid(size/2, location.x, location.y));
          myobjects.add(new asteroid(size/2, location.x, location.y));
          } 
        }
      }
      i++;
      asteroidsnum=i;
    }
  }
}
