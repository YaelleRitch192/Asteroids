// in ufo bullet constructor
//to get the ufo to hit the space ship
//ufo bullets--- location=PVector(ufo.location.x,ufo.location.y); 
//target - shooter coords
//myship.location.x - ufo location ->location.x
//myship.location.y - location.y
// in act function myobjects.add(new ufobullet (location.x,location.y,vx,vy);
//u will need to use setMag to slow down the velocity
//look at asteroids second constructor for help

class ufo extends gameobject {
  PVector direction; 

  ufo() {
    location=new PVector(width/2, height/2);
    velocity = new PVector(1, 0);
    lives=1;

  }
  void show() {
    ellipse(location.x, location.y, 30, 10);
  }
  void act() {
    location.add(velocity);
    //   int i=0;
    //   while (i<myobjects.size()) {
    //     gameobject myobj = myobjects.get(i);
    //if (myobj instanceof bullet) {
    //       if (dist(location.x, location.y, myobj.location.x, myobj.location.y)<=size/2+myobj.size) {
    //         myobj.lives =0;
    //         lives=0;
    //  }
    // }
    //}
  }
}
