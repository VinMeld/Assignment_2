
void setup(){
  background(255);
 size(600, 600);
}
void draw(){
   noFill();
   strokeWeight(8);
   stroke(255,65,8);
   arc(450,350,600,600,PI,PI+HALF_PI);
   strokeWeight(12);
   stroke(255,5,40);
   arc(425,325,600,600,PI,PI+HALF_PI);
   strokeWeight(10);
   stroke(255,10,90);
   arc(475,355,600,600,PI,PI+HALF_PI);
   strokeWeight(11);
   stroke(0,255,0);
   arc(425,375,600,600,PI,PI+HALF_PI);
      
      strokeWeight(8);
   stroke(255,65,28);
   arc(300-50,350-50,600,600,0,PI-HALF_PI);
   strokeWeight(12);
   stroke(25,255,40);
   arc(300-75,350-50,600,600,0,PI-HALF_PI);
   strokeWeight(10);
   stroke(255,10,255);
   arc(300-100,350-50,600,600,0,PI-HALF_PI);
   strokeWeight(11);
   stroke(0,0,255);
   arc(300-50,350-25,600,600,0,PI-HALF_PI);
   

}