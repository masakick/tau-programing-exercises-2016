Particle p;
Particle p2;

void setup(){
 
  size(300,300);
  noStroke();
  
  p = new Particle(133.0, 150.0, 50.0, 5.0, 2.0); 
  p2 = new Particle(200.0, 180.0, 60.0, -1.0, -2.0); 
}
 
void draw(){
  
  background(0);
  p.update();
  p2.update();
  p.display();
  p2.display();
}

class Particle{
  float x;
  float y;
  float d;
  float vx;
  float vy;
  
  Particle(float _x, float _y, float _d, float _vx, float _vy){
    x = _x;
    y = _y;
    d = _d;
    vx = _vx;
    vy = _vy;
  }
  
  void display(){
    ellipse(x, y, d, d); 
  }
  
  void update(){
    x = x + vx;
    y = y + vy;
    
  }
  
}