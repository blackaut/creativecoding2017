class Chip{
  int posX, posY;
  float tamano;
  void iniciar(int x, int y, float tam){
    float radio = random(0,tam/2);
    float angulo = random(TWO_PI);
    posX = int(sin(angulo)*radio)+x;
    posY = int(cos(angulo)*radio)+y;
    //posX =  (int)random(x-tam/2, x+tam/2);
    //posY =  (int)random(y-tam/2, y+tam/2);
    tamano = tam/10;
  }
  void dibujar(){
    //fill(0);
    ellipse(posX, posY, tamano, tamano);
  }
} 