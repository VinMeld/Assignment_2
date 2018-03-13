import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Exercise_5_Michael extends PApplet {

// Michael Lam
// March 13, 2018
// Colourful circles drawn diagonally.

float a = 0; // Moves circles horizontally
float c = 0; // Changes colour of circles
float x = 0; // Draws circles horizontally
float y = 0; // Draws circles vertically

public void setup(){
  background(0);
  
  strokeWeight(1);
  colorMode(HSB);
}

public void draw() {
  c += 4;
  x += 1;
  y += 15;
  fill(50 + c % 255, 50 + c % 255, 255);
  ellipse(a+x, 0+y, 75, 75);
  if (y == 825) {
    c = 0; // Resets colours
    y = 0; // Resets y position of circles back to top
    a += 2; // Increases the x position of circles to the right
  }
}

// Code is probably garbage but it's 1AM.
  public void settings() {  size(600, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercise_5_Michael" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
