PImage img1;
PImage img2;

void setup(){
  fullScreen();
  img1 = loadImage("layer1.jpg");
  img2 = loadImage("layer2.jpg");
}
void draw(){
  background(0);
  //if(mousePressed){
    image(img1, 0,0);
  //}else{
    blend(img2, mouseX,0,100, 100,
          mouseX,0,100,100,//img2.width, img2.height, 
          ADD);
  //}
}