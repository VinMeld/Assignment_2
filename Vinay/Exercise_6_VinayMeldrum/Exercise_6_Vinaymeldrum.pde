float x = 0;
float y= 0;
void setup() {
  size (600, 800); 
  background(0);
  colorMode(RGB, 255);
}
void draw() {
  x= 0;

  while (x<width) {
    y= 5;
    x+=16;
    while (y<height) {
      y+=16;
      if (x<mouseX && y < mouseY) {
        fill ((x % 32 )/ 16 *255 , (y%32)/16*255,(x+y %32) /16 * 255);
        stroke(255);
        ellipse(x, 10, 10, 10);
        ellipse(x, y, 10, 10);
      } else {
        fill(0);
        stroke(0);
        ellipse(x, 10, 10, 10);
        ellipse(x, y, 10, 10);
      }
    }
  }
}
//Keep going until there are as many circles as the width of the screen.