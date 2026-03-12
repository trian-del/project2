float x,y,x2,y2;
void setup(){
  size(600,600,P3D);
}

void draw(){
 background(0);
 x += 1;
 y += 1;
 x2 -= 1;
 y2 -= 1;
 easy(300,300,0,x,y,200,255,0);
 easy(300,300,100,x2,y2,1000,0,255);
}

void easy(float x, float y, float z, float r1, float r2, float size, float c, float cs){
  pushMatrix();
  translate(x,y,z);
  rotateX(radians(r1));
  rotateY(radians(r2));
  fill(c);
  stroke(cs);
  box(size);
  popMatrix();
}
