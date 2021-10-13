boolean wkey, skey, akey, dkey, spacekey;
ship myship;
int mode;
final int intro =1;
final int game =2;
final int pause =3;
final int gameover =4;
ArrayList<gameobject> myobjects;
PFont aremat;
PImage[]gif;
int frames;
int framesi;
int framenum;
int health;
int asteroidsnum;
String leadingzeroes = "0";

void setup() {
  size(800, 600);
  mode=intro;
  imageMode(CENTER);
  rectMode(CENTER);
  myship=new ship();
  myobjects= new ArrayList<gameobject>();
  myobjects.add(myship);
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  aremat=createFont("aremat font.ttf",100);
  textFont(aremat);
//  frames=30;
// gif=new PImage[frames];
// int framesi = 0;
//while(framesi<frames){
//gif[framesi] = loadImage ("frame_"+framesi+"_delay-0.03s.gif");
//framesi=framesi+1;
//}
}

void draw() {
  background(0);

 
   if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  }
}
