void setup() {
   size(1000,800);//,P3D);
   //fullScreen();
}
void draw() {
  background(0);
  
  pushMatrix();
  
  rotate(map(mouseX, 0, width, 0, TWO_PI));
  translate(mouseX, 0);
  
  pushStyle();
  
  fill(255,0,0);
  rect(100, 100, 100, 100);
  
  popStyle();
  popMatrix();
  
  
  ellipse(400,400, 100,100);
  
  
}