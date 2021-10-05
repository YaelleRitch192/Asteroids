class asteroid extends gameobject{
  
  
  asteroid(){
    lives=1;
  location = new PVector (random(0,width), random(0,height));
  velocity = new PVector (0,1);
  velocity.rotate(random(0,TWO_PI));
  size=100;
  }
  void show(){
  noFill();
  stroke(255);
  ellipse(location.x,location.y,size,size);
  }
  
  void act(){
    super.act();
      int i=0;
  while (i<myobjects.size()) {
        gameobject myobj = myobjects.get(i);
        if(myobj instanceof bullet){
          if(dist(location.x,location.y,myobj.location.x,myobj.location.y)<=size/2+myobj.size){
           myobj.lives =0;
           lives=0;
          }
        }
    i++;
 
  }
  }
}
