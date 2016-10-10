  PImage img1; 
  PImage img2;
  PImage img3;
  PImage img4;
  PImage img5;
  PImage img6;
  PImage img7;
  PImage img8;
     
 void setup(){
  size(1000, 700);
  background(000);
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.png");
  img5 = loadImage("5.png");
  img6 = loadImage("6.png");
  img7 = loadImage("7.png");
  img8 = loadImage("8.gif");
  
 

};

void draw(){
  
 int randomForm= int(random(11,14));
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
    
    case 4:
    tint(random(256), random(256), random(256));
    image(img1, x, y,random(30,100),random(30,100));
    break;
    
    case 5:
    tint(random(256), random(256), random(256));
    image(img2, x, y,random(30,100),random(30,100));
    break;
    
    case 6:
    tint(random(256), random(256), random(256));
    image(img3, x, y,random(30,100),random(30,100));
    break;
    
    case 7:
    tint(random(256), random(256), random(256));
    image(img4, x, y,random(30,100),random(30,100));
    break;
    
    case 8:
    tint(random(256), random(256), random(256));
    image(img5, x, y,random(30,100),random(30,100));
    break;
    
    case 10:
    tint(random(256), random(256), random(256));
    image(img6, x, y,random(30,100),random(30,100));
    break;
    
    case 11:
    tint(random(256), random(256), random(256));
    image(img7, x, y,random(30,100),random(30,100));
    break;
    
    case 12:
    tint(random(256), random(256), random(256));
    image(img8, x, y,random(30,100),random(30,100));
    break;
  }
  
};

void mouseClicked() {
  background(random(256),random(256), random(256), random(256));
}