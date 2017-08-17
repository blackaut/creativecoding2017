class Contador {
  int cuenta=0;
  int tiempoContador;
  boolean bAndando = false;
  Contador(int t){
    inicializar(t);
  }
  void inicializar(int t) {
    tiempoContador = t;
  }
  float mapear(float inicio, float fin ){
    return map(getTiempoActual(), 0, tiempoContador, inicio, fin);
  }
  int getTiempoActual(){
    if(bAndando){
    return millis() - cuenta;
    }
    return 0;
  }
  void start(){
    cuenta = millis();
    bAndando = true;
  }
  boolean actualizar() {
    if(bAndando){
      if (millis() - cuenta >= tiempoContador) {
        cuenta = millis();
        //bAndando = false;
        return true;
      }
    }
    return false;
  }
}