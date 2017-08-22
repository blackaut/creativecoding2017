import oscP5.*;
import netP5.*;
OscP5 oscP5;
int mouseOscX, mouseOscY;
void setup() {
  size(400,400);
    oscP5 = new OscP5(this,12345);//puerto que recibe  
}
void draw() {
  background(0);  
  ellipse(mouseOscX, mouseOscY,10,10);
}

void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/mouse")==true) {
      mouseOscX = theOscMessage.get(0).intValue();
      mouseOscY = theOscMessage.get(1).intValue();
  }
}