PFont font;
PFont font2;
void setup(){
  fullScreen();
  font = createFont("vag.ttf", 100);
  font2 = createFont("HelveticaLTStd-Light.otf", 20);
}
void draw(){
  background(0);
  textFont(font);
  textSize(100);
  text("hola\nhello", mouseX, mouseY);
  textSize(20);
//  textFont(font2);
  text("chao", mouseX, mouseY+30);
  
}