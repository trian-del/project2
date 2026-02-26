int x = -50;
int y = 450;
void setup(){
  size(400,400,P2D);
}

void draw(){
  background(3,67,255);
  noFill();
  stroke(120,59,255);
  strokeWeight(10);
  circle(100,x,100);
  circle(300,y,100);
 
  if (x<450){
    x = x+1;
  }
  else{
    x = -50;
  }
  if (y>-50){
    y = y-1; 
  }
  else {
    y = 500;
  }
}
