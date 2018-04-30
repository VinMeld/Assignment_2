int x = 0;
int y = 0;
int z = 255;
void setup() {
  size (400, 800); 
  background(0);
}
void draw() {
  x= 0;
  y= 0;
  for (int k = 0; k<20; k++) {
    y+=20;

    x=0;
    for (int i = 0; i < width; i++) {
      x+=20;
      fill(x, y, x+y);
      stroke(0);
      ellipse(x, y, 20, 20);
    }
  }
  for (int i = 255; i > 0; i-=5) {
    noStroke();
    z--;
    fill(222, i, z);
    ellipse(200, 600, i, i);
  }
}