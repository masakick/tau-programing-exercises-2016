float x;
float y;
float w;



void setup(){
  size(600,600);
  background(128);
  
}

void draw(){
  x = random(0,width);
  y = random(0,height);
  w = random(2,20);
  
  noStroke();
  
  if(x % 60 < 35){
    //xを60で割った余りが30未満だったら
    fill(0,0,0);
    
  }
  if(x % 60 >= 35){
    //xを60で割った余りが30以上だったら
    fill(255,255,255);
  }
  ellipse(x, y, w, w);
  
  
}