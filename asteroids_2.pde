boolean wkey, skey, akey, dkey, spacekey;
ship myship;
ufo myufo;
ufobullet myufobullet;
int mode;
final int intro =1;
final int game =2;
final int pause =3;
final int gameover =4;
ArrayList<gameobject> myobjects;
ArrayList<ufobullet> myufobullets;
PFont aremat;
PImage[]gif;
int frames;
int framesi;
int framenum;
int health;
int asteroidsnum;
String leadingzeroes = "0";
int timer;
int lives;

void setup() {
  size(800, 600);
  mode=intro;
  imageMode(CENTER);
  rectMode(CENTER);
  myship=new ship();
  myufo=new ufo();
  myufobullet=new ufobullet();
  myobjects= new ArrayList<gameobject>();
  myobjects.add(myship);
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(new asteroid());
  myobjects.add(myufo);
  myufobullets= new ArrayList<ufobullet>();
  aremat=createFont("aremat font.ttf", 100);
  textFont(aremat);
  frames=164;
  gif=new PImage[frames];
  int index = 0;
  while (index<frames) {
    if (index<10) {
      leadingzeroes="00";
    } else if (index<100) {
      leadingzeroes="0";
    } else {
      leadingzeroes="";
    }
    gif[index] = loadImage ("frame_"+leadingzeroes+index+"_delay-0.03s.gif");
    index=index+1;
  }
  lives=1;
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
