class Buttons {
  int x, y, size;
  String text;
  int textSize;
  Buttons(int tempX, int tempY, int tempSize/*, String tempText, int tempTextSize*/) {
    x = tempX;
    y = tempY;
    size = tempSize;
    //text = tempText;
    //textSize = tempTextSize;
  }

  void addButton() {
    fill(255);
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

Buttons[] button = new Buttons[13];
int x = 0;

void settings() {
  size(600, 600);
}

void setup() {
  //userA();
}

void draw() {
  background(0);
  //background(0);
  for (int i = 0; i < 13; i++) {
    button[i] = new Buttons(x, 250, 50);
    println(button[i]);
    x += 50;
  }

  for (int i = 0; i < 13; i++) {
    button[i].addButton();
  }
}

void mousePressed() {
  button[0].removeButton();
  /*for (int i = 0; i < 2; i++) {
   button[i].remove();
   }*/
}
/*
void userA() {
 button[0] = new Buttons(width/2, height/2, 200);
 println(y);
 button[0].addButton();
 }
 */
