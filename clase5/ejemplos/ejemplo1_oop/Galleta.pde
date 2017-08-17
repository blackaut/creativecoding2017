
class Galleta{
  //ingrediente
  int numChips;
  //int posX, posY;
  vector pos;
  float tamano;
  Chip chips [];
  color colorChips;
  //instrucciones
  void iniciar(){
    numChips = int(random(5, 10));
    chips = new Chip [numChips];
    posX = (int)random(0, width);
    posY = (int)random(0, height);
    tamano = random(50, 200);
    
    colorChips = color(random(255),random(255),random(255));
    
    for(int i = 0; i < chips.length; i++){
      chips[i] = new Chip();
      chips[i].iniciar(posX,posY,tamano);
    }
  }
  void dibujar(){
    fill(196,175,99);
    ellipse(posX, posY, tamano, tamano);
    fill(colorChips);
    for(int i = 0; i < chips.length; i++){
      chips[i].dibujar();
    }
  }
}