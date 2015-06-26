import codeanticode.syphon.*;

SyphonServer server;

int currentWidth = 0;
int currentHeight = 0;
int currentX;
int currentY;

void setup() {
  size(500, 500, P2D);
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon 2");
  background(0);
  currentX = width - 30;
  currentY = height - 30;
}

void draw() {
  print(currentX);
  noStroke();
  rect(0, 0, currentWidth, 30);
  currentWidth+=5;

  if (currentWidth >= width) {
    rect(width - 30, 30, 30, currentHeight);
    currentHeight+=5;
  }

  if (currentHeight >=height) {
    /*
    currentWidth = 0;
     currentHeight = 0;
     clear();
     */
    rect(currentX, height - 30, width, 30);
    currentX-=5; 
    print(currentX);
  }

  if (currentX < 0) {
    rect(0, currentY, 30, height);
    currentY-=5;
  }

  if (currentY <= 0) {
    currentWidth = 0;
    currentHeight = 0;
    currentX = width - 30;
    currentY = height - 30;
    clear();
  }

  server.sendScreen();
}  

