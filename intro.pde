void intro() {
 background(0);


  image(gif[framenum],width/2,height/2,width,height);
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
