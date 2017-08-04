void setup(){
  fullScreen();
}
void draw(){
for(int i = 0; i < 10; i = i+1){
    for(int j = 0; j < 10; j = j+1){
      colorMode(HSB);
      float r = random(255);//map(i, 0, 9, 0,255);
      float g = 255;//random(200,255); //int(map(j, 0, 9, 0,255));
      float b = 255;//random(0,100);
      fill(r,g,b);
      float tamano = random(40, 200);
      ellipse(i*100, j*100, tamano,tamano);
    }
  }
  
//for (int i = 0; i < 100; i++) {
//  float r = random(50);
//  stroke(r*5);
//  line(50, i, 50+r, i);
//}

}