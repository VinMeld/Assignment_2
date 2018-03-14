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

public class Exercise_6_Michael extends PApplet {

// Michael Lam
// March 13, 2018
// Beautiful circles that follow the mouse.

float x ;
float y;

public void setup() {
  background(255);
  
  noStroke();
  colorMode(HSB);
}

public void draw() {
  x = 0;
  while (x < width) {
    x += 16; // Draws circles 20px horizontally apart from each other.
    y = 0;
    while (y < height) {
      y += 16; // Draws circles 20px vertically apart from each other.
      if (x < mouseX && y < mouseY) {
        fill (50 + x % 255, 50 + x % 255, 255);
        ellipse (x, y, 15, 15);
      } else {
        fill (255); // Colours circles white when x & y > mouse coordinates.
        ellipse (x, y, 15, 15);
      }
    }
  }
}
  public void settings() {  size(600, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercise_6_Michael" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
