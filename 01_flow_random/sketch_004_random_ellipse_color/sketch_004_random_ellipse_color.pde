float x;
float y;
float w;

color c;

void setup(){
  size(600,600);
  background(0);
  
}

void draw(){
  x = random(0,width);
  y = random(0,height);
  
  w = random(20,50);
  
  c = color( random(0,255), random(0,255), random(0,255), 128);
  
  fill(c);
  noStroke();
  
  ellipse(x,y,w,w);
  
  
}