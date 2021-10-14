void game() {
  background(0);
  strokeWeight(2);
  textSize(30);
  text("Health:"+health, 70, 50);
  if (health<=0) {
    mode=gameover;
  }
  if (asteroidsnum>50)mode=gameover;
  int i=0;
  while (i<myobjects.size()) {
    gameobject myobj = myobjects.get(i);
    myobj.show();
    myobj.act();
    if (myobj.lives==0) {
      myobjects.remove(i);
    } else {
      i++;
    }


    int ui=0;
    while (ui<myufobullets.size()) {
      ufobullet ub =myufobullets.get(ui);
      ub.show();
      ub.act();
      if (ub.lives==0) {
        myufobullets.remove(ui);
      } else {
        ui++;
      }
    }
  }
  //pause button
  rectMode(CORNER);
  fill(255, 255, 255, 50);
  strokeWeight(4);
  if (dist(400, 100, mouseX, mouseY)<35.5) {
    stroke(23, 11, 209, 100);
  } else {
    stroke(255, 255, 255, 50);
  }
  circle(400, 100, 75);
  strokeWeight(0);
  fill(255, 255, 255, 50);
  rect(380, 80, 12, 40);
  rect(407, 80, 12, 40);
  rectMode(CENTER);
}


void gameclicks() {
  if (dist(400, 100, mouseX, mouseY)<37.5) {
    mode=pause;
  }
}
