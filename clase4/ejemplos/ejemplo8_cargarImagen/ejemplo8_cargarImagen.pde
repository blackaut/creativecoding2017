PImage imagen1;

void setup(){
  fullScreen();
  //imagen1 = loadImage("logo_blackaut.png");
  imagen1 = loadImage("4.png");  
}
void draw(){
  background(255,0,0);
  image(imagen1, mouseX, mouseY);//, 50,50);
  for(int i = 0; i < width; i += imagen1.width){
    for(int j = 0; j < height; j += imagen1.height){
      image(imagen1, i, j);
    }
  }
}