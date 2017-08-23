PFont font;

String texto = "";
void setup(){
  fullScreen();
  font = createFont("HelveticaLTStd-Light.otf", 100);
}
void draw(){
  background(0);
  
  textFont(font);
  textSize(100);
  fill(255,0,0);
  rect(mouseX, mouseY + textDescent(),  textWidth(texto), -textAscent() - textDescent());
  fill(255);
  text(texto, mouseX, mouseY);
  
  
}
void keyPressed(){
  texto += key;
}