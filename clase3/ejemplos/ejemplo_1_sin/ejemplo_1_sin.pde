void setup(){
   size(400,400);
}
void draw(){
  background(255);
  
  //La función millis entrega la cantidad de milisegundos(milésimas de segundo) transcurridos desde que se inició la ejecución del código.
  //Al dividir el resultado de  ésta por mil obtenemos la cantidad de segundos
  float seg = millis()/1000.0;
  
  
  // La funcion sin(float anguloEnRadianes) devuelve el seno del angulo que se le entrega como argumento.
  // Este ángulo está expresado en radianes. Una vuelta completa (360 grados), en radianes es 2 veces PI.
  // Por lo tanto si a esta función le entregamos la cantidad de segundos transcurridos multiplicado por 2PI obtenemos una oscilación completa cada segundo.
  // El seno, tanto como el coseno, SIEMPRE entregan un valor entre -1 y 1.
  float seno = sin(seg*TWO_PI);
  
  float x = map(seno,-1,1, width/2, width );

  int r = int(map(sin(seg), -1, 1, 0, 255));
  
  fill(r,0,0);
  
  ellipse(x,height/2,200,200);

}