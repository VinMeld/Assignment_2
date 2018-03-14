float x = 0;
int a = -50;
int b = -50;
int c = -50;
int d = -50;
int e = -50;
int f = -50;
int g = -50;
int h = -50;
int i = 0;
int j = 1;
void setup(){
 size (400,800); 
 background(0);
 colorMode(HSB, 360, 100, 100);
  
}
void draw(){
  a+=7;
  i+=1;
  j+=1;
  x=2;
  if (a > 800){
   b+=7; 
   
  }
    if (b > 800){
   c+=7; 
    
  }
    if (c > 800){
   d+=7; 
    
  }
    if (d > 800){
   e+=7; 
    
  }
    if (e > 800){
   f+=7; 
    
  }
    if (f > 800){
   g+=7; 
    
  }
    if (g > 800){
   h+=7; 
    
  }
    fill(i % 255,j % 255,100);
   ellipse(x,a,50, 50); 
   ellipse(x+50,b,50, 50); 
   ellipse(x+100,c,50, 50); 
   ellipse(x+150,d,50, 50); 
   ellipse(x+200,e,50, 50); 
   ellipse(x+250,f,50, 50); 
   ellipse(x+300,g,50, 50); 
   ellipse(x+350,h,50, 50); 
}