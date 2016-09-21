float x;
float y;
float w;

void setup(){
  size(600,600);
  background(255);
  
}

void draw(){
  x = random(-100,width);
  y = random(-100,height);
  w = random(10,100);
  
  noFill();
  rect(x, y, w, w);
  
  
}