class Bubbles {
  int x, y, colour1;
  Bubbles(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  void display() {
    fill(colour1);
    ellipse(x, y, 64, 64);
  }

  void ascend() {
    y--;
  }

  void top() {
    if (y == 0) {
      y = height;
    }
  }
  void changeColour() {
    colour1 = int(random(1, 255));
  }
}

Bubbles[] bubble = new Bubbles[4];

void settings() {
  size(600, 600);
}

void setup() {
  bubble[0] = new Bubbles(5, height);
  bubble[1] = new Bubbles(135, height);
  bubble[2] = new Bubbles(222, height);
  bubble[3] = new Bubbles(321, height);
}

void draw() {
  background(255);
  for (int i = 0; i < 4; i++) {
   bubble[i].display();
   bubble[i].ascend();
   bubble[i].top();
  }
}

void mousePressed() {
 for (int i = 0; i < 4; i++) {
  bubble[i].changeColour();
 }
}
