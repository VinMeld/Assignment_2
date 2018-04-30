
float[] xLines = new float[49];
float[] yLines = new float[49];


void setup(){
  size(600, 600);
}

void draw(){
  xValues();
  yValues();
  decidingWall();
}

void xValues(){
  for(int i = 0; i < lines.length; i+=1) {
    xLines[i] += (int)random(width);
  }
}

void yValues(){
  for(int i = 0; i < lines.length; i+=1) {
    yLines[i] += (int)random(height);
  }
}

void decidingWall(){
  if (yLines < 300) {
    line(random(width), 0, xLines, yLines);
  } else if (yLines > 300) {
    line(random(width), 600, xLines, yLines);
  } else if (yLines == 300) {
    line(random(width), 0, xLines, yLines); // Fix later.
  }
}

//line(0, lines[i],600, lines[i]);
