int x = -50;
int y = 0;
void setup(){
  size(400,400,P2D);
}

void draw(){
  background(3,67,255);
  noFill();
  stroke(120,59,255);
  strokeWeight(10);
  circle(x,200,y);
 
  if (x<550){
    x = x+2;
    y = y+1;
  }
  else{
    x = -50;
    y = 0;
  }
}
