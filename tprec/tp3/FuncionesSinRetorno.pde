// función propia CON parámetros que NO retorna valor
void dibujarObra(int offX, int offY, int w, int h) {
  float cx = offX + w / 2.0, cy = offY + h / 2.0;
  float radioMax = dist(0, 0, w / 2.0, h / 2.0) - 8;   // dist()
  push();
  translate(cx, cy);       
  rotate(anguloObra);       // rotate para el mouse dragg
  noStroke();
  int idx = 0;
  for (int anillo = 0; anillo < numAnillos; anillo++) {          // mi for anidado
    float r = calcularRadio(anillo, radioMax);
    float diam = map(anillo, 0, numAnillos, 5, 30);
    int cant = (anillo == 0) ? 1 : int(map(anillo, 0, numAnillos, 8, 30));
    for (int k = 0; k < cant; k++) {                            
      float ang = map(k, 0, cant, 0, TWO_PI) + anillo * 0.6;
      float x = cos(ang) * r, y = sin(ang) * r;
      if (semilla >= 0) { randomSeed((int)(semilla + idx)); fill(random(255), random(255), random(255)); }
      else fill(255);
      ellipse(x, y, diam, diam);
      idx++;
    }
  }
  pop();
}

// evento de mouse -> modifica variable (rotación sobre su propio eje)
void mouseDragged() { if (mouseX > panelW) anguloObra += (mouseX - pmouseX) * 0.01; }

// evento de teclado -> modifica variables (color / reinicio)
void keyPressed() {
  if (key == 'c' || key == 'C') semilla = random(100000);
  else if (key == 'r' || key == 'R') { semilla = -1; anguloObra = 0; }
}
