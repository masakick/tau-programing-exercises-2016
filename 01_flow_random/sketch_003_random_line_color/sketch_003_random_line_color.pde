float x;
float y;
float nx;
float ny;

color c;

void setup(){
  size(600,600);
  background(0);
  
}

void draw(){
  x = random(0,width);
  y = random(0,height);
  
  nx = random(0,width);
  ny = random(0,height);
  
  c = color( random(0,255), random(0,255), random(0,255), 128);
  
  noFill();
  stroke(c);
  
  line(x,y,nx,ny);
  
  
}