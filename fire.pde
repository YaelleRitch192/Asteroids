class fire extends gameobject{
int t;

fire(){
 lives=1;
 size=10;
 t=255;
 location=myship.location.copy();
 velocity=myship.direction.copy(); 
 velocity.rotate(radians(random(170,190)));
 velocity.setMag(5);
}
void show(){
  noStroke();
  fill(0,random(10,30),random(80,255),t);
  square(location.x,location.y,size);
}

void act(){
 super.act();
 t=t-20;
 if(t<=0)lives=0;
}
}
