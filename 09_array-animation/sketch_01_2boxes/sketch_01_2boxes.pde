int num = 2;

int[] X = new int[num];
int[] Y = new int[num];
int[] VX = new int[num];
int[] VY = new int[num];

void setup(){
 size(200,200);
 fill(0);
 
 X[0] = 10;
 X[1] = 20;
 VX[0] = 1;
 VY[0] = 1;
 
 X[1] = 50;
 Y[1] = 80;
 VX[1] = -1;
 VY[1] = -1;
 

}

void draw(){
  background(255);
  
    X[0] = X[0]+VX[0];
    Y[0] = Y[0]+VY[0];
    X[1] = X[1]+VX[1];
    Y[1] = Y[1]+VY[1];
    rect(X[0],Y[0],10,10);
    rect(X[1],Y[1],10,10);

}