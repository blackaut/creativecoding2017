void setup(){
   size(1000,800);
}

void draw(){
  int alto = 200;
  float y = 300;
  float i = 0;
  float incremento = map(1, 0, width, 0, TWO_PI);
  for(int x = 0; x < width; x++){
    ellipse(x, sin(i)*alto + y, 10, 10);
    i+=incremento;
  }
}