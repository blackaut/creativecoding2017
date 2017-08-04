void setup() {
  float p = promedio(2, 10.4, 8);
  println("el promedio es " + p);
}
float promedio(float a, float b, float c) {
  float resultado = (a + b + c)/3; 
  return resultado;
}
void draw() {
}