import ddf.minim.*;        
AudioSample sound;
int acceleration = 10;
int X = 221;
int Y = 71;
PImage Kitty;
void setup(){
  size(554,346);
  Kitty = loadImage("Cat.jpg");
  background(Kitty);
  Minim minim = new Minim(this);        
sound = minim.loadSample("Lazer.mp3");
}
void draw(){
  if (Y>=346){
    X = 221;
    Y = 71;
    background(Kitty);
    acceleration = 10;
  }
  fill(187,000,000);
  noStroke();
  ellipse(X,Y,5,5);
  ellipse(X+14,Y+1,5,5);
}
void keyPressed() {
     X=X+acceleration;
Y=Y+acceleration;
acceleration+=2;
sound.trigger();
}

