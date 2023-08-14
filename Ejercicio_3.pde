float x, y, speed, angle;

void setup() {
  size(800, 600);
  noStroke();
  x = width/2;
  y = height/2;
  speed = 5;
  angle = 0;
}

void draw() {
  background(255);
  
  x += speed * cos(angle);
  y += speed * sin(angle);
  angle += 0.1;
  

  fill(128, 0, 128); 
  drawStar(x, y, 50, 100, 5);
}

void drawStar(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
