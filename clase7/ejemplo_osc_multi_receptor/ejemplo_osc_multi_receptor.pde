import oscP5.*;
import netP5.*;
OscP5 oscP5;
//int mouseOscX, mouseOscY;
class Alumno{
  int x, y;
  String nombre;
  color col;
  void dibujar(){
    fill(col);
    ellipse(x, y, 10,10);
    fill(255);
    text(nombre, x, y);
  }
  
};
Alumno alumnos [] = new Alumno [6];
void setup() {
  size(400,400);
    oscP5 = new OscP5(this,12345);//puerto que recibe  
    for(int i = 0; i < alumnos.length; i++){
      alumnos[i] = new Alumno();
      alumnos[i].col = color(random(255),random(255),random(255));
    }
    alumnos[0].nombre = "kurt";
    alumnos[1].nombre = "felipefierro";
    alumnos[2].nombre = "maria";
    alumnos[3].nombre = "ivan";
    alumnos[4].nombre = "felipebarrientos";
    alumnos[5].nombre = "karina";
}
void draw() {
  background(0);  
  for(int i = 0; i < alumnos.length;i++){
   alumnos[i].dibujar();
  }
}

void oscEvent(OscMessage theOscMessage) {
  for(int i = 0; i < alumnos.length;i++){
  if(theOscMessage.checkAddrPattern("/"+alumnos[i].nombre)==true) {
      alumnos[i].x = theOscMessage.get(0).intValue();
      alumnos[i].y = theOscMessage.get(1).intValue();
  }
  }
}