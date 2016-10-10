void setup(){
  size(1000, 700);
  background(255);
 
};

 int x1= 0;
 int y1= 0;
 
void draw(){
  
 
 int x2= int(random(1001));
 int y2= int(random(701));
 int a= int(random(2));
 
 stroke(random(256),random(256),random(256));
 
 switch(a){
  case 1:
  strokeWeight(random(5));
  line(x1, y1, x2, y2 );
  break;
  
  case 2:
   //curve(random(20), random(20), x1, y1, x2, y2, random(20), random(20));
  //bezier(x1, y1, random(20), random(20), random(20), random(20), x2, y2);
  break;
}
 
 

   x1=x2;
   y1=y2;
   
     
  
};
 /*
int n;
void keyPressed() {
  // get the value of the key pressed
  n = int(key);  // int('0') = 48
  n = n - 48;
  if(n >= 0 && n <= 9){
    println("Valid digit: " + n);
  }
  else {
    println("Invalid you pressed " + key);
  }
} 

*/

void mouseClicked() {
  background(random(256),random(256), random(256), random(256));
}