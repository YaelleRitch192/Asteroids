void gameover(){
  if (health<=0){
text("you lose",width/2,height/2);
  }else{
text("you win",width/2,height/2);
  }
 
  
  
}

void gameoverclicks(){
  mode=intro;
}
