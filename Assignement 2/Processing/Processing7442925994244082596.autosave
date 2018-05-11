class Buttons {
  float x, y, size, textFontSize;
  String input;
  Buttons(float tempX, float tempY, float tempSize, String tempinput, int tempTextSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    input = tempinput;
    textFontSize = tempTextSize;
  }

  void addButton() {
    fill(255);
    rect(x, y, size, size);
    fill(0);
    textSize(textFontSize);
    text(input, sqrt(pow(size/2, 2) * 2)+x-30, sqrt(pow(size/2, 2) * 2)+y-15);
    //text(input, x, y);
  }

  void removeButton() {
    y -= 1000;
  }

  void returnButton() {
    y += 1000;
  }
  void press() {
    if (mouseX > x && mouseX < x+size && mouseY > y && mouseY < y+size) {
      //    b1.removeButton();
    } else {
      //  b1.returnButton();
    }
  }
}

ArrayList<Buttons> b = new ArrayList<Buttons>();

void settings() {
  size(600, 600);
}

void setup() {
  //  b1 = new Buttons(0, 0, 300, "Albert", 40);
  b.add(new Buttons(255, 255, 255, "df", 50));
  println(b);
}

void draw() {
  background(0);
  //for (Buttons p : b) {
  //  p.addButton();
  //}
  //b.addButton();
  Buttons b1 = b.get(0);
  b1.addButton();
}

void mousePressed() {
}
