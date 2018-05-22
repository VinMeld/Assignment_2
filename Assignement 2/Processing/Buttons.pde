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
  void draw(){
    if(y <=0){
        returnButton(); 
     }else{
      addButton(); 
     }
  }
  void addButton() {
    fill(255);
    rect(x, y, size, size);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(textFontSize);
    text(input, x+size/2, y+size/2);
    //text(input, sqrt(pow(size/2, 2) * 2)+x-30, sqrt(pow(size/2, 2) * 2)+y-15);
    //text(input, x, y);
  }

  void removeButton() {
    y -= 1000;
  }

  void returnButton() {   

    y += 1000;
  }
  boolean press() {
    if (mouseX > x && mouseX < x+size && mouseY > y && mouseY < y+size) {
      return true;
    } else {
      return false;
    }
  }
}