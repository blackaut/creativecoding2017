float vel = 0.1;
int tiempoInicio = 0;
float duracion = 2000;
void setup(){
  fullScreen();
}
void draw(){
  background(255);
  float t = map(millis(), tiempoInicio, tiempoInicio + duracion, 0, width); 
  ellipse(t*vel,100,100,100);
}
void keyReleased(){
  if(key == ' '){
    tiempoInicio = millis();
  }
}