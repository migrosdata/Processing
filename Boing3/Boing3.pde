float currentHeight;
float currentWidth;
float currentY = 0;

void setup() {
  size(640, 640);

  currentWidth = width/8;
  currentHeight = height/16;

  background(0);
}

void draw() {
  fill(255);
  noStroke();

  if (currentY >= height) {
    background(0);
    currentY = 0;
    currentWidth = width/8;
  }

  rect(0, currentY, currentWidth, currentHeight);  
  currentWidth+=width/8;

  if (currentWidth > width) {
    currentWidth = width/8;
    currentY += currentHeight;
  }

  delay(50);
}

