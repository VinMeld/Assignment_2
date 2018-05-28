class Exercise6 {
  float sixx = 0;
  float sixy= 0;
  void setup() {
  }
  void draw() {
    colorMode(RGB, 255);
    sixx= 0;
    while (x<width) {
      sixy= 5;
      sixx+=16;
      while (y<height) {
        sixy+=16;
        if (x<mouseX && y < mouseY) {
          fill ((sixx % 32 )/ 16 *255, (sixy%32)/16*255, (sixx+sixy %32) /16 * 255);
          stroke(255);
          ellipse(sixx, 10, 10, 10);
          ellipse(sixx, sixy, 10, 10);
        } else {
          fill(0);
          stroke(0);
          ellipse(sixx, 10, 10, 10);
          ellipse(sixx, sixy, 10, 10);
        }
      }
    }
  }
}