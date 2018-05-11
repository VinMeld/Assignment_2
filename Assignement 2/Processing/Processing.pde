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
String userAPassword = "CatsAreGood";
String userBPassword = "DogsAreBad";
String superiorPassword = "ChildrenCanBeAnnoying";

void settings() {
  size(600, 600);
}

void setup() {
  int x = 0;
  b.add(new Buttons(x, x, 255, "df", 20));
  b.add(new Buttons(300, 300, 255, "cars", 20));
  println(b);
}

void draw() {
  background(0);
  Buttons b1 = b.get(0);
  Buttons b2 = b.get(1);
  b1.addButton();
  b2.addButton();
  println(b.size());
}

void mouseClicked() {

}
