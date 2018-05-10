Buttons[] button = new Buttons[13];
int decider;


void settings() {
  size(600, 600);
}

void setup() {
  decider = 1;

  /* for (int i = 1; i < 13; i++) {
   button[i] = new Buttons(x, 250, 50);
   x += 50;
   }
   button[0] = new Buttons(200,200,250);*/
}
void draw() {
  //background(0);
  /*for (int i = 0; i < 13; i++) {
   button[i].addButton();
   }*/
   if(decider ==1){
    userA();
   }
}

void mousePressed() {
  // if (decider == 1) {
  //if (mouseX < width/2-200 && mouseX > width/2+200 && mouseY < height/2-200 && mouseY > height/2+200) {
  button[0].returnPosition();
 // println(y);
  //}
  //}
  /*for (int i = 0; i < 2; i++) {
   button[i].remove();
   }*/
}
void userA() {
  button[0] = new Buttons(width/2, height/2, 200, "Exercise Set A", 40);
  button[0].addButton();
  decider = 2;
}
