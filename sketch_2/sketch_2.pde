 void setup(){
  size(800, 500);
  background(000);
 

};

void draw(){
  
 int randomForm= int(random(4));
 float randomX = random(0,801);
 float randomY = random(0,501);
       
 dibujar(randomForm,randomX, randomY);
     
  
};

void dibujar(int a, float x, float y){
   fill(random(256),random(256), random(256), random(256));
   stroke(random(256),random(256), random(256), random(256));
 
  switch(a){
    case 1:
    ellipse(x, y, random(30,100), random(30,100));
    
    break;
    
    
    case 2:
    triangle(x, y, x-40, y+60, x+40, y+60);
    break;
    
    case 3:
    rect(x, y, random(30,100), random(30,100), random(30,60));
    break;
    
  }
  
};

void mouseClicked() {
  background(random(256),random(256), random(256), random(256));
}