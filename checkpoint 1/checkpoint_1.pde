int x = -50;
void setup(){
  size(400,400,P2D);
}

void draw(){
  background(3,67,255);
  noFill();
  stroke(120,59,255);
  strokeWeight(10);
  circle(200,x,100);
 
  if (x<500){
    x = x+2;
  }
  else{
    x = -50;
  }
}
