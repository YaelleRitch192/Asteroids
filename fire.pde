class fire extends gameobject{
int t;

fire(){
 lives=1;
 size=10;
 t=255;
 location=myship.location.copy();
 velocity=myship.direction.copy();
 velocity.rotate(radians(180));
 velocity.setMag(5);
}
void show(){
  noStroke();
  fill(255,0,0,t);
  square(location.x,location.y,size);
}

void act(){
 super.act();
 t=t-10;
 if(t<=0)lives=0;
}
}
