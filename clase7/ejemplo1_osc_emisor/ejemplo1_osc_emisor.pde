import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400,400);
  frameRate(25);
  
  oscP5 = new OscP5(this,12344);  
  myRemoteLocation = new NetAddress("127.0.0.1",12345);
}
void draw() {
  background(0);  
}
void mouseMoved(){
  OscMessage myMessage = new OscMessage("/mouse");  
  myMessage.add(mouseX); /* add an int to the osc message */
  myMessage.add(mouseY);
  oscP5.send(myMessage, myRemoteLocation); 
}
void mousePressed() {

 
}