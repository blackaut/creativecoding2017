int[] x = new int[4];
int[] y = {200, 300,400,500};

void setup(){
  fullScreen();
  hacerRandomX();
}
void draw(){
  background(0);
  for(int i =0; i < x.length; i++){ 
    rect(x[i], y[i], 50,50);
  }
}
void hacerRandomX(){
  for(int i =0; i < x.length; i++){
    x[i] = int(random(width));
  }
}
void mouseReleased(){
  hacerRandomX();
}