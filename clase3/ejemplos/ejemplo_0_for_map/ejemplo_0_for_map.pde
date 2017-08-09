void setup() {
    fullScreen();
 //size(400,400);
  }

void draw() {
  background(255);
  for(int i = 0; i < 10; i = i+1){
    for(int j = 0; j < 10; j = j+1){
      float r = map(i, 0, 9, 0,255);
      int g = int(map(j, 0, 9, 0,255));
      float m = map(mouseX, 0,width, 0,10); 
      float b = map(sin(m*millis()/1000.0),-1,1,0,255);
      fill(r,g,b);
      float margen = 200;
      float x = map(i, 0, 9, margen, width-margen);
      float y = map(j, 0, 9, margen, height-margen);
      ellipse(x, y, 150,150);
    }
  }
}