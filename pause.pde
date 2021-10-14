void pause(){
rectMode(CORNER);
  background(0);
  fill(255,255,255);
  if(dist(400,100,mouseX,mouseY)<35.5){stroke(23,11,209);}else{stroke(255);}
circle(400,100,75);
textSize(100);
text("paused", width/2,height/2);
fill(87,225,247);
stroke(87,225,247);
triangle(385,85,415,100,385,115);

//restart button
strokeWeight(4);
  if (mouseX>200 && mouseX<600 && mouseY>500 && mouseY<600){ stroke(255); }else { stroke(23,11,209);}
fill(23,11,209);
rect(200,500,400,100);
fill(87,225,247);
textSize(60);
text("main menu", 400, 550);
}

void pauseclicks(){
    if(dist(400,100,mouseX,mouseY)<35.5){
    mode=game;
  }
   if (mouseX>200 && mouseX<600 && mouseY>500 && mouseY<600){
   mode=intro;
   }
}
