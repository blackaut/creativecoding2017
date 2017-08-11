//XENO
float x, y;
float mult = 0.01;
void setup(){
  fullScreen();
}
void draw(){
  background(255);
  x += (mouseX -x)*mult;
  y += (mouseY -y)*mult;
  fill(255,0,0);
  ellipse(x,y,100,100);  
}