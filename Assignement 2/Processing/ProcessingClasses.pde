class Buttons {
  float x, y, size;
  String text;
  int textSize;

  Buttons(float tempX, float tempY, float tempSize, String tempText, int tempTextSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    text = tempText;
    textSize = tempTextSize;
  }

  void addButton() {
    rect(x, y, size, size);
  }

  void removeButton() {
    y += 1000;
    //println(y);
  }

  void returnPosition() {
    y -= 1000;
  }

  void center() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, size, size);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(textSize);
    text(text, width/2, height/2);
  }
}
