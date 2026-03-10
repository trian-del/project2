/**
 * Move Eye. 
 * by Simon Greenwold.
 * 
 * The camera lifts up (controlled by mouseY) while looking at the same point.
 */
int g;
void setup() {
  size(640, 360, P3D);
  fill(204);
  mouseWheel();
  stroke(255);
  strokeWeight(5);
}

void draw() {
  lights();
  background(0);
  
  box(g*200);
  
    camera(mouseX*2, mouseY*2, g*100, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0);

  sphere(90);
  pushMatrix();
  translate(0,200,0);
  box(300, 80, 300);
  popMatrix();
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
}

void mouseWheel(MouseEvent event) {
  g=constrain(g+event.getCount(),-250,250);
}
