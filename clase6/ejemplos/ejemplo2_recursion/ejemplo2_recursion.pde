void setup() {
  size(1000, 800);
}
void dibujar(int contador){
  translate(10,10);
  rotate(map(mouseX, 0, width, 0, 1));
  rect(0,0,100,100);
  if(contador > 0){
    contador --;
    dibujar(contador);
  }
}
void draw() {
  translate(width/2, height/2);
  background(0);
  dibujar(15);
}