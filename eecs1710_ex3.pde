 float rotSeconds = 0;
float rotMinutes = 0;
float lengthHand1 = 200;
float lengthHand2 = 100;
int lastSecond = 0;
int lastMinute = 0;

color Outline_color = color(0);
color Secondhand_color = color(250, 0, 200);
color Clock_color = color(250, 0, 200);

void setup() {
  size(800, 600, P2D);  
  strokeWeight(5);
   
}

void draw() {
  fill(Clock_color);
  stroke(Outline_color);
  ellipse(width/2, height/2, 500, 500);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotSeconds));
  line(0, 0, lengthHand1, 0);
  ellipse(lengthHand1, 0, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotMinutes));
  line(0, 0, lengthHand2, 0);
  ellipse(lengthHand2, 0, 10,10);
  popMatrix();
  
  int s = second();
  int m = minute();
  
  if (s != lastSecond) {
    rotSeconds += 6;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rotMinutes += 6;  
    lastMinute = m;
  }
}
