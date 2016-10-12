PImage img;

void setup() {
  size(640, 426);
  img = loadImage("photo.jpg");
}

void draw() {
  background(0);
  
  
  float alpha = map(mouseX, 0, width, 0, 255);
  tint(255,255,255, alpha);
  image(img, 0, 0);
}