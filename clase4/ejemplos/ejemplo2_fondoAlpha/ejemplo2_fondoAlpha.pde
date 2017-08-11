color fondo = color(255,255,0,10);

void setup(){
  fullScreen();
  background(fondo);
}
void draw(){
  noStroke();
  fill(fondo);
  rect(0,0,width, height);
  fill(255);
  ellipse(mouseX, mouseY, 100,100);
}