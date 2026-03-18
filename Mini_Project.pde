//Peter Shumway | Mar 18 | Mini Project
int x = 200;
int y = 200;
int size = 50;
int score = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  // draw target
  fill(255, 0, 0);
  ellipse(x, y, size, size);

  // score text
  fill(0);
  textSize(16);
  text("Score: " + score, 10, 20);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, x, y);

  if (d < size / 2) {
    score = score + 100;

    // move target randomly
    x = (int)random(width);
    y = (int)random(height);
  }
}
