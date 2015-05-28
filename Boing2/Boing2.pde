boolean grow;
float currentHeight = 0;
final float ppqn = 24;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  fill(255);
  noStroke();
  rect(0, 0, width, currentHeight);
  
  rect(0, height -currentHeight, width, height);
  
  if (currentHeight > height / 2) {
    grow = false;
  }
  
  if (currentHeight <= 0){
    grow = true;
  }
  
  if (grow) {
    //currentHeight+=height / ppqn;
    currentHeight+=1;
  } else {
    //currentHeight-=height / ppqn;
    currentHeight-=1;
  }
  delay(5);
}
