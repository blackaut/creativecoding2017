PImage img;
void setup(){
  size(400,400);
  img = loadImage("perro.jpg");
}
int indicePixel(int x, int y, int anchoImg){
   return x +  y * anchoImg;
}
void draw(){
  background(0);
  image(img, 0,0);
  img.loadPixels();
  int indice = indicePixel(mouseX, mouseY ,img.width);
  if(indice < img.pixels.length){
    fill(img.pixels[indice]);
  }
  fill(img.get(mouseX, mouseY));
  rect(0,img.height, 100,100);
}