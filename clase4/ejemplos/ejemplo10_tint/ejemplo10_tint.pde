PImage img1;
PImage img2;
void setup(){
  fullScreen();
  //size(640,360);
  img1 = loadImage("layer1.jpg");
  img2 = loadImage("layer2.jpg");
}
void draw(){
  background(255,255,0);
  float m =map(mouseX, 0, width, 0,255);
  
  tint(255);
  blendMode(BLEND);
  image(img1, 0,0);

  tint(255,255,255, m );
  blendMode(ADD);
  filter(BLUR, 10);
  //
  image(img2,0,0);
}