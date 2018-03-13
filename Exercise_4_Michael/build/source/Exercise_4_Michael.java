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

public class Exercise_4_Michael extends PApplet {

// Michael Lam
// March 9, 2018
// Beautiful, growing, colourful circles.

float x = 0;
float y = 0;

public void setup(){
  background(0);
  
  noStroke();
  colorMode(HSB);
}

public void draw() {
  x += 0.2f;
  y += 0.6f;
  fill(50 + x % 255, 50 + x % 255, 255);
  ellipse(300, 0+y, x, y);
  ellipse(0+x, 400, x, y);
}
  public void settings() {  size(600, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercise_4_Michael" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
