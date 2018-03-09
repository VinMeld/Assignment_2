// Michael Lam
// March 9, 2018
// Beautiful, growing, colourful circles.

float x = 0;
float y = 0;
float h = 0;
float s = 0;

void setup(){
  background(0);
  size(600, 800);
  noStroke();
  colorMode(HSB);
}

void draw() {
  x += 0.6;
  y += 0.6;
  h += 0.6;
  s += 0.6;
  fill(50 + h % 255, 50 + s % 255, 255);
  ellipse(300, 0+y, x, y);
  ellipse(0+x, 400, x, y);
}