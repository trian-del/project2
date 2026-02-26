float x,y,r,rv,vx,vy,b,b2,by;
PImage img;
void setup(){
size (600, 600, P2D);
vx = 3;
vy = 2;
rv = -1;
by = -2;
img = loadImage("fish.png");
}

void draw(){
  background(0,0,255);
  x = x+vx;
  y = y+vy;
  r = r+rv;
  b = b+by;
  b2 = b2+by;
  massbubbles(0,b2+600);
  massbubbles(0,b);
  monster(x,y,200,100,r);
  monster(x*1.4,y*1.2,200,100,r*1.2);
  monster(x*2.5,y*1.9,200,100,r*1.5);
  //bubbles(300,300,50);
  if (x > 500){
    vx = -10;
  }
  
  if (x < 0){
    vx = 3; 
  }
  
  if (y > 500){
    vy = -10; 
  }
  
  if (y < 0){
    vy = 2;
  }
  if (b<-600){
    b = 600; 
  }
  if (b2<-1200){
    b2 = 0; 
  }
}

void monster(float x, float y, float s, float h, float r){
  pushMatrix();
  translate(x,y);
  rotate(radians(r));
  image(img, s/2, s/2, s, h);
  popMatrix();
}

void bubbles(float x, float y, float s){
  pushMatrix();
  translate(x,y);
  noFill();
  strokeWeight(s/10);
  stroke(70,129,255);
  circle(0,0,s);
  stroke(255);
  arc(s/5, -s/10, s/5,s/5,radians(-100),radians(20));
  popMatrix();
}

void massbubbles(float x, float y){
  pushMatrix();
  translate(x,y);
  bubbles(300,300,50);
  bubbles(537,272,10);
  bubbles(132,155,50);
  bubbles(298,526,34);
  bubbles(220,322,56);
  bubbles(455,413,34);
  bubbles(336,142,23);
  bubbles(119,367,12);
  bubbles(430,522,56);
  bubbles(50,113,34);
  bubbles(36,542,23);
  bubbles(519,567,12);
  bubbles(530,422,56);
  bubbles(200,113,34);
  bubbles(500,50,23);
  popMatrix();
}
