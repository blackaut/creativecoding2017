import oscP5.*;
import netP5.*;
OscP5 oscP5;
int mouseOscX, mouseOscY;
void setup() {
  size(400,400);
    oscP5 = new OscP5(this,12000);//puerto que recibe  
}
void draw() {
  background(0);  
  ellipse(mouseOscX, mouseOscY,10,10);
}

void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/3/xy")==true) {
      mouseOscX = (int)(theOscMessage.get(0).floatValue()*width);
      mouseOscY = (int)(theOscMessage.get(1).floatValue()*height);
  }
}