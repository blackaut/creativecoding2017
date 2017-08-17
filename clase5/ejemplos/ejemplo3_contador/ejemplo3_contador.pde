Contador contador = new Contador(4000);
Contador contador2 = new Contador(1000);
void setup() {
  fullScreen();
  contador2.start();
}
void draw() {
  background(255);
  contador.actualizar();
  rect(contador.mapear(200,800),100,100,100);
  contador2.actualizar();
  float r = contador2.mapear(10,200);
  ellipse(500,500, r,r);
}
void mousePressed(){
  contador.start();
}