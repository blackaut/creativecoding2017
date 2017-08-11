int numeroCuadrados = 40;
float ancho;
int numRepeticiones = 5;
void setup(){
  fullScreen();
ancho = width/ numeroCuadrados;
}
void draw(){
   background(255);
  //noStroke();
  for(int i =0; i <numeroCuadrados ; i++){
    //fill(map((i%numRepeticiones), 0, numRepeticiones-1, 0,255));
    float x = map(i, 0, numeroCuadrados-1, 0, width - ancho); 
    rect(x, (i%numRepeticiones)*100, ancho, ancho);
  }
}