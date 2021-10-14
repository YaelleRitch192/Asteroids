// in ufo bullet constructor
//to get the ufo to hit the space ship
//ufo bullets--- location=PVector(ufo.location.x,ufo.location.y); 
//target - shooter coords
//myship.location.x - ufo location ->location.x
//myship.location.y - location.y
// in act function myobjects.add(new ufobullet (location.x,location.y,vx,vy);
//u will need to use setMag to slow down the velocity
//look at asteroids second constructor for help

//generate a number from 0-3 and assign them a value of a side, 

class ufo extends gameobject {
  PVector direction; 
  int r;

  ufo() {
    location=new PVector(width/2, height/2);
    lives=1;
    r=int(random(0, 3));
    if (r==0) {
    location.x=width/2;
    location.y=height;
    velocity = new PVector(0, -1);
    }
    if (r==1) {
    location.x=width/2;
    location.y=0;
    velocity = new PVector(0, 1);
    }
    if (r==2) {
    location.x=width;
    location.y=height/2;
    velocity = new PVector(-1, 0);
    }
    if (r==3) {
    location.x=0;
    location.y=height/2;
    velocity = new PVector(1, 0);
    }
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
    super.act();
    timer++;
    if (timer>100) timer=0;
    if (timer== 30) myufobullets.add(new ufobullet());
    if (location.x>width||location.x<0) {
      lives=0;
    }
  }
}
