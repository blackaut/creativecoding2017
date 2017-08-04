float noiseScale = 0.02;
void setup(){
  fullScreen();
 // noLoop();
}
void draw(){
  
  background(0);
  noiseScale =map(mouseX, 0, width, 0, 1);
  randomSeed(1234);
  float prevRandom = random(100,300);
  float prevNoise = noise(0)*200 + 300;
  stroke(255,255,0);
  for(int i =0; i < width; i++){
    float actualRandom = random(100,300);
    line(i, prevRandom, i+1, actualRandom);
    prevRandom = actualRandom;
  }
  stroke(255,0,128);
  for(int i =0; i < width; i++){
    float actualNoise = noise(i*noiseScale)*200 + 300;
    line(i, prevNoise, i+1, actualNoise);
    prevNoise = actualNoise;
  }
}