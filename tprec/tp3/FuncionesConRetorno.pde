// función propia CON parámetros que SÍ retorna un valor
float calcularRadio(int anillo, float radioMax) {
  return sq((float)anillo / (numAnillos - 1)) * radioMax;
}
