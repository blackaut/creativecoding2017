// % modulo
float x= 0;
void setup(){
  fullScreen();
}
void draw(){
  background(0);
  ellipse(x, 300,100,100);
  x+=40;
  x = x % width;
}