float x = PI;
float movement = 0;
float n;
color[] colors = {color(255), color(0, 255, 0)};
float p = 100;
float z = 15;

void setup() {
  size(500, 500);
  noFill();
  strokeWeight(2);
}

void draw() {
  float t = random(20);
  background(0);
  n = 5;
  int colorToUse = 0;
  while (n < 400) {
    stroke(colors[colorToUse % colors.length]);
    colorToUse++;
    arc(width/2, height/2, n, n, PI, x);
    x = map(sin(movement + n/p), -1, 1, PI, TWO_PI);
    n += z;
  }
  movement+= PI/60;
  if (keyPressed && key == ' ') {
   z = t;
  }
}
