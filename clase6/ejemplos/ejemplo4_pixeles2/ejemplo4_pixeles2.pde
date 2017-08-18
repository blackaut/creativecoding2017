PImage img;
color muestraColor;
void setup(){
  size(400,400);
  img = loadImage("perro.jpg");
}
int indicePixel(int x, int y, int anchoImg){
   return x +  y * anchoImg;
}
void draw(){
  background(0);
  image(img,0,0);
  loadPixels();
  for(int i = 0; i < pixels.length; i++){
   if(hue(pixels[i]) > hue(muestraColor) ){
     pixels[i] = muestraColor; 
   }
  }
  updatePixels();
//  image(img, 0,0);
  fill(muestraColor);
  rect(0,img.height,100,100);
}
void mouseReleased(){
  muestraColor =img.get(mouseX, mouseY);
}