import java.util.Random;
Random random = new Random();
float x = 0;
float y = 0;
float z = 0;
float a = 0;

//Choose a random speed for a procedural feeling each time ran?
int speeda = random.nextInt(14 - 7 + 1) + 7; //random.nextInt(max# - min# + 1) + min#
int speedx = random.nextInt(11 - 7 + 1) + 7;
int speedy = random.nextInt(9 - 7 + 1) + 7;
int speedz = random.nextInt(7 - 2 + 1)+ 2;

/*Change size with resolution size number bcs ints dont work on size 
because processing said so*/
int size = 400;
int mid = size/2;
float maxpos = size*1.5;
void setup(){
  //Use OpenGL because hardware acceleration
  size(400,400,P2D);
}
void draw(){
  
  background(3,67,255);
  noFill();
  stroke(120,59,255);
  strokeWeight(10);
  circle(mid,mid,x);
  circle(mid,mid,y);
  stroke(118,153,255);
  circle(mid,mid,a);
  circle(mid,mid,z);
  
  
  if (a < maxpos){
    a = a+speeda;
  }
  else{
    a = 0;
  }
  
  if (x < maxpos){
    x = x+speedx;
  }
  else{
    x = 0;
  }
  
  if (y < maxpos){
    y = y+speedy;
  }
  else{
    y = 0;
  }
  
  if (z < maxpos){
    z = z+speedz;
  }
  else{
    z = -maxpos;
  }
}
    
