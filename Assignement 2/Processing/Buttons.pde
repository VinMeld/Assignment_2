class Buttons {
  float x, y, size, textFontSize;
  String input;
  //Making a constructer so you can customize your buttons with ease.
  Buttons(float tempX, float tempY, float tempSize, String tempinput, int tempTextSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    input = tempinput;
    removeButton();
    textFontSize = tempTextSize;
  }
  void draw() {
    //If the button is pressed, then it goes off the screen. But, you need to return it after pressing back. So what this does, is returns it when you call .draw on a object of class Buttons.
    if (y <=0) {
      returnButton();
    } else {
      addButton();
    }
  }
  void addButton() {
    //Pretty self explanitory, creates a rectangle with text inside of it.
    strokeWeight(1);
    stroke(1);
    fill(255);
    rect(x, y, size, size);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(textFontSize);
    text(input, x+size/2, y+size/2);
    //I did some math, to calculate the exact midpoint, it didn't work too well, but I decided to keep it here because I spent a grand total of 15 minutes getting this formula.
    //text(input, sqrt(pow(size/2, 2) * 2)+x-30, sqrt(pow(size/2, 2) * 2)+y-15);
    //text(input, x, y);
  }

  void removeButton() {
    //Just removes the button by putting it off the screen.
    y -= 1000;
  }

  void returnButton() {   
  //Returns it from off the screen.
    y += 1000;
  }
  boolean press() {
    //Just seeing if your mouse is pressing on the button.
    if (mouseX > x && mouseX < x+size && mouseY > y && mouseY < y+size) {
      return true;
    } else {
      return false;
    }
  }
}