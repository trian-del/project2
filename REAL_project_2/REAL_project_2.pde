import java.util.concurrent.ThreadLocalRandom;
ArrayList<rain> idk = new ArrayList<rain>();
PFont l,ls;
boolean t=false;
float x,opacity;
void setup(){
  size(600,600,P2D);
  
  l=createFont("felipa.ttf",30);
  ls=createFont("felipa.ttf",15);

  for(int i=0;i<25;i++){    
    //random position for each raindrop
    float x=random(width);
    float y=random(height);
    //random rain speed
    float s=random(30,50);
    idk.add(new rain(x,y,s));
  } 
}

void draw(){
  
  //========general image==========
  background(0);
  grave(300,300);
  fill(9,80,21);
  ellipse(300,680,700,500);
  noStroke();
  fill(12,100,26);
  ellipse(280,680,680,500);
  fill(0);
  //========================
  
  //===========text===========
  textFont(l);
  text("WELP",260,300);
  textFont(ls);
  text("''okay''",280,340);
  //========================
  

  //========rain setup===========
  //for(class;variable:array variable)??
  for(rain rain:idk){
    rain.move();
    rain.display();
  }
  
  //===============thunder=====================
  int rand=ThreadLocalRandom.current().nextInt(300);
  if(rand==1){
    t=true;
    opacity=230;
  }
  if(t==true){
    opacity-=4;
    fill(255,255,255,opacity);
    square(-1,-1,600);
  }
  if(opacity==0){
    t=false;
  }
  //=================================
  println(rand);
}

void grave(float x, float y){
  push();
  translate(x,y);
  fill(124,131,139);
  noStroke();
  rect(-75,0,150,150);
  circle(0,0,150);
  pop();
}

class rain{
  float x,y,s;
  
  //dont know what this does
  rain(float x, float y, float s){
    this.x=x;
    this.y=y;
    this.s=s;
  }
  
  //======apply rain speed and reset=========
  void move(){
    x += s;
    y += s;
    if(x>width){
      x=-30;
    }
    if(y>height){
      y=-30;
    }
  }
  //===================================
  
  void display(){
    drop(x,y);
  }
  
  //==========raindrop shape=============
  void drop(float x, float y){
    push();
    translate(x,y);
    rotate(radians(135));
    noStroke();
    fill(176,225,241);
    rect(0,0,1,10);
    pop();
  }
    
}
