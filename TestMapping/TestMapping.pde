void setup() {
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon");
  size(800, 800);
  background(0);
}

void draw() {
  noStroke();
  fill((int) random(256), (int) random(256) ,(int) random(256));
  rect(0, 0, width/4, height);
  fill((int) random(256), (int) random(256) ,(int) random(256));
  rect(width/4, 0, width/4, height);
  fill((int) random(256), (int) random(256) ,(int) random(256));
  rect(2*width/4, 0, width/4, height);
  fill((int) random(256), (int) random(256) ,(int) random(256));
  rect(3*width/4, 0, width/4, height);
  delay(100);
  server.sendScreen();
}  
