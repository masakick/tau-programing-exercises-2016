// 引力・斥力モデル

//float vx = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
//float vy = 1;  //物体の速度 1フレームあたり何ピクセル進むのか ここでの入力された値は初期の速度
//float x = 200; //物体の位置 ここでの入力された値は初期の位置
//float y = 200; //物体の位置 ここでの入力された値は初期の位置
//float ax = 0;  //加速度
//float ay = 0;  //加速度

int num = 200;
float vx[] = new float[num];
float vy[] = new float[num];
float x[] = new float[num];
float y[] = new float[num];
float ax[] = new float[num];
float ay[] = new float[num];

float magnetism = 2.0; //引力の強さ マイナスにすると斥力になる。
float radius = 5 ; //描画する円の半径

void setup(){
  size(400,400);
  noStroke(); 
  fill(0);
  ellipseMode(RADIUS);
  background(255);
  
  for(int i =0; i< num; i++){
    x[i] = random(width);
    y[i] = random(height);
    vx[i] = 0;
    vy[i] = 0;
    ax[i] = 0;
    ay[i] = 0;
  }
}


void draw(){
  fill(255,255,255,64);
  rect(0,0,width,height);
  
  for(int i=0; i<num; i++){
    float distance = dist(mouseX, mouseY, x[i], y[i]); //dist(x1,y1,x2,y2) ２点間の距離を求める関数
    //加速度は引力の中心からの距離の二乗に反比例する。
    ax[i] = magnetism * (mouseX - x[i]) / (distance * distance); 
    ay[i] = magnetism * (mouseY - y[i]) / (distance * distance);
    vx[i] += ax[i]; // 1フレームあたりaxだけ速度vxを増加する。
    vy[i] += ay[i]; // 1フレームあたりayだけ速度vyを増加する。
    x[i] += vx[i];  // 1フレームあたりvyピクセル進ませる。
    y[i] += vy[i];  // 1フレームあたりvyピクセル進ませる。
    //上下左右の端からはみ出た時の処理を書く。（これまでと同じ）
    fill(0);
    ellipse(x[i],y[i],radius,radius);
  }
  
}