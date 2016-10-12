PImage img;

void setup() {
  size(640, 426);
}

void draw() {
  background(0);
  img = loadImage("photo.jpg");
  image(img, 0, 0, width*2, height*2);
}