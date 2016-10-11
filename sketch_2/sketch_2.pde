  PImage img1; 
  PImage img2;
  PImage img3;
  PImage img4;
  PImage img5;
  PImage img6;
  PImage img7;
  PImage img8;
  int sizeX=1000;
  int sizeY=700;
  int Y_AXIS = 1;
  int X_AXIS = 2;
  color b1, b2, c1, c2;
     
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
  img8 = loadImage("3.jpg");
  
 

};

void draw(){
  
 int randomForm= int(random(7));
 float randomX = random(0,sizeX+1);
 float randomY = random(0,sizeY+1);
 
       
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
   b1 = color(random(256), random(256), random(256));
  b2 = color(random(256), random(256), random(256));
  c1 = color(random(256), random(256), random(256));
  c2 = color(random(256), random(256), random(256));
   setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
    setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  //background(random(256),random(256), random(256), random(256));
};

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}