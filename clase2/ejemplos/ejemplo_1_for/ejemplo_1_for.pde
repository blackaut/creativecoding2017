void setup() {
    fullScreen();
  }

void draw() {
  for(int i = 0; i < 10; i = i+1){
    for(int j = 0; j < 10; j = j+1){
      float r = map(i, 0, 9, 0,255);
      int g = int(map(j, 0, 9, 0,255));
      int b = 255;
      fill(r,g,b);
      ellipse(i*100, j*100, 150,150);
    }
  }
}