void setup(){
  fullScreen();
  ellipseMode(CORNER);
  colorMode(HSB);
}
void draw(){
  float noiseScale = map(mouseX, 0, width, 0, 10);
   for(int i = 0; i < 10; i = i+1){
    for(int j = 0; j < 10; j = j+1){
      float r = noise(map(i,0,9,0, noiseScale), map(j,0,9,0, noiseScale));
      r *= 255;
      fill(r,255,255);
      ellipse(i*100, j*100, 150,150);
    }
  }
}