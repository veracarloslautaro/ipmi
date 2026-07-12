//https://youtu.be/1A4Thi5A5mI

PImage img;
int panelW = 400, numAnillos = 14;
float anguloObra = 0, semilla = -1;

void setup() { size(800, 400); img = loadImage("ilusion.png"); }

void draw() {
  background(255);
  image(img, 0, 0, panelW, height);
  fill(0);
  rect(panelW, 0, panelW, height);
  dibujarObra(panelW, 0, panelW, height);
}
