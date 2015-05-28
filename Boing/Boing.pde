boolean grow;
float currentHeight = 0;
final float ppqn = 24;

void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  fill(0);
  rect(0, 0, width, currentHeight);
  
  if (currentHeight >= height) {
    grow = false;
  }
  
  if (currentHeight <= 0){
    grow = true;
  }
  
  if (grow) {
    currentHeight+=height / ppqn;
  } else {
    currentHeight-=height / ppqn;
  }
}
