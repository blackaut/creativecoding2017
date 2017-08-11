color color1 = color(255,0,129);
color color2 = color(4,249,209);
color misColores [];
float ancho;

void setup(){
  fullScreen();
  misColores= new color[width];
  for(int i =0; i < misColores.length; i++){
    misColores[i] = lerpColor(color1, color2, map(i, 0, misColores.length-1, 0,1));
  }
  ancho = width /misColores.length;
}

void draw(){
  //borrar fondo con blanco
  background(255);
  noStroke();
  for(int i =0; i < misColores.length; i++){
    fill(misColores[i]);
    rect(map(i, 0, misColores.length-1, 0, width - ancho), 0, ancho, height);
  }
}