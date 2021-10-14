void keyPressed() {
  if (key=='w' ||key=='W'){
    wkey=true;
  myobjects.add(new fire());
  myobjects.add(new fire());
  myobjects.add(new fire());
  myobjects.add(new fire());
  }
  if (key=='s'||key=='S')skey=true;
  if (key=='a' ||key=='A')akey=true;
  if (key=='d'||key=='D')dkey=true;
  if (key==' ')spacekey=true;
}

void keyReleased() {
  if (key=='w' ||key=='W')wkey=false;
  if (key=='s'||key=='S')skey=false;
  if (key=='a' ||key=='A')akey=false;
  if (key=='d'||key=='D')dkey=false;
  if (key==' ')spacekey=false;
}

void mouseReleased(){
   if(mode==intro){
     introclicks();
  }else if (mode==game){
    gameclicks();
}else if (mode==pause){
  pauseclicks();
}else if (mode==gameover){
  gameoverclicks();
}
}
