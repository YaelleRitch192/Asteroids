boolean wkey, skey, akey, dkey, spacekey;
ship myship;
ArrayList<gameobject> myobjects;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  myship=new ship();
  myobjects= new ArrayList<gameobject>();
  myobjects.add(myship);
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
}

void draw() {
  background(0);

  int i=0;
  while (i<myobjects.size()) {
    gameobject myobj = myobjects.get(i);
    myobj.show();
    myobj.act();
    if(myobj.lives==0){
      myobjects.remove(i);
    }else{
      i++;
    }
  }
}

void keyPressed() {
  if (key=='w' ||key=='W')wkey=true;
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
