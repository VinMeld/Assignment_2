int x = 0;
int y = 0;
void setup() {
  size (400, 800); 
  background(0);
}
void draw() {
  x= 0;
  y= 0;
  for (int k = 0; k<20; k++) {
   y+=20;
    for (int i = 0; i < width; i++) {
      x+=20;
      ellipse(x, y, 20, 20);
    }
  }
}