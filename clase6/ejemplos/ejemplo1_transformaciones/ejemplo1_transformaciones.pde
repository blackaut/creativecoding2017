void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  translate(100,0);
  
  pushMatrix();

  translate(width/2, height/2);
  //translate(mouseX, mouseY);
  rotate(map(mouseX, 0, width, 0, TWO_PI));
  for (int i =0; i < 10; i++) {
    for (int j =0; j < 10; j++) {
      rect(i*100, j*100, 50, 50);
    }
  }

  popMatrix();
  fill(255, 0, 0);
  ellipse(40, 40, 100, 100);
}