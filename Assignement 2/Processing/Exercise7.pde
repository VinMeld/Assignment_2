class Exercise7 {
  int sevenx = 0;
  int seveny = 0;
  int sevenz = 255;
  void setup() {
  }
  void draw() {


    sevenx= 0;
    seveny= 0;
    for (int sevenk = 0; sevenk<20; sevenk++) {
      seveny+=20;

      sevenx=0;
      for (int i = 0; i < width; i++) {
        sevenx+=20;
        fill(sevenx, seveny, sevenx+seveny);
        stroke(0);
        ellipse(sevenx, seveny, 20, 20);
      }
    }
    for (int i = 255; i > 0; i-=5) {
      noStroke();
      sevenz--;
      fill(222, i, sevenz);
      ellipse(200, 600, i, i);
    }
  }
}