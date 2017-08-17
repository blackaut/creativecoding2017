//programacion orientada a objetos OOP Object Oriented Programing

Galleta galletas [] = new Galleta[5];

void setup(){
  size(1000,700);
  for(int i = 0; i < galletas.length;i++){
    galletas[i] = new Galleta();
    galletas[i].iniciar();
  }
}
void draw(){
  for(int i = 0; i < galletas.length;i++){
    galletas[i].dibujar();
  }
}