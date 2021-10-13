void intro() {
  background(0);
    frames=50;
 gif=new PImage[frames];
 int index = 0;
while(index<frames){
  if(index<10) {
    leadingzeroes="00";
  }else if(index<100){
  leadingzeroes="0";
  }else{
gif[index] = loadImage ("frame_"+index+"_delay-0.03s.gif");
index=index+1;
}
}
  image(gif[framenum],0,0,width,height);
  framenum=framenum+1;
  if (framenum==frames) framenum=0;

  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("Asteroids", width/2, 200);
  text("start", width/2, 400);
  health=50;
  
}

void introclicks() {
  mode=game;
}
