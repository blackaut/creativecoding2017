color color1 = color(255,0,129);
color color2 = color(4,249,209);

void setup(){
  fullScreen();
}

void draw(){
  //borrar fondo con blanco
  background(255);
  //rellenar con interpolacion basada en 
  fill(lerpColor(color1, color2, map(mouseX, 0, width, 0, 1)));
  rect(0,0,width,height);
  
  fill(color1);
  rect(0, 300, 100,100);
  fill(color2);
  rect(width-100, 300, 100,100);
  
}