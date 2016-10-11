// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

int cx = 250;
int cy = 250;
int r = 20;


void setup() {
  size(640, 360);

  // Define colors
  b1 = color(random(256), random(256), random(256));
  b2 = color(random(256), random(256), random(256));
  c1 = color(random(256), random(256), random(256));
  c2 = color(random(256), random(256), random(256));

  noLoop();
}

void draw() {
  setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  // fill(130);
  fill(random(256),random(256), random(256), random(256));
  stroke(random(256),random(256), random(256), random(256));
  
  float t = millis()/100.0f;
  int x = (int)(cx+r*cos(t));
  int y = (int)(cy+r*sin(t));
  
 
  ellipse((int)(40+20*cos(t)), (int)(40+20*sin(t)), 20, 20);
  
  ellipse((int)(80+30*cos(t)), (int)(80+30*sin(t)), 20, 20);
  
  ellipse((int)(120+40*cos(t)), (int)(120+40*sin(t)), 20, 20);
  
  ellipse((int)(180+60*cos(t)), (int)(180+60*sin(t)), 20, 20);
  
  //ellipse((int)(100+60*cos(t)), (int)(300+60*sin(t)), 20, 20);
  
  
  loop();
 
}

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