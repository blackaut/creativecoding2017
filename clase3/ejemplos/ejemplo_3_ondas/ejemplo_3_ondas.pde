void setup(){
  size(500,500);
}

void draw(){
  //background(255,0,127);
  
  //pongan el modo tweak para que  puedan cambiar los valores sin cerrar la aplicación.
  //Ejercicios:
  //     sumar los resultados de multiples llamadas a onda(...) con diferentes argumentos cada vez.
  //     utilizar el ciclo for en conjunto con onda(...)
  ellipse(onda(0.4,100,400,0),
          onda(0.4,100,400, PI),1,1);
}


/// Función onda.
/// esta devuelve el valor en una onda sinusoidal.
/// argumentos:
/// float frecuencia: frecuencia con la que escila esta onda. Expresado en ciclos (vuelvas completas) por segundo.
/// float minimo: valor mínimo de la onda
/// float maximo: valor máximo de la onda
/// float fase: determina que tan desfazada esta la onda. expresada en radianes.
float onda(float frecuencia, float minimo, float maximo, float fase){
  return map(sin((millis()/1000.0+fase)*frecuencia*TWO_PI), -1,1, minimo, maximo);
}