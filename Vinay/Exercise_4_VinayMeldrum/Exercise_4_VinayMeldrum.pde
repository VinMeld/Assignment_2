  float x = 0;
  float y = 0;
  int z = 400;
  float q= 0;
  float d = 0;
  float k = 0;
  float i = 0;
  float j =0;

void setup() {
 size (600,800); 
 background(0);
 noStroke();
 colorMode(HSB, 360, 100, 100);
}
void draw() {
  x +=0.4;
  y +=0.2;
  z +=.2; 
  q += 2;
  d+= .2;
  k += .2;
  i += 1;
  j += 1;  

  fill(i % 255,j % 255,100);
  //fill(255,255,255);
  ellipse(x,z,y,y);
  //fill (255,255, 255);
  ellipse(300,q,d, k); 
}